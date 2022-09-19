import 'package:flutter_just_audio_sample/models/sound.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course(
      {required String id,
      required String name,
      required String description,
      required List<Sound> sounds}) = _Course;
}
