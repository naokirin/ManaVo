import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/course_list.dart';
import 'package:manavo/utils/networks/http.dart';
import 'package:http/http.dart' as http;

Future<List<Course>> fetchCourses() async {
  String? url = dotenv.env['COURSE_URL'];
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(url ?? '')));
  return CourseList.fromJson(jsonDecode(response.body)).courses;
}
