import 'package:flutter_just_audio_sample/services/network/course.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final courseProvider =
    FutureProvider<List<Course>>((ref) async => await fetchCourses());
