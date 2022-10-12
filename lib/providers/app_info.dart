import 'dart:async';

import 'package:manavo/models/app_version.dart';
import 'package:manavo/services/app/info.dart';
import 'package:manavo/services/network/app_info.dart';
import 'package:manavo/models/app_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appVersionProvider = FutureProvider<AppVersion>((ref) async {
  final info = await ref.watch(_infoProvider.future);
  final appInfo = await ref.watch(appInfoProvider.future);
  return AppVersion(
      version: info.version,
      buildNumber: info.buildNumber,
      lowestVersion: appInfo.lowestVersion);
});

final _infoProvider =
    FutureProvider<Info>((ref) async => await Info.getInstance());

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
