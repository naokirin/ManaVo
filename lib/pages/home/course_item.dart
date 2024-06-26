import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/pages/home/listened_slider.dart';
import 'package:manavo/utils/global/scaffold_key.dart';
import 'package:go_router/go_router.dart';
import 'package:manavo/utils/progress_waiter.dart';

class CourseItem extends ConsumerWidget {
  final Course course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 160,
        child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(backgroundImagePath))),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [
                          0.0,
                          0.15,
                          0.7
                        ],
                            colors: [
                          Colors.black87,
                          Colors.black54,
                          Colors.black45
                        ])),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        title: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(course.name,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                        subtitle: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(children: [
                              Text(course.description,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white)),
                              ListenedSlider(course: course),
                              Expanded(
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 28.0),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: Row(children: [
                                              const Icon(Icons.list,
                                                  color: Colors.white,
                                                  size: 18),
                                              const SizedBox(width: 4.0),
                                              Text(course.lessons.toString(),
                                                  style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white))
                                            ])),
                                            Expanded(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                  const Icon(Icons.schedule,
                                                      color: Colors.white,
                                                      size: 14),
                                                  const SizedBox(width: 4.0),
                                                  Text(course.length,
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white))
                                                ]))
                                          ])))
                            ])),
                        onTap: () => ProgressWaiter.get('default').onProgress(
                            () => goCoursePage(context),
                            delay: const Duration(milliseconds: 800)))))));
  }

  void goCoursePage(BuildContext context) {
    GoRouter.of(context).push(coursePath);
    scaffoldKey.currentState!.removeCurrentSnackBar();
  }

  String get backgroundImagePath =>
      'assets/images/${course.backgroundImage ?? 'green'}.jpg';

  String get coursePath => "/course/${course.id}";
}
