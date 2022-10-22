import 'dart:async';

import 'package:manavo/models/audio_player_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seekBarDragProvider = StateProvider<double?>((ref) => null);

final playingLessonProvider = StateProvider<String?>((ref) => null);

final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier(read: ref.read));

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier({required this.read}) : super(const AudioPlayerState());

  final Reader read;
  final StreamController<AudioPlayerState> _streamController =
      StreamController.broadcast();
  void Function(String?, String?) _onLessonCompleted =
      (currentLessonId, nextLessonId) {};
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
    if (state.audioProcessingState == AudioProcessingState.completed ||
        (lessonId != null && lessonId != state.lessonId)) {
      _onLessonCompleted(lessonId, state.lessonId);
    }
    this.state = state;
    read(playingLessonProvider.notifier).state = state.lessonId;
    _streamController.add(state);
  }

  void setOnLessonCompleted(
          void Function(String?, String?) onLessonCompleted) =>
      _onLessonCompleted = onLessonCompleted;
  void setOnResetted(void Function() onResetted) => _onResetted = onResetted;
  void setOnDisposed(void Function() onDisposed) => _onDisposed = onDisposed;

  bool get playing => state.playing;
  String? get lessonId => state.lessonId;
  int? get currentIndex => state.currentIndex;
  Duration get currentPosition => state.currentPosition;
  Stream<AudioPlayerState> get playerStateStream => _streamController.stream;

  double get volume => state.volume;
  double get speed => state.speed;
}
