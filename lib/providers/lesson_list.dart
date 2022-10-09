import 'package:manavo/providers/course.dart';
import 'package:manavo/services/network/lesson.dart';
import 'package:manavo/models/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonListProvider =
    FutureProvider.family<List<Lesson>, String>((ref, courseId) async {
  final provider = ref.watch(courseProvider);
  return provider.when(
      data: (_) async => await fetchLessons(ref, courseId),
      loading: () => [],
      error: (e, s) => []);
});
