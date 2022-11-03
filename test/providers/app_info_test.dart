import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/models/app_info.dart';
import 'package:manavo/models/app_version.dart';
import 'package:manavo/providers/app_info.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:manavo/services/app/info.dart';
import 'package:fpdart/fpdart.dart' as fpdart;

import 'app_info_test.mocks.dart';

@GenerateMocks([Info])
void main() {
  group('appVersionProvider Test', () {
    tearDown(() => GetIt.instance.reset());
    test('returns', () async {
      final mock = MockInfo();
      GetIt.instance.registerSingleton<Info>(mock);
      when(mock.appName).thenReturn('app name');
      when(mock.version).thenReturn('1.2.3');
      when(mock.buildNumber).thenReturn(123);

      final container = ProviderContainer(overrides: [
        appInfoProvider.overrideWithValue(const AsyncValue.data(
            AppInfo(lowestVersion: 12, courseListPath: '')))
      ]);
      addTearDown(container.dispose);

      var actual = await container.read(appVersionProvider.future);

      expect(
          actual,
          fpdart.Either.right(const AppVersion(
              version: '1.2.3', buildNumber: 123, lowestVersion: 12)));
    });
  });
}
