// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sound _$SoundFromJson(Map<String, dynamic> json) {
  return _Sound.fromJson(json);
}

/// @nodoc
mixin _$Sound {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'length')
  String get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoundCopyWith<Sound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundCopyWith<$Res> {
  factory $SoundCopyWith(Sound value, $Res Function(Sound) then) =
      _$SoundCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'length') String length,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$SoundCopyWithImpl<$Res> implements $SoundCopyWith<$Res> {
  _$SoundCopyWithImpl(this._value, this._then);

  final Sound _value;
  // ignore: unused_field
  final $Res Function(Sound) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? length = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SoundCopyWith<$Res> implements $SoundCopyWith<$Res> {
  factory _$$_SoundCopyWith(_$_Sound value, $Res Function(_$_Sound) then) =
      __$$_SoundCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'length') String length,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$_SoundCopyWithImpl<$Res> extends _$SoundCopyWithImpl<$Res>
    implements _$$_SoundCopyWith<$Res> {
  __$$_SoundCopyWithImpl(_$_Sound _value, $Res Function(_$_Sound) _then)
      : super(_value, (v) => _then(v as _$_Sound));

  @override
  _$_Sound get _value => super._value as _$_Sound;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? length = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Sound(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sound implements _Sound {
  const _$_Sound(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'length') required this.length,
      @JsonKey(name: 'url') required this.url});

  factory _$_Sound.fromJson(Map<String, dynamic> json) =>
      _$$_SoundFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'length')
  final String length;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'Sound(id: $id, name: $name, length: $length, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sound &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_SoundCopyWith<_$_Sound> get copyWith =>
      __$$_SoundCopyWithImpl<_$_Sound>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoundToJson(
      this,
    );
  }
}

abstract class _Sound implements Sound {
  const factory _Sound(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'length') required final String length,
      @JsonKey(name: 'url') required final String url}) = _$_Sound;

  factory _Sound.fromJson(Map<String, dynamic> json) = _$_Sound.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'length')
  String get length;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_SoundCopyWith<_$_Sound> get copyWith =>
      throw _privateConstructorUsedError;
}
