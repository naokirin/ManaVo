import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/providers/listened.dart';
import 'package:manavo/services/listened/listened.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'listened_test.mocks.dart';

@GenerateMocks([Listened])
void main() {
  group('ListenedProvider Test', () {
    tearDown(() => GetIt.instance.reset());
    test('listened', () async {
      final mock = MockListened();
      GetIt.instance.registerSingleton<Listened>(mock);
      when(mock.listened(courseId: '')).thenReturn(['test']);

      final container = ProviderContainer();
      addTearDown(container.dispose);

      var actual = await container
          .read(listenedProvider.notifier)
          .listened(courseId: '');

      expect(actual, ['test']);
      verify(mock.listened(courseId: '')).called(1);
    });

    test('listenedCount', () async {
      final mock = MockListened();
      GetIt.instance.registerSingleton<Listened>(mock);
      when(mock.listenedCount(lessonId: '')).thenReturn(1);

      final container = ProviderContainer();
      addTearDown(container.dispose);

      var actual = await container
          .read(listenedProvider.notifier)
          .listenedCount(lessonId: '');

      expect(actual, 1);
      verify(mock.listenedCount(lessonId: '')).called(1);
    });
  });
}
