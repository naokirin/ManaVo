import 'package:audio_service/audio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/actions/listened_action.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';

final audioPlayerActionProvider =
    Provider((ref) => AudioPlayerAction(ref.read));

class AudioPlayerAction {
  AudioPlayerAction(this.read);

  final Reader read;

  final AudioServiceHandler _handler = GetIt.I<AudioServiceHandler>();

  Future<void> init(
      {required String courseId,
      required List<Lesson> lessons,
      required String album,
      required int index,
      required Duration initialPosition}) async {
    final listened = read(listenedActionProvider);
    final items = lessons
        .map((lesson) => MediaItem(
            id: lesson.url,
            album: album,
            title: lesson.name,
            artist: 'ManaVo Lesson'))
        .toList();
    await _handler.initPlayer(
        items: items,
        initialIndex: index,
        initialPosition: initialPosition,
        onCompleted: () async {
          final lessonId = lessons.first.id;
          listened.saveListened(courseId: courseId, lessonId: lessonId);
          listened.incrementListenedCount(lessonId: lessonId);
        });
  }

  Future<void> setAudioSource(
      {required List<Lesson> lessons,
      required String album,
      required Duration initialPosition}) async {
    final items = lessons
        .map((lesson) => MediaItem(
            id: lesson.url,
            album: album,
            title: lesson.name,
            artist: 'ManaVo Lesson'))
        .toList();

    await _handler.setAudioSource(
        items: items, initialPosition: initialPosition);
  }

  Future<void> play() async => await _handler.play();
  Future<void> pause() async => await _handler.pause();
  Future<void> stop() async => await _handler.stop();
  Future<void> seek(Duration position) async => await _handler.seek(position);
  Future<Duration?> load() async => await _handler.load();

  void setVolume(double volume) => _handler.setVolume(volume);
  void setSpeed(double speed) => _handler.setSpeed(speed);
}
