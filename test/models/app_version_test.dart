import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/models/app_version.dart';

void main() {
  group('AppVersion Test', () {
    group('needsToForceUpdate()', () {
      test('without needing to update', () {
        var actual = const AppVersion(
            version: '1.0.0', buildNumber: 1, lowestVersion: 1);

        expect(actual.needsToForceUpdate(), isFalse);
      });

      test('with needing to update', () {
        var actual = const AppVersion(
            version: '1.0.0', buildNumber: 3, lowestVersion: 4);

        expect(actual.needsToForceUpdate(), isTrue);
      });
    });
  });
}
