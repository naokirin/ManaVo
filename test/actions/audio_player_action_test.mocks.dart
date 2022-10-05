// Mocks generated by Mockito 5.3.0 from annotations
// in manavo/test/actions/audio_player_action_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:audio_service/audio_service.dart' as _i4;
import 'package:manavo/services/audio/audio_service_handler.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:rxdart/rxdart.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBehaviorSubject_0<T> extends _i1.SmartFake
    implements _i2.BehaviorSubject<T> {
  _FakeBehaviorSubject_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakePublishSubject_1<T> extends _i1.SmartFake
    implements _i2.PublishSubject<T> {
  _FakePublishSubject_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeValueStream_2<T> extends _i1.SmartFake
    implements _i2.ValueStream<T> {
  _FakeValueStream_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [AudioServiceHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockAudioServiceHandler extends _i1.Mock
    implements _i3.AudioServiceHandler {
  MockAudioServiceHandler() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BehaviorSubject<_i4.PlaybackState> get playbackState =>
      (super.noSuchMethod(Invocation.getter(#playbackState),
              returnValue: _FakeBehaviorSubject_0<_i4.PlaybackState>(
                  this, Invocation.getter(#playbackState)))
          as _i2.BehaviorSubject<_i4.PlaybackState>);
  @override
  _i2.BehaviorSubject<List<_i4.MediaItem>> get queue =>
      (super.noSuchMethod(Invocation.getter(#queue),
              returnValue: _FakeBehaviorSubject_0<List<_i4.MediaItem>>(
                  this, Invocation.getter(#queue)))
          as _i2.BehaviorSubject<List<_i4.MediaItem>>);
  @override
  _i2.BehaviorSubject<String> get queueTitle =>
      (super.noSuchMethod(Invocation.getter(#queueTitle),
              returnValue: _FakeBehaviorSubject_0<String>(
                  this, Invocation.getter(#queueTitle)))
          as _i2.BehaviorSubject<String>);
  @override
  _i2.BehaviorSubject<_i4.MediaItem?> get mediaItem =>
      (super.noSuchMethod(Invocation.getter(#mediaItem),
              returnValue: _FakeBehaviorSubject_0<_i4.MediaItem?>(
                  this, Invocation.getter(#mediaItem)))
          as _i2.BehaviorSubject<_i4.MediaItem?>);
  @override
  _i2.BehaviorSubject<_i4.AndroidPlaybackInfo> get androidPlaybackInfo =>
      (super.noSuchMethod(Invocation.getter(#androidPlaybackInfo),
              returnValue: _FakeBehaviorSubject_0<_i4.AndroidPlaybackInfo>(
                  this, Invocation.getter(#androidPlaybackInfo)))
          as _i2.BehaviorSubject<_i4.AndroidPlaybackInfo>);
  @override
  _i2.BehaviorSubject<_i4.RatingStyle> get ratingStyle =>
      (super.noSuchMethod(Invocation.getter(#ratingStyle),
              returnValue: _FakeBehaviorSubject_0<_i4.RatingStyle>(
                  this, Invocation.getter(#ratingStyle)))
          as _i2.BehaviorSubject<_i4.RatingStyle>);
  @override
  _i2.PublishSubject<dynamic> get customEvent =>
      (super.noSuchMethod(Invocation.getter(#customEvent),
              returnValue: _FakePublishSubject_1<dynamic>(
                  this, Invocation.getter(#customEvent)))
          as _i2.PublishSubject<dynamic>);
  @override
  _i2.BehaviorSubject<dynamic> get customState =>
      (super.noSuchMethod(Invocation.getter(#customState),
              returnValue: _FakeBehaviorSubject_0<dynamic>(
                  this, Invocation.getter(#customState)))
          as _i2.BehaviorSubject<dynamic>);
  @override
  _i5.Future<void> initPlayer(
          {_i4.MediaItem? item,
          int? initialIndex,
          Duration? initialPosition,
          _i5.Future<void> Function()? onCompleted}) =>
      (super.noSuchMethod(
              Invocation.method(#initPlayer, [], {
                #item: item,
                #initialIndex: initialIndex,
                #initialPosition: initialPosition,
                #onCompleted: onCompleted
              }),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> setAudioSource(
          {_i4.MediaItem? item, Duration? initialPosition}) =>
      (super.noSuchMethod(
              Invocation.method(#setAudioSource, [],
                  {#item: item, #initialPosition: initialPosition}),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> play() => (super.noSuchMethod(Invocation.method(#play, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> pause() => (super.noSuchMethod(Invocation.method(#pause, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> seek(Duration? position) => (super.noSuchMethod(
      Invocation.method(#seek, [position]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> stop() => (super.noSuchMethod(Invocation.method(#stop, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> setSpeed(double? speed) => (super.noSuchMethod(
      Invocation.method(#setSpeed, [speed]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<Duration?> load() =>
      (super.noSuchMethod(Invocation.method(#load, []),
          returnValue: _i5.Future<Duration?>.value()) as _i5.Future<Duration?>);
  @override
  _i5.Future<void> setVolume(double? volume) => (super.noSuchMethod(
      Invocation.method(#setVolume, [volume]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  bool loadedIndexedAudioSource(int? i) =>
      (super.noSuchMethod(Invocation.method(#loadedIndexedAudioSource, [i]),
          returnValue: false) as bool);
  @override
  void setOnError(void Function(Object, StackTrace)? callback) =>
      super.noSuchMethod(Invocation.method(#setOnError, [callback]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<void> prepare() => (super.noSuchMethod(
      Invocation.method(#prepare, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> prepareFromMediaId(String? mediaId,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(
              Invocation.method(#prepareFromMediaId, [mediaId, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> prepareFromSearch(String? query,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(
              Invocation.method(#prepareFromSearch, [query, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> prepareFromUri(Uri? uri, [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#prepareFromUri, [uri, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> playFromMediaId(String? mediaId,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(
              Invocation.method(#playFromMediaId, [mediaId, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> playFromSearch(String? query,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#playFromSearch, [query, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> playFromUri(Uri? uri, [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#playFromUri, [uri, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> playMediaItem(_i4.MediaItem? mediaItem) =>
      (super.noSuchMethod(Invocation.method(#playMediaItem, [mediaItem]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> click([_i4.MediaButton? button = _i4.MediaButton.media]) =>
      (super.noSuchMethod(Invocation.method(#click, [button]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> addQueueItem(_i4.MediaItem? mediaItem) =>
      (super.noSuchMethod(Invocation.method(#addQueueItem, [mediaItem]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> addQueueItems(List<_i4.MediaItem>? mediaItems) =>
      (super.noSuchMethod(Invocation.method(#addQueueItems, [mediaItems]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> insertQueueItem(int? index, _i4.MediaItem? mediaItem) =>
      (super.noSuchMethod(
              Invocation.method(#insertQueueItem, [index, mediaItem]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> updateQueue(List<_i4.MediaItem>? newQueue) =>
      (super.noSuchMethod(Invocation.method(#updateQueue, [newQueue]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> updateMediaItem(_i4.MediaItem? mediaItem) =>
      (super.noSuchMethod(Invocation.method(#updateMediaItem, [mediaItem]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> removeQueueItem(_i4.MediaItem? mediaItem) =>
      (super.noSuchMethod(Invocation.method(#removeQueueItem, [mediaItem]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> removeQueueItemAt(int? index) => (super.noSuchMethod(
      Invocation.method(#removeQueueItemAt, [index]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> skipToNext() => (super.noSuchMethod(
      Invocation.method(#skipToNext, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> skipToPrevious() => (super.noSuchMethod(
      Invocation.method(#skipToPrevious, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> fastForward() => (super.noSuchMethod(
      Invocation.method(#fastForward, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> rewind() => (super.noSuchMethod(
      Invocation.method(#rewind, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> skipToQueueItem(int? index) => (super.noSuchMethod(
      Invocation.method(#skipToQueueItem, [index]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> setRating(_i4.Rating? rating,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#setRating, [rating, extras]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> setCaptioningEnabled(bool? enabled) => (super.noSuchMethod(
      Invocation.method(#setCaptioningEnabled, [enabled]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> setRepeatMode(_i4.AudioServiceRepeatMode? repeatMode) =>
      (super.noSuchMethod(Invocation.method(#setRepeatMode, [repeatMode]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> setShuffleMode(_i4.AudioServiceShuffleMode? shuffleMode) =>
      (super.noSuchMethod(Invocation.method(#setShuffleMode, [shuffleMode]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> seekBackward(bool? begin) => (super.noSuchMethod(
      Invocation.method(#seekBackward, [begin]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> seekForward(bool? begin) => (super.noSuchMethod(
      Invocation.method(#seekForward, [begin]),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<dynamic> customAction(String? name,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#customAction, [name, extras]),
          returnValue: _i5.Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  _i5.Future<void> onTaskRemoved() => (super.noSuchMethod(
      Invocation.method(#onTaskRemoved, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> onNotificationDeleted() => (super.noSuchMethod(
      Invocation.method(#onNotificationDeleted, []),
      returnValue: _i5.Future<void>.value(),
      returnValueForMissingStub: _i5.Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<List<_i4.MediaItem>> getChildren(String? parentMediaId,
          [Map<String, dynamic>? options]) =>
      (super.noSuchMethod(
              Invocation.method(#getChildren, [parentMediaId, options]),
              returnValue:
                  _i5.Future<List<_i4.MediaItem>>.value(<_i4.MediaItem>[]))
          as _i5.Future<List<_i4.MediaItem>>);
  @override
  _i2.ValueStream<Map<String, dynamic>> subscribeToChildren(
          String? parentMediaId) =>
      (super.noSuchMethod(
              Invocation.method(#subscribeToChildren, [parentMediaId]),
              returnValue: _FakeValueStream_2<Map<String, dynamic>>(this,
                  Invocation.method(#subscribeToChildren, [parentMediaId])))
          as _i2.ValueStream<Map<String, dynamic>>);
  @override
  _i5.Future<_i4.MediaItem?> getMediaItem(String? mediaId) =>
      (super.noSuchMethod(Invocation.method(#getMediaItem, [mediaId]),
              returnValue: _i5.Future<_i4.MediaItem?>.value())
          as _i5.Future<_i4.MediaItem?>);
  @override
  _i5.Future<List<_i4.MediaItem>> search(String? query,
          [Map<String, dynamic>? extras]) =>
      (super.noSuchMethod(Invocation.method(#search, [query, extras]),
              returnValue:
                  _i5.Future<List<_i4.MediaItem>>.value(<_i4.MediaItem>[]))
          as _i5.Future<List<_i4.MediaItem>>);
  @override
  _i5.Future<void> androidAdjustRemoteVolume(
          _i4.AndroidVolumeDirection? direction) =>
      (super.noSuchMethod(
              Invocation.method(#androidAdjustRemoteVolume, [direction]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
  @override
  _i5.Future<void> androidSetRemoteVolume(int? volumeIndex) =>
      (super.noSuchMethod(
              Invocation.method(#androidSetRemoteVolume, [volumeIndex]),
              returnValue: _i5.Future<void>.value(),
              returnValueForMissingStub: _i5.Future<void>.value())
          as _i5.Future<void>);
}
