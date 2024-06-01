import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/models/lesson_list.dart';

void main() {
  group('LessonList Test', () {
    test('fromJson', () {
      var lessonList = LessonList.fromJson({
        'lessons': [
          {
            'id': 'lesson_id',
            'name': 'lesson_name',
            'description': 'lesson_description',
            'body': 'test body',
            'length': '10:45',
            'url': 'https://example.com',
            'last_updated_date': '2022/10/01'
          }
        ]
      });

      var actual = lessonList.lessons.first;
      expect(actual.id, 'lesson_id');
      expect(actual.name, 'lesson_name');
      expect(actual.description, 'lesson_description');
      expect(actual.length, '10:45');
      expect(actual.url, 'https://example.com');
    });
  });
}
