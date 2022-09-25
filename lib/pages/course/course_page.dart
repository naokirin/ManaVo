import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/pages/course/lesson_item.dart';
import 'package:flutter_just_audio_sample/providers/audio_player.dart';
import 'package:flutter_just_audio_sample/providers/course.dart';
import 'package:flutter_just_audio_sample/providers/lesson_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoursePage extends ConsumerWidget {
  final String id;

  const CoursePage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(audioPlayerProvider.notifier).stop();
    final c = ref.read(courseProvider).value;
    final course = c?.firstWhere((item) => item.id == id);
    final lessonList =
        ref.watch(lessonListProvider(course?.lessonListUrl ?? ''));
    return Scaffold(
        appBar: AppBar(title: Text(course?.name ?? '')),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text(course?.description ?? '')),
          Flexible(
              child: lessonList.when(
                  data: (list) => ListView(
                      children: list
                          .map((lesson) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: LessonItem(courseId: id, lesson: lesson)))
                          .toList()),
                  loading: () => const CircularProgressIndicator(),
                  error: (error, _) => Text(error.toString())))
        ]));
  }
}
