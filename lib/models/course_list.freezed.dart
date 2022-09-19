// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseList {
  List<Course> get courses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseListCopyWith<CourseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseListCopyWith<$Res> {
  factory $CourseListCopyWith(
          CourseList value, $Res Function(CourseList) then) =
      _$CourseListCopyWithImpl<$Res>;
  $Res call({List<Course> courses});
}

/// @nodoc
class _$CourseListCopyWithImpl<$Res> implements $CourseListCopyWith<$Res> {
  _$CourseListCopyWithImpl(this._value, this._then);

  final CourseList _value;
  // ignore: unused_field
  final $Res Function(CourseList) _then;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc
abstract class _$$_CourseListCopyWith<$Res>
    implements $CourseListCopyWith<$Res> {
  factory _$$_CourseListCopyWith(
          _$_CourseList value, $Res Function(_$_CourseList) then) =
      __$$_CourseListCopyWithImpl<$Res>;
  @override
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$_CourseListCopyWithImpl<$Res> extends _$CourseListCopyWithImpl<$Res>
    implements _$$_CourseListCopyWith<$Res> {
  __$$_CourseListCopyWithImpl(
      _$_CourseList _value, $Res Function(_$_CourseList) _then)
      : super(_value, (v) => _then(v as _$_CourseList));

  @override
  _$_CourseList get _value => super._value as _$_CourseList;

  @override
  $Res call({
    Object? courses = freezed,
  }) {
    return _then(_$_CourseList(
      courses: courses == freezed
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_CourseList implements _CourseList {
  const _$_CourseList({required final List<Course> courses})
      : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseList(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseList &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  _$$_CourseListCopyWith<_$_CourseList> get copyWith =>
      __$$_CourseListCopyWithImpl<_$_CourseList>(this, _$identity);
}

abstract class _CourseList implements CourseList {
  const factory _CourseList({required final List<Course> courses}) =
      _$_CourseList;

  @override
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_CourseListCopyWith<_$_CourseList> get copyWith =>
      throw _privateConstructorUsedError;
}
