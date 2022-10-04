import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/providers/listened.dart';

class AudioPlayerHeader extends ConsumerWidget {
  final Course? course;
  final Lesson? lesson;

  const AudioPlayerHeader(
      {super.key, required this.course, required this.lesson});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listened = ref.watch(listenedProvider.notifier);
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(imagePath))),
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.0,
                  0.5,
                  1.0
                ],
                    colors: [
                  Colors.transparent,
                  Colors.black54,
                  Colors.transparent
                ])),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(course?.name ?? '',
                      style: const TextStyle(color: Colors.white)),
                  Text(lesson?.name ?? '',
                      style:
                          const TextStyle(fontSize: 20, color: Colors.white)),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(lesson?.description ?? '',
                          style: const TextStyle(color: Colors.white))),
                  FutureBuilder(
                      future:
                          listened.listenedCount(lessonId: lesson?.id ?? ''),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(height: 60),
                                const Text('これまでの再生回数',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(snapshot.data.toString(),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.white)),
                                      Container(width: 5),
                                      const Text('回',
                                          style: TextStyle(color: Colors.white))
                                    ])
                              ]);
                        }
                        return Container();
                      })
                ]))));
  }

  String get imagePath =>
      'assets/images/${course?.backgroundImage ?? 'green'}.jpg';
}
