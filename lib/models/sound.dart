import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound.freezed.dart';
part 'sound.g.dart';

@freezed
class Sound with _$Sound {
  const factory Sound(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'length') required String length,
      @JsonKey(name: 'url') required String url}) = _Sound;

  factory Sound.fromJson(Map<String, Object?> json) => _$SoundFromJson(json);
}
