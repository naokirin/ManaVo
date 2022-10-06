import 'package:flutter/material.dart';
import 'package:manavo/pages/routes/router.dart';
import 'package:manavo/utils/global/scaffold_key.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldKey,
      title: 'ManaVo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
              toolbarTextStyle: TextStyle(color: Colors.black, fontSize: 20),
              iconTheme: IconThemeData(color: Colors.black),
              actionsIconTheme: IconThemeData(color: Colors.black),
              elevation: 0),
          scaffoldBackgroundColor: const Color(0xFFFEFEFE)),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
