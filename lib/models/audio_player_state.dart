import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_player_state.freezed.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState(
      {@Default(null)
          int? currentIndex,
      @Default(Duration.zero)
          Duration currentPosition,
      @Default(Duration.zero)
          Duration bufferedPosition,
      @Default(AudioProcessingState.idle)
          AudioProcessingState audioProcessingState,
      @Default(false)
          bool playing}) = _AudioPlayerState;
}

enum AudioProcessingState { idle, loading, buffering, ready, completed }
