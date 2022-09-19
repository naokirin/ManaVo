import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_just_audio_sample/pages/course/selection_item.dart';
import 'package:flutter_just_audio_sample/providers/sound.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoursePage extends ConsumerWidget {
  final Course course;

  const CoursePage({super.key, required this.course});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soundList = ref.read(soundProvider(course.sound_url));
    return Scaffold(
        appBar: AppBar(title: Text(course.name)),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text(course.description)),
          Flexible(
              child: soundList.when(
                  data: (list) => ListView(
                      children: list
                          .map((sound) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: SelectionItem(sound: sound)))
                          .toList()),
                  loading: () => const CircularProgressIndicator(),
                  error: (error, _) => Text(error.toString())))
        ]));
  }
}
