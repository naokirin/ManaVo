import 'dart:async';

import 'package:manavo/models/audio_player_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seekBarDragProvider = StateProvider<double?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier());

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  final StreamController<AudioPlayerState> _streamController =
      StreamController.broadcast();
  void Function() _onResetted = () {};
  void Function() _onDisposed = () {};

  @override
  void dispose() {
    _onResetted();
    _onDisposed();
    super.dispose();
  }

  void reset() => _onResetted();

  void setState(AudioPlayerState state) {
    this.state = state;
    _streamController.add(state);
  }

  void setOnResetted(void Function() onResetted) => _onResetted = onResetted;
  void setOnDisposed(void Function() onDisposed) => _onDisposed = onDisposed;

  bool get playing => state.playing;
  int? get currentIndex => state.currentIndex;
  Duration get currentPosition => state.currentPosition;
  Stream<AudioPlayerState> get playerStateStream => _streamController.stream;

  double get volume => state.volume;
  double get speed => state.speed;
}
