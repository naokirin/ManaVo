import 'package:audio_service/audio_service.dart';
import 'package:flutter_just_audio_sample/models/audio_player_state.dart';
import 'package:flutter_just_audio_sample/models/position_data.dart';
import 'package:flutter_just_audio_sample/services/audio/audio_service_handler.dart';
import 'package:flutter_just_audio_sample/services/audio/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final seekBarDragProvider = StateProvider.autoDispose<double?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider.autoDispose<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier());

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  final AudioServiceHandler _handler = getIt<AudioServiceHandler>();

  void init(
      {required String id,
      required String title,
      required String album,
      required String artist}) {
    final item = MediaItem(
      id: id,
      album: album,
      title: title,
      artist: artist,
      artUri: null,
    );
    _handler.initPlayer(item);
  }

  @override
  void dispose() {
    _handler.stop();
    super.dispose();
  }

  void play() => _handler.play();

  void pause() => _handler.pause();

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

  void listenOnCompleted(void Function(PlayerState event)? onData) =>
      _handler.listenOnCompleted(onData);

  void setVolume(double volume) => _handler.setVolume(volume);
  void setSpeed(double speed) => _handler.setVolume(speed);

  Stream<PositionData> get positionDataStream => _handler.positionDataStream;
  get volume => _handler.volume;
  get speed => _handler.speed;
  get volumeStream => _handler.volumeStream;
  get playerStateStream => _handler.playerStateStream;
  get speedStream => _handler.speedStream;
}
