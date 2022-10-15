import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:manavo/utils/exceptions/connection_exception.dart';
import 'package:manavo/utils/exceptions/error_response_exception.dart';
import 'package:http/http.dart';

Future<Response> handleHttpResponse(Future<Response> Function() request) async {
  try {
    final response = await request();
    if (response.statusCode != 200) {
      throw ErrorResponseException(
          message: 'Error Response', code: response.statusCode);
    }
    return response;
  } on SocketException catch (_) {
    throw const ConnectionException.noNetwork();
  } on TimeoutException catch (_) {
    throw const ConnectionException.timeout();
  } catch (e) {
    debugPrint('$e');
    throw Exception('Invalid Request');
  }
}
