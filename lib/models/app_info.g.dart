// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppInfoImpl _$$AppInfoImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoImpl(
      lowestVersion: (json['lowest_version'] as num).toInt(),
      courseListPath: json['course_list_path'] as String,
    );

Map<String, dynamic> _$$AppInfoImplToJson(_$AppInfoImpl instance) =>
    <String, dynamic>{
      'lowest_version': instance.lowestVersion,
      'course_list_path': instance.courseListPath,
    };
