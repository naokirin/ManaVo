import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_player_state.freezed.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState(
      {@Default(Duration.zero) Duration current,
      @Default(Duration.zero) Duration buffered,
      @Default(Duration.zero) Duration total,
      @Default(AudioState.paused) AudioState audioState}) = _AudioPlayerState;
}

enum AudioState {
  ready,
  paused,
  playing,
  loading,
}
