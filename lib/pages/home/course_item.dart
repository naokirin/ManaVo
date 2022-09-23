import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:go_router/go_router.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 140,
        child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(backgroundImagePath))),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [
                          0.0,
                          0.15,
                          0.7
                        ],
                            colors: [
                          Colors.black87,
                          Colors.black54,
                          Colors.black12
                        ])),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        title: Text(course.name,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white)),
                        onTap: () => goCoursePage(context))))));
  }

  void goCoursePage(BuildContext context) {
    GoRouter.of(context).push(coursePath);
  }

  String get backgroundImagePath =>
      'assets/images/${course.backgroundImage ?? 'green'}.jpg';

  String get coursePath => "/course/${course.id}";
}
