// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      length: json['length'] as String,
      url: json['url'] as String,
      description: json['description'] as String,
      body: json['body'] as String,
      lastUpdatedDate: json['last_updated_date'] as String,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'length': instance.length,
      'url': instance.url,
      'description': instance.description,
      'body': instance.body,
      'last_updated_date': instance.lastUpdatedDate,
    };
