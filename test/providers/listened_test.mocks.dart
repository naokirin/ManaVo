// Mocks generated by Mockito 5.4.4 from annotations
// in manavo/test/providers/listened_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:manavo/services/listened/listened.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [Listened].
///
/// See the documentation for Mockito's code generation for more information.
class MockListened extends _i1.Mock implements _i2.Listened {
  MockListened() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> saveListened({
    required String? courseId,
    required String? lessonId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveListened,
          [],
          {
            #courseId: courseId,
            #lessonId: lessonId,
          },
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> incrementListenedCount({required String? lessonId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #incrementListenedCount,
          [],
          {#lessonId: lessonId},
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  List<String> listened({required String? courseId}) => (super.noSuchMethod(
        Invocation.method(
          #listened,
          [],
          {#courseId: courseId},
        ),
        returnValue: <String>[],
      ) as List<String>);

  @override
  int listenedCount({required String? lessonId}) => (super.noSuchMethod(
        Invocation.method(
          #listenedCount,
          [],
          {#lessonId: lessonId},
        ),
        returnValue: 0,
      ) as int);
}
