// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoNetworkException value) noNetwork,
    required TResult Function(TimeoutException value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoNetworkException value)? noNetwork,
    TResult? Function(TimeoutException value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionExceptionCopyWith<$Res> {
  factory $ConnectionExceptionCopyWith(
          ConnectionException value, $Res Function(ConnectionException) then) =
      _$ConnectionExceptionCopyWithImpl<$Res, ConnectionException>;
}

/// @nodoc
class _$ConnectionExceptionCopyWithImpl<$Res, $Val extends ConnectionException>
    implements $ConnectionExceptionCopyWith<$Res> {
  _$ConnectionExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoNetworkExceptionImplCopyWith<$Res> {
  factory _$$NoNetworkExceptionImplCopyWith(_$NoNetworkExceptionImpl value,
          $Res Function(_$NoNetworkExceptionImpl) then) =
      __$$NoNetworkExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoNetworkExceptionImplCopyWithImpl<$Res>
    extends _$ConnectionExceptionCopyWithImpl<$Res, _$NoNetworkExceptionImpl>
    implements _$$NoNetworkExceptionImplCopyWith<$Res> {
  __$$NoNetworkExceptionImplCopyWithImpl(_$NoNetworkExceptionImpl _value,
      $Res Function(_$NoNetworkExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoNetworkExceptionImpl implements NoNetworkException {
  const _$NoNetworkExceptionImpl();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetworkExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() timeout,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? timeout,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoNetworkException value) noNetwork,
    required TResult Function(TimeoutException value) timeout,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoNetworkException value)? noNetwork,
    TResult? Function(TimeoutException value)? timeout,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class NoNetworkException implements ConnectionException {
  const factory NoNetworkException() = _$NoNetworkExceptionImpl;
}

/// @nodoc
abstract class _$$TimeoutExceptionImplCopyWith<$Res> {
  factory _$$TimeoutExceptionImplCopyWith(_$TimeoutExceptionImpl value,
          $Res Function(_$TimeoutExceptionImpl) then) =
      __$$TimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutExceptionImplCopyWithImpl<$Res>
    extends _$ConnectionExceptionCopyWithImpl<$Res, _$TimeoutExceptionImpl>
    implements _$$TimeoutExceptionImplCopyWith<$Res> {
  __$$TimeoutExceptionImplCopyWithImpl(_$TimeoutExceptionImpl _value,
      $Res Function(_$TimeoutExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutExceptionImpl implements TimeoutException {
  const _$TimeoutExceptionImpl();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() timeout,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? timeout,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoNetworkException value) noNetwork,
    required TResult Function(TimeoutException value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoNetworkException value)? noNetwork,
    TResult? Function(TimeoutException value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutException implements ConnectionException {
  const factory TimeoutException() = _$TimeoutExceptionImpl;
}
