import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:manavo/models/audio_player_state.dart' as model;
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioServiceHandler extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  static const lessonIdTagKey = 'lessonId';
  final AudioPlayer _player = AudioPlayer();

  Future<void> initPlayer(
      {required List<MediaItem> items,
      required int initialIndex,
      required Duration initialPosition}) async {
    _notifyAudioHandlerAboutPlaybackEvents();
    await _setAudioSource(
        items: items,
        initialIndex: initialIndex,
        initialPosition: initialPosition);
  }

  Future<void> _setAudioSource(
      {required List<MediaItem> items,
      required initialIndex,
      required Duration initialPosition}) async {
    queue.add(items);
    final uris = items
        .map((item) => AudioSource.uri(Uri.parse(item.id),
            tag: {lessonIdTagKey: item.extras?[lessonIdTagKey]}))
        .toList();
    final playlist = ConcatenatingAudioSource(children: uris);
    await _player.setAudioSource(playlist,
        initialIndex: initialIndex, initialPosition: initialPosition);
    final position = _player.position;
    if (position > Duration.zero) {
      seek(position);
    }
    mediaItem.add(items[initialIndex].copyWith(duration: _player.duration));
  }

  @override
  Future<void> play() async {
    await _player.play();
  }

  @override
  Future<void> pause() async {
    await _player.pause();
  }

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> stop() async {
    await _player.stop();
    return super.stop();
  }

  @override
  Future<void> setSpeed(speed) async {
    await _player.setSpeed(speed);
    return super.setSpeed(speed);
  }

  Future<Duration?> load() async {
    return await _player.load();
  }

  Future<void> setVolume(double volume) async =>
      await _player.setVolume(volume);

  get playerStateStream => _player.playerStateStream;

  Stream<model.AudioPlayerState> audioPlayerStateStream() {
    return Rx.combineLatest7<Duration, Duration, Duration?, double, double,
            PlaybackEvent, SequenceState?, model.AudioPlayerState>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        _player.volumeStream,
        _player.speedStream,
        _player.playbackEventStream,
        _player.sequenceStateStream, (position, bufferedPosition, duration,
            volume, speed, event, sequenceState) {
      model.AudioProcessingState? processingState;
      switch (event.processingState) {
        case ProcessingState.idle:
          processingState = model.AudioProcessingState.idle;
          break;
        case ProcessingState.loading:
          processingState = model.AudioProcessingState.loading;
          break;
        case ProcessingState.buffering:
          processingState = model.AudioProcessingState.buffering;
          break;
        case ProcessingState.completed:
          processingState = model.AudioProcessingState.completed;
          break;
        case ProcessingState.ready:
          processingState = model.AudioProcessingState.ready;
          break;
      }
      return model.AudioPlayerState(
          lessonId: sequenceState?.currentSource?.tag[lessonIdTagKey],
          currentIndex: event.currentIndex,
          currentPosition: position,
          bufferedPosition: bufferedPosition,
          duration: duration ?? Duration.zero,
          volume: volume,
          speed: speed,
          audioProcessingState: processingState,
          playing: _player.playing);
    });
  }

  void _notifyAudioHandlerAboutPlaybackEvents() {
    _player.playbackEventStream.listen((PlaybackEvent event) async {
      final playing = _player.playing;
      if (event.currentIndex != null) {
        mediaItem.add(queue.value[event.currentIndex!]
            .copyWith(duration: _player.duration));
      }
      playbackState.add(playbackState.value.copyWith(
        controls: [
          if (playing) MediaControl.pause else MediaControl.play,
          MediaControl.rewind
        ],
        systemActions: const {
          MediaAction.seek,
          MediaAction.seekForward,
          MediaAction.seekBackward,
        },
        androidCompactActionIndices: const [0, 1],
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[_player.processingState]!,
        playing: playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
        queueIndex: event.currentIndex,
      ));
    },
        cancelOnError: true,
        onError: (e, s) => debugPrint('Playback error: $e\n$s'));
  }
}
