import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:go_router/go_router.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('')) // TODO: image path
          ),
          child: ListTile(
            title: Text(course.name, style: const TextStyle(fontSize: 20)),
            onTap: () {
              GoRouter.of(context).push("/course/${course.id}");
            })));
  }
}
