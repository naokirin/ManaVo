import 'package:manavo/models/listened_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listenedProvider =
    StateNotifierProvider.autoDispose<ListenedNotifier, ListenedState>(
        (ref) => ListenedNotifier());

class ListenedNotifier extends StateNotifier<ListenedState> {
  ListenedNotifier() : super(ListenedState.create(updatedAt: DateTime.now()));

  Future<void> saveListened(
      {required String courseId, required String lessonId}) async {
    final listened = await state.listened();
    await listened.saveListened(courseId: courseId, lessonId: lessonId);
    state = state.copyWith(updatedAt: DateTime.now());
  }

  Future<void> incrementListenedCount({required String lessonId}) async {
    final listened = await state.listened();
    await listened.incrementListenedCount(lessonId: lessonId);
    state = state.copyWith(updatedAt: DateTime.now());
  }

  Future<List<String>> listened({required String courseId}) async {
    final listened = await state.listened();
    return listened.listened(courseId: courseId);
  }

  Future<int> listenedCount({required String lessonId}) async {
    final listened = await state.listened();
    return listened.listenedCount(lessonId: lessonId);
  }
}
