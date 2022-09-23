import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/pages/home/course_item.dart';
import 'package:flutter_just_audio_sample/providers/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseList = ref.watch(courseProvider);
    return MaterialApp(
        title: '学習コース',
        home: Scaffold(
            appBar: AppBar(title: const Text('学習コース')),
            body: courseList.when(
                data: (list) => Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ListView(
                        children: list
                            .map((course) => Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 10.0, right: 10.0),
                                child: CourseItem(course: course)))
                            .toList())),
                loading: () => const CircularProgressIndicator(),
                error: (error, _) => Text(error.toString()))));
  }
}
