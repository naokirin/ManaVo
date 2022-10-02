import 'package:manavo/services/network/lesson.dart';
import 'package:manavo/models/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonListProvider = FutureProvider.family<List<Lesson>, String>(
    (ref, courseId) async => await fetchLessons(ref, courseId));
