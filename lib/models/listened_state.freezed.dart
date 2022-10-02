// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listened_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function(DateTime updatedAt)? create,
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
    TResult Function(_ListenedState value)? create,
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
      _$ListenedStateCopyWithImpl<$Res>;
  $Res call({DateTime updatedAt});
}

/// @nodoc
class _$ListenedStateCopyWithImpl<$Res>
    implements $ListenedStateCopyWith<$Res> {
  _$ListenedStateCopyWithImpl(this._value, this._then);

  final ListenedState _value;
  // ignore: unused_field
  final $Res Function(ListenedState) _then;

  @override
  $Res call({
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ListenedStateCopyWith<$Res>
    implements $ListenedStateCopyWith<$Res> {
  factory _$$_ListenedStateCopyWith(
          _$_ListenedState value, $Res Function(_$_ListenedState) then) =
      __$$_ListenedStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime updatedAt});
}

/// @nodoc
class __$$_ListenedStateCopyWithImpl<$Res>
    extends _$ListenedStateCopyWithImpl<$Res>
    implements _$$_ListenedStateCopyWith<$Res> {
  __$$_ListenedStateCopyWithImpl(
      _$_ListenedState _value, $Res Function(_$_ListenedState) _then)
      : super(_value, (v) => _then(v as _$_ListenedState));

  @override
  _$_ListenedState get _value => super._value as _$_ListenedState;

  @override
  $Res call({
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ListenedState(
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ListenedState extends _ListenedState {
  const _$_ListenedState({required this.updatedAt}) : super._();

  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ListenedState.create(updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenedState &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ListenedStateCopyWith<_$_ListenedState> get copyWith =>
      __$$_ListenedStateCopyWithImpl<_$_ListenedState>(this, _$identity);

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
    TResult Function(DateTime updatedAt)? create,
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
    TResult Function(_ListenedState value)? create,
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
      _$_ListenedState;
  const _ListenedState._() : super._();

  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ListenedStateCopyWith<_$_ListenedState> get copyWith =>
      throw _privateConstructorUsedError;
}
