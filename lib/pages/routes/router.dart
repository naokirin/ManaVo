import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manavo/models/app_version.dart';
import 'package:manavo/pages/audio_player/audio_player_page.dart';
import 'package:manavo/pages/course/course_page.dart';
import 'package:manavo/pages/home/home_page.dart';
import 'package:manavo/pages/routes/router_observer.dart';
import 'package:go_router/go_router.dart';

GoRouter router(AppVersion appVersion) {
  return GoRouter(routes: <GoRoute>[
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/course/:id',
      builder: (context, state) {
        return CoursePage(id: state.pathParameters['id'] ?? '');
      },
    ),
    GoRoute(
        path: '/player/:course_id/:id',
        builder: (context, state) {
          final initialPosition = state.uri.queryParameters['initial_position'];
          return AudioPlayerPage(
              courseId: state.pathParameters['course_id'] ?? '',
              initialId: state.pathParameters['id'] ?? '',
              initialPosition: initialPosition != null
                  ? parseTime(initialPosition)
                  : Duration.zero);
        }),
    GoRoute(
        path: '/license_page',
        builder: (context, state) {
          return LicensePage(
              applicationName: dotenv.env['APP_NAME']!,
              applicationVersion: appVersion.version,
              applicationIcon: const Image(
                  image: AssetImage('assets/icons/ManaVo_icon.png'),
                  width: 60,
                  height: 60));
        })
  ], observers: [
    RouterObserver()
  ]);
}
