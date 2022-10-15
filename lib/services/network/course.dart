import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/course_list.dart';
import 'package:manavo/providers/app_info.dart';
import 'package:manavo/utils/networks/http.dart';
import 'package:http/http.dart' as http;

Future<List<Course>> fetchCourses(Reader read) async {
  final appInfo = read(appInfoProvider);
  String? url = appInfo.value?.courseListPath;
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(url ?? '')));
  return CourseList.fromJson(jsonDecode(response.body)).courses;
}

Future<String?> fetchLastModifiedCourses(Reader read) async {
  final appInfo = read(appInfoProvider);
  String? url = appInfo.value?.courseListPath;
  final response = await handleHttpResponse(
      () async => await http.head(Uri.parse(url ?? '')));
  final lastModified = response.headers[HttpHeaders.lastModifiedHeader];
  if (lastModified == null) return null;
  return lastModified;
}
