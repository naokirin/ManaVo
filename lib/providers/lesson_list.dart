import 'dart:convert';
import 'package:flutter_just_audio_sample/models/lesson_list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lessonListProvider =
    FutureProvider.family<List<Lesson>, String>((ref, url) async {
  return _fetchLessons(url).then((value) => value.lessons);
});

Future<LessonList> _fetchLessons(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return LessonList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load courses');
  }
}
