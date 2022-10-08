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
  int? get currentIndex => throw _privateConstructorUsedError;
  Duration get currentPosition => throw _privateConstructorUsedError;
  Duration get bufferedPosition => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  AudioProcessingState get audioProcessingState =>
      throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;

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
      {int? currentIndex,
      Duration currentPosition,
      Duration bufferedPosition,
      Duration duration,
      double volume,
      double speed,
      AudioProcessingState audioProcessingState,
      bool playing});
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
    Object? currentIndex = freezed,
    Object? currentPosition = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
    Object? volume = freezed,
    Object? speed = freezed,
    Object? audioProcessingState = freezed,
    Object? playing = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      audioProcessingState: audioProcessingState == freezed
          ? _value.audioProcessingState
          : audioProcessingState // ignore: cast_nullable_to_non_nullable
              as AudioProcessingState,
      playing: playing == freezed
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {int? currentIndex,
      Duration currentPosition,
      Duration bufferedPosition,
      Duration duration,
      double volume,
      double speed,
      AudioProcessingState audioProcessingState,
      bool playing});
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
    Object? currentIndex = freezed,
    Object? currentPosition = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
    Object? volume = freezed,
    Object? speed = freezed,
    Object? audioProcessingState = freezed,
    Object? playing = freezed,
  }) {
    return _then(_$_AudioPlayerState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      audioProcessingState: audioProcessingState == freezed
          ? _value.audioProcessingState
          : audioProcessingState // ignore: cast_nullable_to_non_nullable
              as AudioProcessingState,
      playing: playing == freezed
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AudioPlayerState implements _AudioPlayerState {
  const _$_AudioPlayerState(
      {this.currentIndex = null,
      this.currentPosition = Duration.zero,
      this.bufferedPosition = Duration.zero,
      this.duration = Duration.zero,
      this.volume = 1.0,
      this.speed = 1.0,
      this.audioProcessingState = AudioProcessingState.idle,
      this.playing = false});

  @override
  @JsonKey()
  final int? currentIndex;
  @override
  @JsonKey()
  final Duration currentPosition;
  @override
  @JsonKey()
  final Duration bufferedPosition;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final AudioProcessingState audioProcessingState;
  @override
  @JsonKey()
  final bool playing;

  @override
  String toString() {
    return 'AudioPlayerState(currentIndex: $currentIndex, currentPosition: $currentPosition, bufferedPosition: $bufferedPosition, duration: $duration, volume: $volume, speed: $speed, audioProcessingState: $audioProcessingState, playing: $playing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlayerState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality()
                .equals(other.currentPosition, currentPosition) &&
            const DeepCollectionEquality()
                .equals(other.bufferedPosition, bufferedPosition) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality()
                .equals(other.audioProcessingState, audioProcessingState) &&
            const DeepCollectionEquality().equals(other.playing, playing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(currentPosition),
      const DeepCollectionEquality().hash(bufferedPosition),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(audioProcessingState),
      const DeepCollectionEquality().hash(playing));

  @JsonKey(ignore: true)
  @override
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      __$$_AudioPlayerStateCopyWithImpl<_$_AudioPlayerState>(this, _$identity);
}

abstract class _AudioPlayerState implements AudioPlayerState {
  const factory _AudioPlayerState(
      {final int? currentIndex,
      final Duration currentPosition,
      final Duration bufferedPosition,
      final Duration duration,
      final double volume,
      final double speed,
      final AudioProcessingState audioProcessingState,
      final bool playing}) = _$_AudioPlayerState;

  @override
  int? get currentIndex;
  @override
  Duration get currentPosition;
  @override
  Duration get bufferedPosition;
  @override
  Duration get duration;
  @override
  double get volume;
  @override
  double get speed;
  @override
  AudioProcessingState get audioProcessingState;
  @override
  bool get playing;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
