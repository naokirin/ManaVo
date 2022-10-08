import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'length') required String length,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'last_updated_date') required String lastUpdatedDate}) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}
