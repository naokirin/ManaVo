import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_just_audio_sample/pages/course/selection_item.dart';

class CoursePage extends StatelessWidget {
  final Course course;

  const CoursePage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var sound in course.sounds) {
      widgets.add(Padding(
          padding: const EdgeInsets.all(10),
          child: SelectionItem(sound: sound)));
    }

    return Scaffold(
            appBar: AppBar(title: Text(course.name)),
            body: Column(children: [
              Padding(padding: const EdgeInsets.all(20), child: Text(course.description)),
              Flexible(child: ListView(children: widgets))
            ]));
  }
}
