import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/position_data.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioServiceHandler extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  final AudioPlayer player = AudioPlayer();

  Future<void> initPlayer(
      {required List<MediaItem> items,
      required int initialIndex,
      required Duration initialPosition}) async {
    final playlist = ConcatenatingAudioSource(
        children:
            items.map((item) => AudioSource.uri(Uri.parse(item.id))).toList());
    try {
      _notifyAudioHandlerAboutPlaybackEvents();
      _listenForDurationChanges();
      _listenForCurrentSongIndexChanges();

      queue.add(items);
      player.setAudioSource(playlist,
          initialIndex: initialIndex, initialPosition: initialPosition);
      skipToQueueItem(initialIndex);
      final position = player.position;
      if (position > Duration.zero) {
        seek(position);
      }
      mediaItem.add(items[initialIndex].copyWith(duration: player.duration));
    } catch (e) {
      debugPrint('ERROR OCCURED:$e');
    }
  }

  @override
  Future<void> play() async {
    player.play();
  }

  @override
  Future<void> pause() async {
    player.pause();
  }

  @override
  Future<void> seek(Duration position) => player.seek(position);

  @override
  Future<void> stop() {
    player.stop();
    return super.stop();
  }

  @override
  Future<void> setSpeed(speed) {
    player.setSpeed(speed);
    return super.setSpeed(speed);
  }

  Future<void> setVolume(double volume) async => player.setVolume(volume);

  get currentPosition => player.position;
  get currentIndex => player.currentIndex;
  get volume => player.volume;
  get speed => player.speed;
  get volumeStream => player.volumeStream;
  get playerStateStream => player.playerStateStream;
  get speedStream => player.speedStream;
  get currentIndexStream => player.currentIndexStream;

  Stream<PositionData> get positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          player.positionStream,
          player.bufferedPositionStream,
          player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  void _notifyAudioHandlerAboutPlaybackEvents() {
    player.playbackEventStream.listen((PlaybackEvent event) {
      final playing = player.playing;
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
        }[player.processingState]!,
        playing: playing,
        updatePosition: player.position,
        bufferedPosition: player.bufferedPosition,
        speed: player.speed,
        queueIndex: event.currentIndex,
      ));
    });
  }

  void _listenForDurationChanges() {
    player.durationStream.listen((duration) {
      var index = player.currentIndex;
      final newQueue = queue.value;
      if (index == null || newQueue.isEmpty) return;
      if (player.shuffleModeEnabled) {
        index = player.shuffleIndices![index];
      }
      final oldMediaItem = newQueue[index];
      final newMediaItem = oldMediaItem.copyWith(duration: duration);
      newQueue[index] = newMediaItem;
      queue.add(newQueue);
      mediaItem.add(newMediaItem);
    });
  }

  void _listenForCurrentSongIndexChanges() {
    player.currentIndexStream.listen((index) {
      final playlist = queue.value;
      if (index == null || playlist.isEmpty) return;
      if (player.shuffleModeEnabled) {
        index = player.shuffleIndices![index];
      }
      mediaItem.add(playlist[index]);
    });
  }
}
