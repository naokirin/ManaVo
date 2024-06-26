import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/pages/audio_player/last_updated_date.dart';
import 'package:manavo/pages/audio_player/play_count.dart';

class AudioPlayerHeader extends ConsumerWidget {
  final Course? course;
  final Lesson? lesson;

  const AudioPlayerHeader(
      {super.key, required this.course, required this.lesson});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(lesson?.name ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white))),
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(lesson?.description ?? '',
                          style: const TextStyle(color: Colors.white))),
                  LastUpdatedDate(lesson),
                  PlayCount(lesson),
                  Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: FilledButton(
                          onPressed: () => _showSimpleDialog(context, lesson),
                          child: const Text('本文を表示')))
                ]))));
  }

  String get imagePath =>
      'assets/images/${course?.backgroundImage ?? 'green'}.jpg';
}

void _showSimpleDialog(BuildContext context, Lesson? lesson) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
            title: const Text("本文"),
            insetPadding: const EdgeInsets.all(20.0),
            children: [
              Column(children: [
                const Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(lesson?.body ?? ''),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 1.0,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: FilledButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('閉じる'),
                      ),
                    )),
              ])
            ]);
      });
}
