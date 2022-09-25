import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/pages/course/course_page.dart';
import 'package:flutter_just_audio_sample/pages/home/home_page.dart';
import 'package:flutter_just_audio_sample/pages/audio_player/audio_player_page.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(routes: <GoRoute>[
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
        path: '/course/:id',
        builder: (context, state) {
          return CoursePage(id: state.params['id'] ?? '');
        }),
    GoRoute(
        path: '/course/:course_id/player/:id',
        builder: (context, state) {
          final initialPosition = state.queryParams['initial_position'];
          return AudioPlayerPage(
              courseId: state.params['course_id'] ?? '',
              id: state.params['id'] ?? '',
              initialPosition: initialPosition != null
                  ? parseTime(initialPosition)
                  : Duration.zero);
        }),
  ]);

  @override
  Widget build(Object context) {
    return MaterialApp.router(
      title: 'ManaVo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Color(0xFFFEFEFE),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
              toolbarTextStyle: TextStyle(color: Colors.black, fontSize: 20),
              iconTheme: IconThemeData(color: Colors.black),
              actionsIconTheme: IconThemeData(color: Colors.black),
              elevation: 0),
          scaffoldBackgroundColor: const Color(0xFFFEFEFE)),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
