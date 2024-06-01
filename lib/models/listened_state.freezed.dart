// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listened_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListenedState {
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime updatedAt) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime updatedAt)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime updatedAt)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenedState value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenedState value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenedState value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListenedStateCopyWith<ListenedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenedStateCopyWith<$Res> {
  factory $ListenedStateCopyWith(
          ListenedState value, $Res Function(ListenedState) then) =
      _$ListenedStateCopyWithImpl<$Res, ListenedState>;
  @useResult
  $Res call({DateTime updatedAt});
}

/// @nodoc
class _$ListenedStateCopyWithImpl<$Res, $Val extends ListenedState>
    implements $ListenedStateCopyWith<$Res> {
  _$ListenedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListenedStateImplCopyWith<$Res>
    implements $ListenedStateCopyWith<$Res> {
  factory _$$ListenedStateImplCopyWith(
          _$ListenedStateImpl value, $Res Function(_$ListenedStateImpl) then) =
      __$$ListenedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime updatedAt});
}

/// @nodoc
class __$$ListenedStateImplCopyWithImpl<$Res>
    extends _$ListenedStateCopyWithImpl<$Res, _$ListenedStateImpl>
    implements _$$ListenedStateImplCopyWith<$Res> {
  __$$ListenedStateImplCopyWithImpl(
      _$ListenedStateImpl _value, $Res Function(_$ListenedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
  }) {
    return _then(_$ListenedStateImpl(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ListenedStateImpl extends _ListenedState {
  const _$ListenedStateImpl({required this.updatedAt}) : super._();

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ListenedState.create(updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenedStateImpl &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenedStateImplCopyWith<_$ListenedStateImpl> get copyWith =>
      __$$ListenedStateImplCopyWithImpl<_$ListenedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime updatedAt) create,
  }) {
    return create(updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime updatedAt)? create,
  }) {
    return create?.call(updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime updatedAt)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenedState value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenedState value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenedState value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _ListenedState extends ListenedState {
  const factory _ListenedState({required final DateTime updatedAt}) =
      _$ListenedStateImpl;
  const _ListenedState._() : super._();

  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ListenedStateImplCopyWith<_$ListenedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
