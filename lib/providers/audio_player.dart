import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:manavo/models/audio_player_state.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seekBarDragProvider = StateProvider<double?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier());

// FIXME: Remove dependency of AudioServiceHandler
class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  final AudioServiceHandler _handler = GetIt.I<AudioServiceHandler>();
  final StreamController<AudioPlayerState> _streamController =
      StreamController.broadcast();

  @override
  void dispose() {
    _handler.stop();
    super.dispose();
  }

  void setState(AudioPlayerState state) {
    this.state = state;
    _streamController.add(state);
  }

  bool get playing => state.playing;
  int? get currentIndex => state.currentIndex;
  Duration get currentPosition => state.currentPosition;
  Stream<AudioPlayerState> get playerStateStream => _streamController.stream;

  double get volume => state.volume;
  double get speed => state.speed;
}
