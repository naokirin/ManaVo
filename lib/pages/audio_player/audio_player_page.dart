import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:flutter_just_audio_sample/pages/audio_player/audio_player_header.dart';
import 'package:flutter_just_audio_sample/pages/audio_player/control_buttons.dart';
import 'package:flutter_just_audio_sample/pages/audio_player/seekbar.dart';
import 'package:flutter_just_audio_sample/providers/audio_player.dart';
import 'package:flutter_just_audio_sample/providers/course.dart';
import 'package:flutter_just_audio_sample/providers/lesson_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_just_audio_sample/utils/common.dart';
import 'package:flutter_just_audio_sample/models/position_data.dart';
import 'package:collection/collection.dart';

class AudioPlayerPage extends ConsumerStatefulWidget {
  final String courseId;
  final String id;
  final Duration initialPosition;

  const AudioPlayerPage(
      {super.key,
      required this.courseId,
      required this.id,
      required this.initialPosition});

  @override
  AudioState createState() => AudioState();
}

class AudioState extends ConsumerState<AudioPlayerPage>
    with WidgetsBindingObserver {
  Course? _course;
  Lesson? _lesson;
  List<Lesson>? _lessonList;
  bool _ready = false;

  final List<StreamSubscription> _subscriptions = [];

  @override
  void initState() {
    super.initState();
    ambiguate(WidgetsBinding.instance)!.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
  }

  Future<void> _init() async {
    final player = ref.read(audioPlayerProvider.notifier);
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());

    // Try to load audio from a source and catch any errors.
    try {
      int index = 0;
      setState(() {
        _course = ref
            .read(courseProvider)
            .value
            ?.firstWhereOrNull((item) => item.id == widget.courseId);
        _lessonList =
            ref.read(lessonListProvider(_course?.lessonListUrl ?? '')).value;

        index = _lessonList?.indexWhere((item) => item.id == widget.id) ?? 0;
        _lesson = _lessonList?[index];
      });

      // Automatically play
      _subscriptions.add(player.playerStateStream.listen((state) {
        if (state.processingState == ProcessingState.ready && !_ready) {
          _ready = true;
          player.play();
        }
      }));

      // Automatically go to a next lesson if complete
      _subscriptions.add(player.currentIndexStream.listen((i) {
        if (i == null || index == i) return;
        goNextPlayerPage(context, i);
      }));

      player.init(
          lessons: _lessonList!,
          album: _course?.name ?? '',
          index: index,
          initialPosition: widget.initialPosition);
    } catch (e) {
      debugPrint("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {
    ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    for (var subscription in _subscriptions) {
      subscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.read(audioPlayerProvider.notifier);
    SystemChannels.lifecycle.setMessageHandler((msg) async {
      if (msg == 'AppLifecycleState.resumed') {
        GoRouter.of(context).pop();
        GoRouter.of(context).push(
            '/course/${_course?.id}/player/${_lessonList?[player.currentIndex].id}?initial_position=${player.currentPosition}');
      }
      return null;
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent),
      body: Column(children: [
        Expanded(child: AudioPlayerHeader(course: _course, lesson: _lesson)),
        const SizedBox(height: 64.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Display play/pause button and volume/speed sliders.
            const ControlButtons(),
            // Display seek bar. Using StreamBuilder, this widget rebuilds
            // each time the position, buffered position or duration changes.
            StreamBuilder<PositionData>(
              stream: player.positionDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                  duration: positionData?.duration ?? Duration.zero,
                  position: positionData?.position ?? Duration.zero,
                  bufferedPosition:
                      positionData?.bufferedPosition ?? Duration.zero,
                  onChanged: player.seek,
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 40.0)
      ]),
    );
  }

  void goNextPlayerPage(BuildContext context, int index) {
    final nextLesson = _lessonList?[index];
    GoRouter.of(context)
        .replace('/course/${_course?.id}/player/${nextLesson?.id}');
  }
}
