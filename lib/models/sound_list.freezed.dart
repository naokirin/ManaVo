// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sound_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SoundList _$SoundListFromJson(Map<String, dynamic> json) {
  return _SoundList.fromJson(json);
}

/// @nodoc
mixin _$SoundList {
  @JsonKey(name: 'sounds')
  List<Sound> get sounds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoundListCopyWith<SoundList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundListCopyWith<$Res> {
  factory $SoundListCopyWith(SoundList value, $Res Function(SoundList) then) =
      _$SoundListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'sounds') List<Sound> sounds});
}

/// @nodoc
class _$SoundListCopyWithImpl<$Res> implements $SoundListCopyWith<$Res> {
  _$SoundListCopyWithImpl(this._value, this._then);

  final SoundList _value;
  // ignore: unused_field
  final $Res Function(SoundList) _then;

  @override
  $Res call({
    Object? sounds = freezed,
  }) {
    return _then(_value.copyWith(
      sounds: sounds == freezed
          ? _value.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as List<Sound>,
    ));
  }
}

/// @nodoc
abstract class _$$_SoundListCopyWith<$Res> implements $SoundListCopyWith<$Res> {
  factory _$$_SoundListCopyWith(
          _$_SoundList value, $Res Function(_$_SoundList) then) =
      __$$_SoundListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'sounds') List<Sound> sounds});
}

/// @nodoc
class __$$_SoundListCopyWithImpl<$Res> extends _$SoundListCopyWithImpl<$Res>
    implements _$$_SoundListCopyWith<$Res> {
  __$$_SoundListCopyWithImpl(
      _$_SoundList _value, $Res Function(_$_SoundList) _then)
      : super(_value, (v) => _then(v as _$_SoundList));

  @override
  _$_SoundList get _value => super._value as _$_SoundList;

  @override
  $Res call({
    Object? sounds = freezed,
  }) {
    return _then(_$_SoundList(
      sounds: sounds == freezed
          ? _value._sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as List<Sound>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SoundList implements _SoundList {
  const _$_SoundList(
      {@JsonKey(name: 'sounds') required final List<Sound> sounds})
      : _sounds = sounds;

  factory _$_SoundList.fromJson(Map<String, dynamic> json) =>
      _$$_SoundListFromJson(json);

  final List<Sound> _sounds;
  @override
  @JsonKey(name: 'sounds')
  List<Sound> get sounds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sounds);
  }

  @override
  String toString() {
    return 'SoundList(sounds: $sounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SoundList &&
            const DeepCollectionEquality().equals(other._sounds, _sounds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sounds));

  @JsonKey(ignore: true)
  @override
  _$$_SoundListCopyWith<_$_SoundList> get copyWith =>
      __$$_SoundListCopyWithImpl<_$_SoundList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoundListToJson(
      this,
    );
  }
}

abstract class _SoundList implements SoundList {
  const factory _SoundList(
          {@JsonKey(name: 'sounds') required final List<Sound> sounds}) =
      _$_SoundList;

  factory _SoundList.fromJson(Map<String, dynamic> json) =
      _$_SoundList.fromJson;

  @override
  @JsonKey(name: 'sounds')
  List<Sound> get sounds;
  @override
  @JsonKey(ignore: true)
  _$$_SoundListCopyWith<_$_SoundList> get copyWith =>
      throw _privateConstructorUsedError;
}
