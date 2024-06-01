// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$LessonListCopyWithImpl<$Res, LessonList>;
  @useResult
  $Res call({@JsonKey(name: 'lessons') List<Lesson> lessons});
}

/// @nodoc
class _$LessonListCopyWithImpl<$Res, $Val extends LessonList>
    implements $LessonListCopyWith<$Res> {
  _$LessonListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
  }) {
    return _then(_value.copyWith(
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonListImplCopyWith<$Res>
    implements $LessonListCopyWith<$Res> {
  factory _$$LessonListImplCopyWith(
          _$LessonListImpl value, $Res Function(_$LessonListImpl) then) =
      __$$LessonListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'lessons') List<Lesson> lessons});
}

/// @nodoc
class __$$LessonListImplCopyWithImpl<$Res>
    extends _$LessonListCopyWithImpl<$Res, _$LessonListImpl>
    implements _$$LessonListImplCopyWith<$Res> {
  __$$LessonListImplCopyWithImpl(
      _$LessonListImpl _value, $Res Function(_$LessonListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
  }) {
    return _then(_$LessonListImpl(
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LessonListImpl implements _LessonList {
  const _$LessonListImpl(
      {@JsonKey(name: 'lessons') required final List<Lesson> lessons})
      : _lessons = lessons;

  factory _$LessonListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonListImplFromJson(json);

  final List<Lesson> _lessons;
  @override
  @JsonKey(name: 'lessons')
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'LessonList(lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonListImpl &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonListImplCopyWith<_$LessonListImpl> get copyWith =>
      __$$LessonListImplCopyWithImpl<_$LessonListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonListImplToJson(
      this,
    );
  }
}

abstract class _LessonList implements LessonList {
  const factory _LessonList(
          {@JsonKey(name: 'lessons') required final List<Lesson> lessons}) =
      _$LessonListImpl;

  factory _LessonList.fromJson(Map<String, dynamic> json) =
      _$LessonListImpl.fromJson;

  @override
  @JsonKey(name: 'lessons')
  List<Lesson> get lessons;
  @override
  @JsonKey(ignore: true)
  _$$LessonListImplCopyWith<_$LessonListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
