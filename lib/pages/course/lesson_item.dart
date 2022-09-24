import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/lesson.dart';
import 'package:go_router/go_router.dart';

class LessonItem extends StatelessWidget {
  final String courseId;
  final Lesson lesson;

  const LessonItem({super.key, required this.courseId, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: ListTile(
            tileColor: Colors.blueGrey.shade50,
            trailing: SizedBox(
                width: 45.0,
                height: 80.0,
                child: Column(children: [
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.check_circle,
                          color: Colors.green,
                          size: 24.0)), // TODO: Set if done
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(lesson.length,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black54))))
                ])),
            title: SizedBox(
              height: 80.0,
              child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(lesson.name)),
            ),
            onTap: () => goPlayerPage(context)));
  }

  void goPlayerPage(BuildContext context) {
    GoRouter.of(context).push(playerPath);
  }

  String get playerPath => "/course/$courseId/player/${lesson.id}";
}
