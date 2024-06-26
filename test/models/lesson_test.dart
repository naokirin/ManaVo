import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/models/lesson.dart';

void main() {
  group('Lesson Test', () {
    test('fromJson', () {
      var actual = Lesson.fromJson({
        'id': 'lesson_id',
        'name': 'lesson_name',
        'description': 'lesson_description',
        'length': '10:45',
        'body': 'test body',
        'url': 'https://example.com',
        'last_updated_date': '2022/10/01'
      });

      expect(actual.id, 'lesson_id');
      expect(actual.name, 'lesson_name');
      expect(actual.description, 'lesson_description');
      expect(actual.length, '10:45');
      expect(actual.url, 'https://example.com');
    });
  });
}
