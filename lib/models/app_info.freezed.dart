// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lowest_version') int lowestVersion,
      @JsonKey(name: 'course_list_path') String courseListPath});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lowestVersion = null,
    Object? courseListPath = null,
  }) {
    return _then(_value.copyWith(
      lowestVersion: null == lowestVersion
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      courseListPath: null == courseListPath
          ? _value.courseListPath
          : courseListPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
          _$AppInfoImpl value, $Res Function(_$AppInfoImpl) then) =
      __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lowest_version') int lowestVersion,
      @JsonKey(name: 'course_list_path') String courseListPath});
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
      _$AppInfoImpl _value, $Res Function(_$AppInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lowestVersion = null,
    Object? courseListPath = null,
  }) {
    return _then(_$AppInfoImpl(
      lowestVersion: null == lowestVersion
          ? _value.lowestVersion
          : lowestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      courseListPath: null == courseListPath
          ? _value.courseListPath
          : courseListPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AppInfoImpl implements _AppInfo {
  const _$AppInfoImpl(
      {@JsonKey(name: 'lowest_version') required this.lowestVersion,
      @JsonKey(name: 'course_list_path') required this.courseListPath});

  factory _$AppInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppInfoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            (identical(other.lowestVersion, lowestVersion) ||
                other.lowestVersion == lowestVersion) &&
            (identical(other.courseListPath, courseListPath) ||
                other.courseListPath == courseListPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lowestVersion, courseListPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppInfoImplToJson(
      this,
    );
  }
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {@JsonKey(name: 'lowest_version') required final int lowestVersion,
      @JsonKey(name: 'course_list_path')
      required final String courseListPath}) = _$AppInfoImpl;

  factory _AppInfo.fromJson(Map<String, dynamic> json) = _$AppInfoImpl.fromJson;

  @override
  @JsonKey(name: 'lowest_version')
  int get lowestVersion;
  @override
  @JsonKey(name: 'course_list_path')
  String get courseListPath;
  @override
  @JsonKey(ignore: true)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
