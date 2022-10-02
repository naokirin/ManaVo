import 'package:manavo/models/lesson.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_list.freezed.dart';
part 'lesson_list.g.dart';

@freezed
class LessonList with _$LessonList {
  @JsonSerializable(explicitToJson: true)
  const factory LessonList(
      {@JsonKey(name: 'lessons') required List<Lesson> lessons}) = _LessonList;

  factory LessonList.fromJson(Map<String, Object?> json) =>
      _$LessonListFromJson(json);
}
