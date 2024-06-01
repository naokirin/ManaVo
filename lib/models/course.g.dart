// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      lessons: (json['lessons'] as num).toInt(),
      length: json['length'] as String,
      lessonListUrl: json['lesson_list_url'] as String,
      backgroundImage: json['background_image'] as String?,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'lessons': instance.lessons,
      'length': instance.length,
      'lesson_list_url': instance.lessonListUrl,
      'background_image': instance.backgroundImage,
    };
