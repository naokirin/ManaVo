import 'package:flutter_just_audio_sample/services/network/lesson.dart';
import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonListProvider = FutureProvider.family<List<Lesson>, String>(
    (ref, courseId) async => fetchLessons(ref, courseId));
