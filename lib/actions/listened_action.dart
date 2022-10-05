import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/providers/listened.dart';
import 'package:manavo/services/listened/listened.dart';

final listenedActionProvider =
    Provider<ListenedAction>((ref) => ListenedAction(ref.read));

class ListenedAction {
  Reader read;

  ListenedAction(this.read);

  Future<Listened> _listened() async => GetIt.I<Listened>();

  Future<void> saveListened(
      {required String courseId, required String lessonId}) async {
    final listened = await _listened();
    await listened.saveListened(courseId: courseId, lessonId: lessonId);
    read(listenedProvider.notifier).update();
  }

  Future<void> incrementListenedCount({required String lessonId}) async {
    final listened = await _listened();
    await listened.incrementListenedCount(lessonId: lessonId);
    read(listenedProvider.notifier).update();
  }
}
