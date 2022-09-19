import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound.freezed.dart';

@freezed
class Sound with _$Sound {
  const factory Sound({required String id, required String name, required String length, required String url}) = _Sound;
}
