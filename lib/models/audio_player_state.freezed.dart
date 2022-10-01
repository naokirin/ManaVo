// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlayerState {
  Duration get current => throw _privateConstructorUsedError;
  Duration get buffered => throw _privateConstructorUsedError;
  Duration get total => throw _privateConstructorUsedError;
  AudioState get audioState => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res>;
  $Res call(
      {Duration current,
      Duration buffered,
      Duration total,
      AudioState audioState,
      Object? error});
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  final AudioPlayerState _value;
  // ignore: unused_field
  final $Res Function(AudioPlayerState) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? buffered = freezed,
    Object? total = freezed,
    Object? audioState = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Duration,
      buffered: buffered == freezed
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Duration,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Duration,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioState,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioPlayerStateCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$_AudioPlayerStateCopyWith(
          _$_AudioPlayerState value, $Res Function(_$_AudioPlayerState) then) =
      __$$_AudioPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration current,
      Duration buffered,
      Duration total,
      AudioState audioState,
      Object? error});
}

/// @nodoc
class __$$_AudioPlayerStateCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res>
    implements _$$_AudioPlayerStateCopyWith<$Res> {
  __$$_AudioPlayerStateCopyWithImpl(
      _$_AudioPlayerState _value, $Res Function(_$_AudioPlayerState) _then)
      : super(_value, (v) => _then(v as _$_AudioPlayerState));

  @override
  _$_AudioPlayerState get _value => super._value as _$_AudioPlayerState;

  @override
  $Res call({
    Object? current = freezed,
    Object? buffered = freezed,
    Object? total = freezed,
    Object? audioState = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AudioPlayerState(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Duration,
      buffered: buffered == freezed
          ? _value.buffered
          : buffered // ignore: cast_nullable_to_non_nullable
              as Duration,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Duration,
      audioState: audioState == freezed
          ? _value.audioState
          : audioState // ignore: cast_nullable_to_non_nullable
              as AudioState,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AudioPlayerState implements _AudioPlayerState {
  const _$_AudioPlayerState(
      {this.current = Duration.zero,
      this.buffered = Duration.zero,
      this.total = Duration.zero,
      this.audioState = AudioState.paused,
      this.error = null});

  @override
  @JsonKey()
  final Duration current;
  @override
  @JsonKey()
  final Duration buffered;
  @override
  @JsonKey()
  final Duration total;
  @override
  @JsonKey()
  final AudioState audioState;
  @override
  @JsonKey()
  final Object? error;

  @override
  String toString() {
    return 'AudioPlayerState(current: $current, buffered: $buffered, total: $total, audioState: $audioState, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlayerState &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.buffered, buffered) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.audioState, audioState) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(buffered),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(audioState),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      __$$_AudioPlayerStateCopyWithImpl<_$_AudioPlayerState>(this, _$identity);
}

abstract class _AudioPlayerState implements AudioPlayerState {
  const factory _AudioPlayerState(
      {final Duration current,
      final Duration buffered,
      final Duration total,
      final AudioState audioState,
      final Object? error}) = _$_AudioPlayerState;

  @override
  Duration get current;
  @override
  Duration get buffered;
  @override
  Duration get total;
  @override
  AudioState get audioState;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
