import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manavo/actions/audio_player_action.dart';
import 'package:manavo/components/app_background.dart';
import 'package:manavo/components/networks/http_error_snack_bar.dart';
import 'package:manavo/pages/course/lesson_item.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/providers/lesson_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/utils/progress_waiter.dart';

class CoursePage extends ConsumerWidget {
  final String id;

  const CoursePage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioPlayerAction = ref.read(audioPlayerActionProvider);
    audioPlayerAction.stop();
    final course =
        ref.read(courseProvider).value?.firstWhere((course) => course.id == id);
    final lessonList = ref.watch(lessonListProvider(id));
    return Scaffold(
        appBar: AppBar(
            title: Text(course?.name ?? ''),
            backgroundColor: const Color.fromARGB(125, 56, 182, 255),
            actions: [
              IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () => ProgressWaiter.get('default').onProgress(
                      () => GoRouter.of(context).push('/license_page'),
                      delay: const Duration(seconds: 1)))
            ]),
        body: Stack(children: [
          const AppBackground(),
          Column(children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 20, left: 20, right: 20),
                child: Text(course?.description ?? '')),
            Flexible(
                child: lessonList.when(
                    data: (list) => ListView(
                        children: list
                            .map((lesson) => Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 10, left: 10, right: 10),
                                child:
                                    LessonItem(courseId: id, lesson: lesson)))
                            .toList()),
                    loading: () => const SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(child: CircularProgressIndicator())),
                    error: (error, _) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        HttpErrorSnackBar.showHttpErrorSnackBar(
                            error: error,
                            onRetry: () {
                              ref.refresh(courseProvider);
                              ref.refresh(lessonListProvider(id));
                            });
                      });
                      return Container();
                    }))
          ])
        ]));
  }
}
