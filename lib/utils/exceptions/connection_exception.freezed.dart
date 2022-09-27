// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? noNetwork,
    TResult Function()? timeout,
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
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
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
      _$ConnectionExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionExceptionCopyWithImpl<$Res>
    implements $ConnectionExceptionCopyWith<$Res> {
  _$ConnectionExceptionCopyWithImpl(this._value, this._then);

  final ConnectionException _value;
  // ignore: unused_field
  final $Res Function(ConnectionException) _then;
}

/// @nodoc
abstract class _$$NoNetworkExceptionCopyWith<$Res> {
  factory _$$NoNetworkExceptionCopyWith(_$NoNetworkException value,
          $Res Function(_$NoNetworkException) then) =
      __$$NoNetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoNetworkExceptionCopyWithImpl<$Res>
    extends _$ConnectionExceptionCopyWithImpl<$Res>
    implements _$$NoNetworkExceptionCopyWith<$Res> {
  __$$NoNetworkExceptionCopyWithImpl(
      _$NoNetworkException _value, $Res Function(_$NoNetworkException) _then)
      : super(_value, (v) => _then(v as _$NoNetworkException));

  @override
  _$NoNetworkException get _value => super._value as _$NoNetworkException;
}

/// @nodoc

class _$NoNetworkException implements NoNetworkException {
  const _$NoNetworkException();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetworkException);
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
    TResult Function()? noNetwork,
    TResult Function()? timeout,
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
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
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
  const factory NoNetworkException() = _$NoNetworkException;
}

/// @nodoc
abstract class _$$TimeoutExceptionCopyWith<$Res> {
  factory _$$TimeoutExceptionCopyWith(
          _$TimeoutException value, $Res Function(_$TimeoutException) then) =
      __$$TimeoutExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutExceptionCopyWithImpl<$Res>
    extends _$ConnectionExceptionCopyWithImpl<$Res>
    implements _$$TimeoutExceptionCopyWith<$Res> {
  __$$TimeoutExceptionCopyWithImpl(
      _$TimeoutException _value, $Res Function(_$TimeoutException) _then)
      : super(_value, (v) => _then(v as _$TimeoutException));

  @override
  _$TimeoutException get _value => super._value as _$TimeoutException;
}

/// @nodoc

class _$TimeoutException implements TimeoutException {
  const _$TimeoutException();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutException);
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
    TResult Function()? noNetwork,
    TResult Function()? timeout,
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
    TResult Function(NoNetworkException value)? noNetwork,
    TResult Function(TimeoutException value)? timeout,
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
  const factory TimeoutException() = _$TimeoutException;
}
