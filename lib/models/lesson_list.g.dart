// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonList _$$_LessonListFromJson(Map<String, dynamic> json) =>
    _$_LessonList(
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LessonListToJson(_$_LessonList instance) =>
    <String, dynamic>{
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
    };
