import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manavo/pages/my_app.dart';
import 'package:manavo/services/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  String flavor = const String.fromEnvironment('FLAVOR');
  flavor = flavor.isEmpty ? 'development' : flavor;
  await dotenv.load(fileName: "res/.env.$flavor");

  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();

  runApp(const ProviderScope(child: MyApp()));
}
