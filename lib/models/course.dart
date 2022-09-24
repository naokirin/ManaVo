import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  @JsonSerializable(explicitToJson: true)
  const factory Course(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'description')
          required String description,
      @JsonKey(name: 'lessons')
          required int lessons,
      @JsonKey(name: 'length')
          required String length,
      @JsonKey(name: 'lesson_list_url')
          required String lessonListUrl,
      @JsonKey(name: 'background_image')
          required String? backgroundImage}) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
