import 'package:flutter_just_audio_sample/models/sound.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound_list.freezed.dart';
part 'sound_list.g.dart';

@freezed
class SoundList with _$SoundList {
  @JsonSerializable(explicitToJson: true)
  const factory SoundList(
      {@JsonKey(name: 'sounds') required List<Sound> sounds}) = _SoundList;

  factory SoundList.fromJson(Map<String, Object?> json) => _$SoundListFromJson(json);
}
