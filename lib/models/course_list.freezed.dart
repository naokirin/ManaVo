// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseList _$CourseListFromJson(Map<String, dynamic> json) {
  return _CourseList.fromJson(json);
}

/// @nodoc
mixin _$CourseList {
  @JsonKey(name: 'courses')
  List<Course> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseListCopyWith<CourseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListCopyWith<$Res> {
  factory $CourseListCopyWith(
          CourseList value, $Res Function(CourseList) then) =
      _$CourseListCopyWithImpl<$Res, CourseList>;
  @useResult
  $Res call({@JsonKey(name: 'courses') List<Course> courses});
}

/// @nodoc
class _$CourseListCopyWithImpl<$Res, $Val extends CourseList>
    implements $CourseListCopyWith<$Res> {
  _$CourseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseListImplCopyWith<$Res>
    implements $CourseListCopyWith<$Res> {
  factory _$$CourseListImplCopyWith(
          _$CourseListImpl value, $Res Function(_$CourseListImpl) then) =
      __$$CourseListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'courses') List<Course> courses});
}

/// @nodoc
class __$$CourseListImplCopyWithImpl<$Res>
    extends _$CourseListCopyWithImpl<$Res, _$CourseListImpl>
    implements _$$CourseListImplCopyWith<$Res> {
  __$$CourseListImplCopyWithImpl(
      _$CourseListImpl _value, $Res Function(_$CourseListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$CourseListImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CourseListImpl implements _CourseList {
  const _$CourseListImpl(
      {@JsonKey(name: 'courses') required final List<Course> courses})
      : _courses = courses;

  factory _$CourseListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseListImplFromJson(json);

  final List<Course> _courses;
  @override
  @JsonKey(name: 'courses')
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseList(courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseListImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseListImplCopyWith<_$CourseListImpl> get copyWith =>
      __$$CourseListImplCopyWithImpl<_$CourseListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseListImplToJson(
      this,
    );
  }
}

abstract class _CourseList implements CourseList {
  const factory _CourseList(
          {@JsonKey(name: 'courses') required final List<Course> courses}) =
      _$CourseListImpl;

  factory _CourseList.fromJson(Map<String, dynamic> json) =
      _$CourseListImpl.fromJson;

  @override
  @JsonKey(name: 'courses')
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$$CourseListImplCopyWith<_$CourseListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
