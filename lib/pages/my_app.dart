import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/pages/routes/router.dart';
import 'package:manavo/pages/version_update/version_update_page.dart';
import 'package:manavo/providers/app_info.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/utils/global/scaffold_key.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(Object context, WidgetRef ref) {
    startCheckingToUpdateAppInfo(ref.read);
    startCheckingToUpdateCourses(ref.read);
    final forceUpdate = ref.watch(forceUpdateProvider);
    return forceUpdate.when(
        data: ((data) {
          if (!data) {
            return MaterialApp.router(
              scaffoldMessengerKey: scaffoldKey,
              title: 'ManaVo',
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.transparent,
                      titleTextStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                      toolbarTextStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                      iconTheme: IconThemeData(color: Colors.black),
                      actionsIconTheme: IconThemeData(color: Colors.black),
                      elevation: 0),
                  scaffoldBackgroundColor: const Color(0xFFFEFEFE)),
              routeInformationProvider: router.routeInformationProvider,
              routeInformationParser: router.routeInformationParser,
              routerDelegate: router.routerDelegate,
            );
          } else {
            return const VersionUpdatePage();
          }
        }),
        error: (Object error, StackTrace? stackTrace) => Container(),
        loading: () => const CircularProgressIndicator());
  }
}
