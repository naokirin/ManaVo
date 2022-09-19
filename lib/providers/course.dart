import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_just_audio_sample/models/course_list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final courseProvider = FutureProvider<List<Course>>((ref) async {
  return _fetchCourses().then((value) => value.courses);
});

Future<CourseList> _fetchCourses() async {
  String? url = dotenv.env['COURSE_URL'];
  final response = await http.get(Uri.parse(url ?? ''));
  if (response.statusCode == 200) {
    return CourseList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load courses');
  }
}
