// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonListImpl _$$LessonListImplFromJson(Map<String, dynamic> json) =>
    _$LessonListImpl(
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonListImplToJson(_$LessonListImpl instance) =>
    <String, dynamic>{
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
    };
