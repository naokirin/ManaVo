import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/models/course_list.dart';

void main() {
  group('CourseList Test', () {
    test('fromJson', () {
      var courseList = CourseList.fromJson({
        'courses': [
          {
            'id': 'course_id',
            'name': 'course_name',
            'description': 'course_description',
            'lessons': 3,
            'length': '10:45',
            'lesson_list_url': 'https://example.com',
            'background_image': 'background_image.jpg'
          }
        ]
      });

      var actual = courseList.courses.first;
      expect(actual.id, 'course_id');
      expect(actual.name, 'course_name');
      expect(actual.description, 'course_description');
      expect(actual.lessons, 3);
      expect(actual.length, '10:45');
      expect(actual.lessonListUrl, 'https://example.com');
      expect(actual.backgroundImage, 'background_image.jpg');
    });
  });
}
