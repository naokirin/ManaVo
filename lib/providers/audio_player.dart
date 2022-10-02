import 'package:audio_service/audio_service.dart';
import 'package:manavo/models/audio_player_state.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';
import 'package:manavo/services/audio/service_locator.dart';
import 'package:manavo/services/listened/listened.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seekBarDragProvider = StateProvider<double?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier());

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  final AudioServiceHandler _handler = getIt<AudioServiceHandler>();

  Future<void> init(
      {required String courseId,
      required List<Lesson> lessons,
      required String album,
      required int index,
      required Duration initialPosition}) async {
    final items = lessons
        .map((lesson) => MediaItem(
            id: lesson.url,
            album: album,
            title: lesson.name,
            artist: 'ManaVo Lesson'))
        .toList();
    await _handler.initPlayer(
        items: items,
        initialIndex: index,
        initialPosition: initialPosition,
        onCompleted: () async {
          final listened = await Listened.getInstance();
          final lessonId = lessons.first.id;
          listened.saveListened(courseId: courseId, lessonId: lessonId);
          listened.incrementListenedCount(lessonId: lessonId);
        });
  }

  Future<void> setAudioSource(
      {required List<Lesson> lessons,
      required String album,
      required Duration initialPosition}) async {
    final items = lessons
        .map((lesson) => MediaItem(
            id: lesson.url,
            album: album,
            title: lesson.name,
            artist: 'ManaVo Lesson'))
        .toList();

    await _handler.setAudioSource(
        items: items, initialPosition: initialPosition);
  }

  @override
  void dispose() {
    _handler.stop();
    super.dispose();
  }

  Future<void> play() async => await _handler.play();

  Future<void> pause() async => await _handler.pause();

  Future<void> stop() async => await _handler.stop();

  Future<void> seek(Duration position) async => await _handler.seek(position);

  Future<Duration?> load() async => await _handler.load();

  void setAudioState(AudioState audioState) {
    state = state.copyWith(audioState: audioState);
  }

  void setProgressBarState(
      {required Duration current,
      required Duration buffered,
      required Duration total}) {
    state = state.copyWith(current: current, buffered: buffered, total: total);
  }

  void setVolume(double volume) => _handler.setVolume(volume);
  void setSpeed(double speed) => _handler.setVolume(speed);

  bool loadedIndexedAudioSource(int i) => _handler.loadedIndexedAudioSource(i);

  get playing => _handler.playing;
  get currentIndex => _handler.currentIndex;
  get currentPosition => _handler.currentPosition;
  get positionDataStream => _handler.positionDataStream;
  get volume => _handler.volume;
  get speed => _handler.speed;
  get volumeStream => _handler.volumeStream;
  get playerStateStream => _handler.playerStateStream;
  get speedStream => _handler.speedStream;
  get currentIndexStream => _handler.currentIndexStream;
}
