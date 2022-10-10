import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manavo/models/app_info.dart';
import 'package:manavo/utils/networks/http.dart';
import 'package:http/http.dart' as http;

Future<AppInfo> fetchAppInfo() async {
  String? url = dotenv.env['APP_INFO_URL'];
  final response = await handleHttpResponse(
      () async => await http.get(Uri.parse(url ?? '')));
  return AppInfo.fromJson(jsonDecode(response.body));
}

Future<String?> fetchLastModifiedAppInfo() async {
  String? url = dotenv.env['APP_INFO_URL'];
  final response = await handleHttpResponse(
      () async => await http.head(Uri.parse(url ?? '')));
  final lastModified = response.headers[HttpHeaders.lastModifiedHeader];
  if (lastModified == null) return null;
  return lastModified;
}
