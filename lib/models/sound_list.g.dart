// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoundList _$$_SoundListFromJson(Map<String, dynamic> json) => _$_SoundList(
      sounds: (json['sounds'] as List<dynamic>)
          .map((e) => Sound.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SoundListToJson(_$_SoundList instance) =>
    <String, dynamic>{
      'sounds': instance.sounds.map((e) => e.toJson()).toList(),
    };
