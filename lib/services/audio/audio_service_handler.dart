import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:manavo/models/position_data.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioServiceHandler extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  final AudioPlayer _player = AudioPlayer();
  void Function(Object error, StackTrace stacktrace) _onError =
      (e, s) => debugPrint('Playback error: $e\n$s');
  Future<void> Function() _onCompleted = () => Future(() {});

  Future<void> initPlayer(
      {required List<MediaItem> items,
      required int initialIndex,
      required Duration initialPosition,
      required Future<void> Function() onCompleted}) async {
    _notifyAudioHandlerAboutPlaybackEvents();

    _onCompleted = onCompleted;

    await setAudioSource(items: items, initialPosition: initialPosition);
  }

  Future<void> setAudioSource(
      {required List<MediaItem> items,
      required Duration initialPosition}) async {
    queue.add(items);
    final playlist = ConcatenatingAudioSource(
        children:
            items.map((item) => AudioSource.uri(Uri.parse(item.id))).toList());
    await _player.setAudioSource(playlist, initialPosition: initialPosition);
    final position = _player.position;
    if (position > Duration.zero) {
      seek(position);
    }
    mediaItem.add(items[0].copyWith(duration: _player.duration));
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

  bool loadedIndexedAudioSource(int i) {
    return _player.audioSource?.sequence[i].duration != Duration.zero;
  }

  void setOnError(
          void Function(Object error, StackTrace stacktrace) callback) =>
      _onError = callback;

  get playing => _player.playing;
  get currentPosition => _player.position;
  get currentIndex => _player.currentIndex;
  get volume => _player.volume;
  get speed => _player.speed;
  get volumeStream => _player.volumeStream;
  get playerStateStream => _player.playerStateStream;
  get speedStream => _player.speedStream;
  get currentIndexStream => _player.currentIndexStream;
  get positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  void _notifyAudioHandlerAboutPlaybackEvents() {
    _player.playbackEventStream.listen((PlaybackEvent event) async {
      final playing = _player.playing;
      if (_player.processingState == ProcessingState.completed) {
        await _onCompleted();
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
        androidCompactActionIndices: const [0, 1, 3],
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
    }, cancelOnError: true, onError: _onError);
  }
}
