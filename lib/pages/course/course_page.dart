import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/pages/course/sound_item.dart';
import 'package:flutter_just_audio_sample/providers/course.dart';
import 'package:flutter_just_audio_sample/providers/sound_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoursePage extends ConsumerWidget {
  final String id;

  const CoursePage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.read(courseProvider).value;
    final course = c?.firstWhere((item) => item.id == id);
    final soundList = ref.watch(soundListProvider(course?.soundListUrl ?? ''));
    return Scaffold(
        appBar: AppBar(title: Text(course?.name ?? '')),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text(course?.description ?? '')),
          Flexible(
              child: soundList.when(
                  data: (list) => ListView(
                      children: list
                          .map((sound) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: SoundItem(courseId: id, sound: sound)))
                          .toList()),
                  loading: () => const CircularProgressIndicator(),
                  error: (error, _) => Text(error.toString())))
        ]));
  }
}
