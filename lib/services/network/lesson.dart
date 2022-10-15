import 'dart:convert';

import 'package:manavo/models/lesson.dart';
import 'package:manavo/models/lesson_list.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/utils/networks/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

Future<List<Lesson>> fetchLessons(Ref ref, String courseId) async {
  final c = ref.read(courseProvider).value;
  final course = c?.firstWhere((item) => item.id == courseId);
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(course?.lessonListUrl ?? '')));
  final body = utf8.decode(response.bodyBytes);
  return LessonList.fromJson(jsonDecode(body)).lessons;
}
