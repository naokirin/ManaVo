// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonList _$LessonListFromJson(Map<String, dynamic> json) {
  return _LessonList.fromJson(json);
}

/// @nodoc
mixin _$LessonList {
  @JsonKey(name: 'lessons')
  List<Lesson> get lessons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonListCopyWith<LessonList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonListCopyWith<$Res> {
  factory $LessonListCopyWith(
          LessonList value, $Res Function(LessonList) then) =
      _$LessonListCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'lessons') List<Lesson> lessons});
}

/// @nodoc
class _$LessonListCopyWithImpl<$Res> implements $LessonListCopyWith<$Res> {
  _$LessonListCopyWithImpl(this._value, this._then);

  final LessonList _value;
  // ignore: unused_field
  final $Res Function(LessonList) _then;

  @override
  $Res call({
    Object? lessons = freezed,
  }) {
    return _then(_value.copyWith(
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonListCopyWith<$Res>
    implements $LessonListCopyWith<$Res> {
  factory _$$_LessonListCopyWith(
          _$_LessonList value, $Res Function(_$_LessonList) then) =
      __$$_LessonListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'lessons') List<Lesson> lessons});
}

/// @nodoc
class __$$_LessonListCopyWithImpl<$Res> extends _$LessonListCopyWithImpl<$Res>
    implements _$$_LessonListCopyWith<$Res> {
  __$$_LessonListCopyWithImpl(
      _$_LessonList _value, $Res Function(_$_LessonList) _then)
      : super(_value, (v) => _then(v as _$_LessonList));

  @override
  _$_LessonList get _value => super._value as _$_LessonList;

  @override
  $Res call({
    Object? lessons = freezed,
  }) {
    return _then(_$_LessonList(
      lessons: lessons == freezed
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LessonList implements _LessonList {
  const _$_LessonList(
      {@JsonKey(name: 'lessons') required final List<Lesson> lessons})
      : _lessons = lessons;

  factory _$_LessonList.fromJson(Map<String, dynamic> json) =>
      _$$_LessonListFromJson(json);

  final List<Lesson> _lessons;
  @override
  @JsonKey(name: 'lessons')
  List<Lesson> get lessons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'LessonList(lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonList &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  _$$_LessonListCopyWith<_$_LessonList> get copyWith =>
      __$$_LessonListCopyWithImpl<_$_LessonList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonListToJson(
      this,
    );
  }
}

abstract class _LessonList implements LessonList {
  const factory _LessonList(
          {@JsonKey(name: 'lessons') required final List<Lesson> lessons}) =
      _$_LessonList;

  factory _LessonList.fromJson(Map<String, dynamic> json) =
      _$_LessonList.fromJson;

  @override
  @JsonKey(name: 'lessons')
  List<Lesson> get lessons;
  @override
  @JsonKey(ignore: true)
  _$$_LessonListCopyWith<_$_LessonList> get copyWith =>
      throw _privateConstructorUsedError;
}
