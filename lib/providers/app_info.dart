import 'dart:async';

import 'package:manavo/services/app/info.dart';
import 'package:manavo/services/network/app_info.dart';
import 'package:manavo/models/app_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final forceUpdateProvider = FutureProvider<bool>((ref) {
  final buildNumber = ref.watch(_buildNumberProvider);
  final appInfo = ref.watch(appInfoProvider);
  if (appInfo.value?.lowestVersion == null || buildNumber.value == null) {
    return false;
  }
  return appInfo.value!.lowestVersion > buildNumber.value!;
});

final _buildNumberProvider = FutureProvider<int>(
    (ref) async => await Info.getInstance().currentBuildNumber());

final appInfoProvider = FutureProvider<AppInfo>((ref) async {
  ref.watch(_lastModifiedAppInfoProvider);
  return await fetchAppInfo();
});

// check updates per 30 minutes
final _lastModifiedAppInfoProvider = StateProvider<String?>((ref) => null);

// convert BroadcastStream for hot reloading
final _ticker =
    Stream.periodic(const Duration(minutes: 30)).asBroadcastStream();
final List<StreamSubscription> _tickerSubscriptions = [];
void startCheckingToUpdateAppInfo(Reader read) {
  for (var subscription in _tickerSubscriptions) {
    subscription.cancel();
  }
  _updateLastModified(read);
  _tickerSubscriptions.add(_ticker.listen((event) async {
    await _updateLastModified(read);
  }));
}

Future<void> _updateLastModified(Reader read) async {
  final lastModified = await fetchLastModifiedAppInfo();
  final notifier = read(_lastModifiedAppInfoProvider.notifier);
  final previousLastModified = notifier.state;
  if (lastModified != previousLastModified) {
    notifier.state = lastModified;
  }
}
