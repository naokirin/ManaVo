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
      StreamController();

  @override
  void dispose() {
    _handler.stop();
    super.dispose();
  }

  void setState(AudioPlayerState state) {
    this.state = state;
    _streamController.add(state);
  }

  bool loadedIndexedAudioSource(int i) => _handler.loadedIndexedAudioSource(i);

  get playing => state.playing;
  get currentIndex => state.currentIndex;
  get currentPosition => state.currentPosition;
  get positionDataStream => _handler.positionDataStream;
  get volume => _handler.volume;
  get speed => _handler.speed;
  get volumeStream => _handler.volumeStream;
  get playerStateStream => _streamController.stream;
  get speedStream => _handler.speedStream;
}
