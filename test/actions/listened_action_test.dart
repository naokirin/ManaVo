import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/actions/listened_action.dart';
import 'package:manavo/services/listened/listened.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:get_it/get_it.dart';

import 'listened_action_test.mocks.dart';

@GenerateMocks([Listened])
void main() {
  group('ListenedAction Test', () {
    tearDown(() => GetIt.instance.reset());
    test('saveListened', () async {
      final mock = MockListened();
      GetIt.instance.registerSingleton<Listened>(mock);
      when(mock.saveListened(courseId: '', lessonId: ''))
          .thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container
          .read(listenedActionProvider)
          .saveListened(courseId: '', lessonId: '');
      verify(mock.saveListened(courseId: '', lessonId: '')).called(1);
    });

    test('incrementListenedCount', () async {
      final mock = MockListened();
      GetIt.instance.registerSingleton<Listened>(mock);
      when(mock.incrementListenedCount(lessonId: '')).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container
          .read(listenedActionProvider)
          .incrementListenedCount(lessonId: '');
      verify(mock.incrementListenedCount(lessonId: '')).called(1);
    });
  });
}
