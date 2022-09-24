// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      lessons: json['lessons'] as int,
      length: json['length'] as String,
      lessonListUrl: json['lesson_list_url'] as String,
      backgroundImage: json['background_image'] as String?,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'lessons': instance.lessons,
      'length': instance.length,
      'lesson_list_url': instance.lessonListUrl,
      'background_image': instance.backgroundImage,
    };
