// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'lessons')
  int get lessons => throw _privateConstructorUsedError;
  @JsonKey(name: 'length')
  String get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_list_url')
  String get lessonListUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_image')
  String? get backgroundImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'lessons') int lessons,
      @JsonKey(name: 'length') String length,
      @JsonKey(name: 'lesson_list_url') String lessonListUrl,
      @JsonKey(name: 'background_image') String? backgroundImage});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? lessons = null,
    Object? length = null,
    Object? lessonListUrl = null,
    Object? backgroundImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      lessonListUrl: null == lessonListUrl
          ? _value.lessonListUrl
          : lessonListUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'lessons') int lessons,
      @JsonKey(name: 'length') String length,
      @JsonKey(name: 'lesson_list_url') String lessonListUrl,
      @JsonKey(name: 'background_image') String? backgroundImage});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? lessons = null,
    Object? length = null,
    Object? lessonListUrl = null,
    Object? backgroundImage = freezed,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      lessonListUrl: null == lessonListUrl
          ? _value.lessonListUrl
          : lessonListUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'lessons') required this.lessons,
      @JsonKey(name: 'length') required this.length,
      @JsonKey(name: 'lesson_list_url') required this.lessonListUrl,
      @JsonKey(name: 'background_image') required this.backgroundImage});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'lessons')
  final int lessons;
  @override
  @JsonKey(name: 'length')
  final String length;
  @override
  @JsonKey(name: 'lesson_list_url')
  final String lessonListUrl;
  @override
  @JsonKey(name: 'background_image')
  final String? backgroundImage;

  @override
  String toString() {
    return 'Course(id: $id, name: $name, description: $description, lessons: $lessons, length: $length, lessonListUrl: $lessonListUrl, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lessons, lessons) || other.lessons == lessons) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.lessonListUrl, lessonListUrl) ||
                other.lessonListUrl == lessonListUrl) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, lessons,
      length, lessonListUrl, backgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'lessons') required final int lessons,
      @JsonKey(name: 'length') required final String length,
      @JsonKey(name: 'lesson_list_url') required final String lessonListUrl,
      @JsonKey(name: 'background_image')
      required final String? backgroundImage}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'lessons')
  int get lessons;
  @override
  @JsonKey(name: 'length')
  String get length;
  @override
  @JsonKey(name: 'lesson_list_url')
  String get lessonListUrl;
  @override
  @JsonKey(name: 'background_image')
  String? get backgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
