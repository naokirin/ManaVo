import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manavo/components/networks/http_error_snack_bar.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/pages/audio_player/audio_player_header.dart';
import 'package:manavo/pages/audio_player/control_buttons.dart';
import 'package:manavo/pages/audio_player/seekbar.dart';
import 'package:manavo/providers/audio_player.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/providers/lesson_list.dart';
import 'package:manavo/utils/exceptions/connection_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/utils/common.dart';
import 'package:manavo/models/position_data.dart';
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
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await _initPlayer(player);
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_ready && !player.playing) {
        _startToPlay(player);
        _ready = true;
      }
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

  Future<void> _initPlayer(AudioPlayerNotifier player) async {
    // Try to load audio from a source and catch any errors.
    try {
      int index = 0;
      setState(() {
        _course = ref
            .read(courseProvider)
            .value
            ?.firstWhereOrNull((item) => item.id == widget.courseId);
        _lessonList = ref.read(lessonListProvider(widget.courseId)).value;
        index = _lessonList?.indexWhere((item) => item.id == widget.id) ?? 0;
        _lesson = _lessonList?[index];
      });

      await player.init(
          courseId: widget.courseId,
          lessons: _lesson != null ? [_lesson!] : [],
          album: _course?.name ?? '',
          index: index,
          initialPosition: widget.initialPosition);
    } catch (error, stacktrace) {
      debugPrint('$error\n$stacktrace');
      await _playerErrorOccured(error, player);
    }
  }

  Future<void> _startToPlay(AudioPlayerNotifier player) async {
    try {
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        await _playerErrorOccured(const NoNetworkException(), player);
      } else {
        await player.play();
      }
    } catch (e) {
      await _playerErrorOccured(e, player);
    }
  }

  Future<void> _setAudioSource(AudioPlayerNotifier player) async {
    // Try to load audio from a source and catch any errors.
    try {
      setState(() {
        _course = ref
            .read(courseProvider)
            .value
            ?.firstWhereOrNull((item) => item.id == widget.courseId);
        _lessonList = ref.read(lessonListProvider(widget.courseId)).value;
        _lesson = _lessonList?.firstWhere((item) => item.id == widget.id);
      });

      await player.setAudioSource(
          lessons: _lessonList ?? [],
          album: _course?.name ?? '',
          initialPosition: widget.initialPosition);
    } catch (error) {
      await _playerErrorOccured(error, player);
    }
  }

  Future<void> _playerErrorOccured(
      Object error, AudioPlayerNotifier player) async {
    HttpErrorSnackBar.showHttpErrorSnackBar(
        error: error,
        onRetry: () async {
          var connectivityResult = await Connectivity().checkConnectivity();
          if (connectivityResult == ConnectivityResult.none) {
            await _playerErrorOccured(const NoNetworkException(), player);
          } else {
            player.play();
          }
        });
  }
}
