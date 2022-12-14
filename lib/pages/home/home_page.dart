import 'package:flutter/material.dart';
import 'package:manavo/components/app_background.dart';
import 'package:manavo/components/app_bar/app_bar_popup_menu_button.dart';
import 'package:manavo/components/networks/http_error_snack_bar.dart';
import 'package:manavo/pages/home/course_item.dart';
import 'package:manavo/providers/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseList = ref.watch(courseProvider);
    return Scaffold(
        appBar: AppBar(
            title: const Text('学習コース 一覧'),
            backgroundColor: const Color.fromARGB(125, 56, 182, 255),
            actions: const [AppBarPopupMenuButton()]),
        body: Stack(children: [
          const AppBackground(),
          courseList.when(
              data: (list) => Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListView(
                      children: list
                          .map((course) => Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 10.0, right: 10.0),
                              child: CourseItem(course: course)))
                          .toList())),
              loading: () => const Center(
                  child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator())),
              error: (error, _) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  HttpErrorSnackBar.showHttpErrorSnackBar(
                      error: error, onRetry: () => ref.refresh(courseProvider));
                });
                return Container();
              })
        ]));
  }
}
