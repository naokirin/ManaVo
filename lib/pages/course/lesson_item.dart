import 'package:flutter/material.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/providers/listened.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manavo/utils/progress_waiter.dart';

class LessonItem extends ConsumerWidget {
  final String courseId;
  final Lesson lesson;

  const LessonItem({super.key, required this.courseId, required this.lesson});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listened = ref.watch(listenedProvider.notifier);
    return Card(
        elevation: 10,
        child: ListTile(
            tileColor: Colors.blueGrey.shade50,
            trailing: SizedBox(
                width: 45.0,
                height: 80.0,
                child: Column(children: [
                  FutureBuilder(
                      future: listened.listened(courseId: courseId),
                      builder: (context, snapshot) {
                        if (snapshot.hasData &&
                            (snapshot.data?.contains(lesson.id) ?? false)) {
                          return const Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.check_circle,
                                  color: Colors.green, size: 24.0));
                        }
                        return Container(height: 24.0);
                      }),
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
            onTap: () => ProgressWaiter.get('default').onProgress(
                () => goPlayerPage(context),
                delay: const Duration(seconds: 2))));
  }

  void goPlayerPage(BuildContext context) {
    GoRouter.of(context).push(playerPath);
  }

  String get playerPath => "/player/$courseId/${lesson.id}";
}
