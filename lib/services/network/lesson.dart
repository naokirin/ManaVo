import 'dart:convert';

import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:flutter_just_audio_sample/models/lesson_list.dart';
import 'package:flutter_just_audio_sample/providers/course.dart';
import 'package:flutter_just_audio_sample/utils/networks/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

Future<List<Lesson>> fetchLessons(Ref ref, String courseId) async {
  final c = ref.read(courseProvider).value;
  final course = c?.firstWhere((item) => item.id == courseId);
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(course?.lessonListUrl ?? '')));
  return LessonList.fromJson(jsonDecode(response.body)).lessons;
}
