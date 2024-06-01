// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioPlayerState {
  String? get lessonId => throw _privateConstructorUsedError;
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
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
  @useResult
  $Res call(
      {String? lessonId,
      int? currentIndex,
      Duration currentPosition,
      Duration bufferedPosition,
      Duration duration,
      double volume,
      double speed,
      AudioProcessingState audioProcessingState,
      bool playing});
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = freezed,
    Object? currentIndex = freezed,
    Object? currentPosition = null,
    Object? bufferedPosition = null,
    Object? duration = null,
    Object? volume = null,
    Object? speed = null,
    Object? audioProcessingState = null,
    Object? playing = null,
  }) {
    return _then(_value.copyWith(
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: null == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      audioProcessingState: null == audioProcessingState
          ? _value.audioProcessingState
          : audioProcessingState // ignore: cast_nullable_to_non_nullable
              as AudioProcessingState,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPlayerStateImplCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$AudioPlayerStateImplCopyWith(_$AudioPlayerStateImpl value,
          $Res Function(_$AudioPlayerStateImpl) then) =
      __$$AudioPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lessonId,
      int? currentIndex,
      Duration currentPosition,
      Duration bufferedPosition,
      Duration duration,
      double volume,
      double speed,
      AudioProcessingState audioProcessingState,
      bool playing});
}

/// @nodoc
class __$$AudioPlayerStateImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioPlayerStateImpl>
    implements _$$AudioPlayerStateImplCopyWith<$Res> {
  __$$AudioPlayerStateImplCopyWithImpl(_$AudioPlayerStateImpl _value,
      $Res Function(_$AudioPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = freezed,
    Object? currentIndex = freezed,
    Object? currentPosition = null,
    Object? bufferedPosition = null,
    Object? duration = null,
    Object? volume = null,
    Object? speed = null,
    Object? audioProcessingState = null,
    Object? playing = null,
  }) {
    return _then(_$AudioPlayerStateImpl(
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIndex: freezed == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: null == bufferedPosition
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      audioProcessingState: null == audioProcessingState
          ? _value.audioProcessingState
          : audioProcessingState // ignore: cast_nullable_to_non_nullable
              as AudioProcessingState,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AudioPlayerStateImpl implements _AudioPlayerState {
  const _$AudioPlayerStateImpl(
      {this.lessonId = null,
      this.currentIndex = null,
      this.currentPosition = Duration.zero,
      this.bufferedPosition = Duration.zero,
      this.duration = Duration.zero,
      this.volume = 1.0,
      this.speed = 1.0,
      this.audioProcessingState = AudioProcessingState.idle,
      this.playing = false});

  @override
  @JsonKey()
  final String? lessonId;
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
    return 'AudioPlayerState(lessonId: $lessonId, currentIndex: $currentIndex, currentPosition: $currentPosition, bufferedPosition: $bufferedPosition, duration: $duration, volume: $volume, speed: $speed, audioProcessingState: $audioProcessingState, playing: $playing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayerStateImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.bufferedPosition, bufferedPosition) ||
                other.bufferedPosition == bufferedPosition) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.audioProcessingState, audioProcessingState) ||
                other.audioProcessingState == audioProcessingState) &&
            (identical(other.playing, playing) || other.playing == playing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      currentIndex,
      currentPosition,
      bufferedPosition,
      duration,
      volume,
      speed,
      audioProcessingState,
      playing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      __$$AudioPlayerStateImplCopyWithImpl<_$AudioPlayerStateImpl>(
          this, _$identity);
}

abstract class _AudioPlayerState implements AudioPlayerState {
  const factory _AudioPlayerState(
      {final String? lessonId,
      final int? currentIndex,
      final Duration currentPosition,
      final Duration bufferedPosition,
      final Duration duration,
      final double volume,
      final double speed,
      final AudioProcessingState audioProcessingState,
      final bool playing}) = _$AudioPlayerStateImpl;

  @override
  String? get lessonId;
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
  _$$AudioPlayerStateImplCopyWith<_$AudioPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
