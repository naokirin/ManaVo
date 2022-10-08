import 'package:flutter/material.dart';
import 'package:manavo/models/lesson.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/providers/listened.dart';

class PlayCount extends ConsumerWidget {
  final Lesson? lesson;
  const PlayCount(this.lesson, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listened = ref.watch(listenedProvider.notifier);
    return FutureBuilder(
        future: listened.listenedCount(lessonId: lesson?.id ?? ''),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 40),
                  const Text('これまでの再生回数',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(snapshot.data.toString(),
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white)),
                        Container(width: 5),
                        const Text('回', style: TextStyle(color: Colors.white))
                      ])
                ]);
          }
          return Container();
        });
  }
}
