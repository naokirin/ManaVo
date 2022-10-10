// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return _AppInfo.fromJson(json);
}

/// @nodoc
mixin _$AppInfo {
  @JsonKey(name: 'lowest_version')
  int get lowestVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_list_path')
  String get courseListPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lowest_version') int lowestVersion,
      @JsonKey(name: 'course_list_path') String courseListPath});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  final AppInfo _value;
  // ignore: unused_field
  final $Res Function(AppInfo) _then;

  @override
  $Res call({
    Object? lowestVersion = freezed,
    Object? courseListPath = freezed,
  }) {
    return _then(_value.copyWith(
      lowestVersion: lowestVersion == freezed
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      courseListPath: courseListPath == freezed
          ? _value.courseListPath
          : courseListPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$_AppInfoCopyWith(
          _$_AppInfo value, $Res Function(_$_AppInfo) then) =
      __$$_AppInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lowest_version') int lowestVersion,
      @JsonKey(name: 'course_list_path') String courseListPath});
}

/// @nodoc
class __$$_AppInfoCopyWithImpl<$Res> extends _$AppInfoCopyWithImpl<$Res>
    implements _$$_AppInfoCopyWith<$Res> {
  __$$_AppInfoCopyWithImpl(_$_AppInfo _value, $Res Function(_$_AppInfo) _then)
      : super(_value, (v) => _then(v as _$_AppInfo));

  @override
  _$_AppInfo get _value => super._value as _$_AppInfo;

  @override
  $Res call({
    Object? lowestVersion = freezed,
    Object? courseListPath = freezed,
  }) {
    return _then(_$_AppInfo(
      lowestVersion: lowestVersion == freezed
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      courseListPath: courseListPath == freezed
          ? _value.courseListPath
          : courseListPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppInfo implements _AppInfo {
  const _$_AppInfo(
      {@JsonKey(name: 'lowest_version') required this.lowestVersion,
      @JsonKey(name: 'course_list_path') required this.courseListPath});

  factory _$_AppInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AppInfoFromJson(json);

  @override
  @JsonKey(name: 'lowest_version')
  final int lowestVersion;
  @override
  @JsonKey(name: 'course_list_path')
  final String courseListPath;

  @override
  String toString() {
    return 'AppInfo(lowestVersion: $lowestVersion, courseListPath: $courseListPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppInfo &&
            const DeepCollectionEquality()
                .equals(other.lowestVersion, lowestVersion) &&
            const DeepCollectionEquality()
                .equals(other.courseListPath, courseListPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lowestVersion),
      const DeepCollectionEquality().hash(courseListPath));

  @JsonKey(ignore: true)
  @override
  _$$_AppInfoCopyWith<_$_AppInfo> get copyWith =>
      __$$_AppInfoCopyWithImpl<_$_AppInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppInfoToJson(
      this,
    );
  }
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {@JsonKey(name: 'lowest_version')
          required final int lowestVersion,
      @JsonKey(name: 'course_list_path')
          required final String courseListPath}) = _$_AppInfo;

  factory _AppInfo.fromJson(Map<String, dynamic> json) = _$_AppInfo.fromJson;

  @override
  @JsonKey(name: 'lowest_version')
  int get lowestVersion;
  @override
  @JsonKey(name: 'course_list_path')
  String get courseListPath;
  @override
  @JsonKey(ignore: true)
  _$$_AppInfoCopyWith<_$_AppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
