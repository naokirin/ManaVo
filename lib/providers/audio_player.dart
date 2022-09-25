import 'package:audio_service/audio_service.dart';
import 'package:flutter_just_audio_sample/models/audio_player_state.dart';
import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:flutter_just_audio_sample/services/audio/audio_service_handler.dart';
import 'package:flutter_just_audio_sample/services/audio/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seekBarDragProvider = StateProvider.autoDispose<double?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider.autoDispose<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier());

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  final AudioServiceHandler _handler = getIt<AudioServiceHandler>();

  void init(
      {required List<Lesson> lessons,
      required String album,
      required int index,
      required Duration initialPosition}) {
    final items = lessons
        .map((lesson) => MediaItem(
            id: lesson.url,
            album: album,
            title: lesson.name,
            artist: 'ManaVo Lesson'))
        .toList();
    _handler.initPlayer(
        items: items, initialIndex: index, initialPosition: initialPosition);
  }

  @override
  void dispose() {
    _handler.stop();
    super.dispose();
  }

  void play() => _handler.play();

  void pause() => _handler.pause();

  void stop() => _handler.stop();

  void seek(Duration position) => _handler.seek(position);

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
