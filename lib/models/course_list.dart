import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_list.freezed.dart';
part 'course_list.g.dart';

@freezed
class CourseList with _$CourseList {
  @JsonSerializable(explicitToJson: true)
  const factory CourseList(
      {@JsonKey(name: 'courses') required List<Course> courses}) = _CourseList;

  factory CourseList.fromJson(Map<String, Object?> json) =>
      _$CourseListFromJson(json);
}
