import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/course.dart';
import 'package:flutter_just_audio_sample/models/lesson.dart';

class AudioPlayerHeader extends StatelessWidget {
  final Course? course;
  final Lesson? lesson;

  const AudioPlayerHeader(
      {super.key, required this.course, required this.lesson});

  @override
  Widget build(BuildContext context) {
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
                          style: const TextStyle(color: Colors.white)))
                ]))));
  }

  String get imagePath =>
      'assets/images/${course?.backgroundImage ?? 'green'}.jpg';
}
