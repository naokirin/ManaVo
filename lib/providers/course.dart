import 'dart:async';

import 'package:manavo/providers/app_info.dart';
import 'package:manavo/services/network/course.dart';
import 'package:manavo/models/course.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final courseProvider = FutureProvider<List<Course>>((ref) async {
  final appInfo = ref.watch(appInfoProvider);
  if (appInfo.value == null) return [];

  ref.watch(_lastModifiedCoursesProvider);
  return await fetchCourses(ref.read);
});

// check updates per 15 minutes
final _lastModifiedCoursesProvider = StateProvider<String?>((ref) => null);

// convert BroadcastStream for hot reloading
final _ticker =
    Stream.periodic(const Duration(minutes: 15)).asBroadcastStream();
final List<StreamSubscription> _tickerSubscriptions = [];
Future<void> startCheckingToUpdateCourses(Reader read) async {
  for (var subscription in _tickerSubscriptions) {
    subscription.cancel();
  }
  await _updateLastModified(read);
  _tickerSubscriptions.add(_ticker.listen((event) async {
    await _updateLastModified(read);
  }));
}

Future<void> _updateLastModified(Reader read) async {
  final appInfo = read(appInfoProvider);
  if (appInfo.value == null) return;

  final lastModified = await fetchLastModifiedCourses(read);
  final notifier = read(_lastModifiedCoursesProvider.notifier);
  final previousLastModified = notifier.state;
  if (lastModified != previousLastModified) {
    notifier.state = lastModified;
  }
}
