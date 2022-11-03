import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/models/app_info.dart';

void main() {
  group('AppInfo Test', () {
    test('fromJson', () {
      var actual = AppInfo.fromJson({
        'lowest_version': 3,
        'course_list_path': 'https://example.com/course_list.json'
      });

      expect(actual.lowestVersion, 3);
      expect(actual.courseListPath, 'https://example.com/course_list.json');
    });
  });
}
