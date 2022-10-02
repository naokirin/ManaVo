import 'package:duration/duration.dart';
import 'package:manavo/pages/audio_player/audio_player_page.dart';
import 'package:manavo/pages/course/course_page.dart';
import 'package:manavo/pages/home/home_page.dart';
import 'package:manavo/pages/routes/router_observer.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: <GoRoute>[
  GoRoute(path: '/', builder: (context, state) => const HomePage()),
  GoRoute(
    path: '/course/:id',
    builder: (context, state) {
      return CoursePage(id: state.params['id'] ?? '');
    },
  ),
  GoRoute(
      path: '/player/:course_id/:id',
      builder: (context, state) {
        final initialPosition = state.queryParams['initial_position'];
        return AudioPlayerPage(
            courseId: state.params['course_id'] ?? '',
            id: state.params['id'] ?? '',
            initialPosition: initialPosition != null
                ? parseTime(initialPosition)
                : Duration.zero);
      }),
], observers: [
  RouterObserver()
]);
