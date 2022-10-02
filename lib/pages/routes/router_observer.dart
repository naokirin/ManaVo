import 'package:flutter/material.dart';
import 'package:manavo/utils/global/snack_bar.dart';

class RouterObserver extends NavigatorObserver {
  RouterObserver();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      _changeRoute();

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      _changeRoute();

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      _changeRoute();

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) =>
      _changeRoute();

  @override
  void didStartUserGesture(
          Route<dynamic> route, Route<dynamic>? previousRoute) =>
      _changeRoute();

  void _changeRoute() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      removeCurrentSnackBar();
    });
  }
}
