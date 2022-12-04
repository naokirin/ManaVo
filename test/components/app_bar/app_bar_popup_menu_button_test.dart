import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:manavo/components/app_bar/app_bar_popup_menu_button.dart';

void main() {
  testWidgets('AppBarPopupMenuButton Test', (WidgetTester tester) async {
    final router = GoRouter(routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (context, state) => Scaffold(
              appBar: AppBar(
                  title: const Text(''),
                  actions: const [AppBarPopupMenuButton()]),
              body: Container())),
    ]);
    await tester.pumpWidget(MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate));

    await tester.tap(find.byType(PopupMenuButton<String>));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('プライバシーポリシー'), findsOneWidget);
    expect(find.text('ライセンス'), findsOneWidget);
  });
}
