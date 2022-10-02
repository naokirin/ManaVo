import 'package:manavo/services/network/course.dart';
import 'package:manavo/models/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final courseProvider =
    FutureProvider<List<Course>>((ref) async => await fetchCourses());
