// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppVersion {
  String? get version => throw _privateConstructorUsedError;
  int? get buildNumber => throw _privateConstructorUsedError;
  int? get lowestVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) then) =
      _$AppVersionCopyWithImpl<$Res>;
  $Res call({String? version, int? buildNumber, int? lowestVersion});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  final AppVersion _value;
  // ignore: unused_field
  final $Res Function(AppVersion) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? lowestVersion = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lowestVersion: lowestVersion == freezed
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppVersionCopyWith<$Res>
    implements $AppVersionCopyWith<$Res> {
  factory _$$_AppVersionCopyWith(
          _$_AppVersion value, $Res Function(_$_AppVersion) then) =
      __$$_AppVersionCopyWithImpl<$Res>;
  @override
  $Res call({String? version, int? buildNumber, int? lowestVersion});
}

/// @nodoc
class __$$_AppVersionCopyWithImpl<$Res> extends _$AppVersionCopyWithImpl<$Res>
    implements _$$_AppVersionCopyWith<$Res> {
  __$$_AppVersionCopyWithImpl(
      _$_AppVersion _value, $Res Function(_$_AppVersion) _then)
      : super(_value, (v) => _then(v as _$_AppVersion));

  @override
  _$_AppVersion get _value => super._value as _$_AppVersion;

  @override
  $Res call({
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? lowestVersion = freezed,
  }) {
    return _then(_$_AppVersion(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      lowestVersion: lowestVersion == freezed
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AppVersion extends _AppVersion {
  const _$_AppVersion(
      {required this.version,
      required this.buildNumber,
      required this.lowestVersion})
      : super._();

  @override
  final String? version;
  @override
  final int? buildNumber;
  @override
  final int? lowestVersion;

  @override
  String toString() {
    return 'AppVersion(version: $version, buildNumber: $buildNumber, lowestVersion: $lowestVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppVersion &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.buildNumber, buildNumber) &&
            const DeepCollectionEquality()
                .equals(other.lowestVersion, lowestVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(buildNumber),
      const DeepCollectionEquality().hash(lowestVersion));

  @JsonKey(ignore: true)
  @override
  _$$_AppVersionCopyWith<_$_AppVersion> get copyWith =>
      __$$_AppVersionCopyWithImpl<_$_AppVersion>(this, _$identity);
}

abstract class _AppVersion extends AppVersion {
  const factory _AppVersion(
      {required final String? version,
      required final int? buildNumber,
      required final int? lowestVersion}) = _$_AppVersion;
  const _AppVersion._() : super._();

  @override
  String? get version;
  @override
  int? get buildNumber;
  @override
  int? get lowestVersion;
  @override
  @JsonKey(ignore: true)
  _$$_AppVersionCopyWith<_$_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
