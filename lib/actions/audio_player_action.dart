import 'package:audio_service/audio_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
      required Lesson lesson,
      required String album,
      required int index,
      required Duration initialPosition}) async {
    final listened = read(listenedActionProvider);
    final item = MediaItem(
        id: lesson.url,
        album: album,
        title: lesson.name,
        artist: '${dotenv.env['APP_NAME']} Lesson');
    await _handler.initPlayer(
        item: item,
        initialIndex: index,
        initialPosition: initialPosition,
        onCompleted: () async {
          final lessonId = lesson.id;
          listened.saveListened(courseId: courseId, lessonId: lessonId);
          listened.incrementListenedCount(lessonId: lessonId);
        });
  }

  Future<void> setAudioSource(
      {required Lesson lesson,
      required String album,
      required Duration initialPosition}) async {
    final item = MediaItem(
        id: lesson.url,
        album: album,
        title: lesson.name,
        artist: '${dotenv.env['APP_NAME']} Lesson');
    await _handler.setAudioSource(item: item, initialPosition: initialPosition);
  }

  Future<void> play() async => await _handler.play();
  Future<void> pause() async => await _handler.pause();
  Future<void> stop() async => await _handler.stop();
  Future<void> seek(Duration position) async => await _handler.seek(position);
  Future<Duration?> load() async => await _handler.load();

  void setVolume(double volume) => _handler.setVolume(volume);
  void setSpeed(double speed) => _handler.setSpeed(speed);
}
