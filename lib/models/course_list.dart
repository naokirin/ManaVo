import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_list.freezed.dart';

@freezed
class CourseList with _$CourseList {
  const factory CourseList({required List<Course> courses}) = _CourseList;
}
