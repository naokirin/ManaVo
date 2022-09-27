import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_just_audio_sample/models/course_list.dart';
import 'package:flutter_just_audio_sample/utils/networks/http.dart';
import 'package:http/http.dart' as http;

Future<List<Course>> fetchCourses() async {
  String? url = dotenv.env['COURSE_URL'];
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(url ?? '')));
  return CourseList.fromJson(jsonDecode(response.body)).courses;
}
