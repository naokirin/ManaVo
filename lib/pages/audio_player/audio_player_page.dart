import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manavo/actions/audio_player_action.dart';
import 'package:manavo/components/app_bar/app_bar_popup_menu_button.dart';
import 'package:manavo/components/networks/http_error_snack_bar.dart';
import 'package:manavo/models/audio_player_state.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/pages/audio_player/audio_player_header.dart';
import 'package:manavo/pages/audio_player/control_buttons.dart';
import 'package:manavo/pages/audio_player/seekbar.dart';
import 'package:manavo/providers/audio_player.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/providers/initializers.dart';
import 'package:manavo/providers/lesson_list.dart';
import 'package:manavo/utils/exceptions/connection_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/utils/common.dart';
import 'package:collection/collection.dart';

class AudioPlayerPage extends ConsumerStatefulWidget {
  final String courseId;
  final String initialId;
  final Duration initialPosition;

  const AudioPlayerPage(
      {super.key,
      required this.courseId,
      required this.initialId,
      required this.initialPosition});

  @override
  AudioState createState() => AudioState();
}

class AudioState extends ConsumerState<AudioPlayerPage>
    with WidgetsBindingObserver {
  Course? _course;
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
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await _initPlayer();
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
    final playingLessonId = ref.watch(playingLessonProvider);
    final player = _player();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_ready && !player.notifier.playing) {
        _startToPlay();
        _ready = true;
      }
    });

    Lesson? lesson;
    if (playingLessonId != null) {
      lesson = _lessonList
          ?.firstWhere((lesson) => lesson.id == playingLessonId);
    } else {
      lesson = _lessonList?.firstWhere((lesson) => lesson.id == widget.initialId);
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          actions: const [AppBarPopupMenuButton()]),
      body: Column(children: [
        Expanded(child: AudioPlayerHeader(course: _course, lesson: lesson)),
        const SizedBox(height: 64.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Display play/pause button and volume/speed sliders.
            const ControlButtons(),
            // Display seek bar. Using StreamBuilder, this widget rebuilds
            // each time the position, buffered position or duration changes.
            StreamBuilder<AudioPlayerState>(
              stream: player.notifier.playerStateStream,
              builder: (context, snapshot) {
                final state = snapshot.data;
                return SeekBar(
                  duration: state?.duration ?? Duration.zero,
                  position: state?.currentPosition ?? Duration.zero,
                  bufferedPosition: state?.bufferedPosition ?? Duration.zero,
                  onChanged: player.action.seek,
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 40.0)
      ]),
    );
  }

  Future<void> _initPlayer() async {
    // Try to load audio from a source and catch any errors.
    try {
      final player = _player();
      int index = 0;
      setState(() {
        _course = ref
            .read(courseProvider)
            .value
            ?.firstWhereOrNull((item) => item.id == widget.courseId);
        _lessonList = ref.read(lessonListProvider(widget.courseId)).value;
        index =
            _lessonList?.indexWhere((item) => item.id == widget.initialId) ?? 0;
      });

      initAudioPlayerProvider(ref.read);

      await player.action.init(
          courseId: widget.courseId,
          lessons: _lessonList!,
          album: _course?.name ?? '',
          index: index,
          initialPosition: widget.initialPosition);
    } catch (error, stacktrace) {
      debugPrint('$error\n$stacktrace');
      await _playerErrorOccured(error);
    }
  }

  Future<void> _startToPlay() async {
    try {
      final player = _player();
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        await _playerErrorOccured(const NoNetworkException());
      } else {
        await player.action.play();
      }
    } catch (e) {
      await _playerErrorOccured(e);
    }
  }

  Future<void> _playerErrorOccured(Object error) async {
    final player = _player();
    HttpErrorSnackBar.showHttpErrorSnackBar(
        error: error,
        onRetry: () async {
          var connectivityResult = await Connectivity().checkConnectivity();
          if (connectivityResult == ConnectivityResult.none) {
            await _playerErrorOccured(const NoNetworkException());
          } else {
            player.action.play();
          }
        });
  }

  _PlayerRef _player() {
    return _PlayerRef(ref.read);
  }
}

class _PlayerRef {
  final AudioPlayerNotifier _notifier;
  final AudioPlayerAction _action;

  _PlayerRef(Reader read)
      : _notifier = read(audioPlayerProvider.notifier),
        _action = read(audioPlayerActionProvider);

  AudioPlayerNotifier get notifier => _notifier;
  AudioPlayerAction get action => _action;
}
