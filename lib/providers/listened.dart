import 'package:get_it/get_it.dart';
import 'package:manavo/models/listened_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/services/listened/listened.dart';

final listenedProvider =
    StateNotifierProvider.autoDispose<ListenedNotifier, ListenedState>(
        (ref) => ListenedNotifier());

class ListenedNotifier extends StateNotifier<ListenedState> {
  ListenedNotifier() : super(ListenedState.create(updatedAt: DateTime.now()));

  Listened _listened() => GetIt.I<Listened>();

  void update() {
    state = state.copyWith(updatedAt: DateTime.now());
  }

  Future<List<String>> listened({required String courseId}) async {
    final listened = _listened();
    return listened.listened(courseId: courseId);
  }

  Future<int> listenedCount({required String lessonId}) async {
    final listened = _listened();
    return listened.listenedCount(lessonId: lessonId);
  }
}
