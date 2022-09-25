// This is a minimal example demonstrating a play/pause button and a seek bar.
// More advanced examples demonstrating other features can be found in the same
// directory as this example in the GitHub repository.

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_just_audio_sample/pages/my_app.dart';
import 'package:flutter_just_audio_sample/services/audio/service_locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  String flavor = const String.fromEnvironment('FLAVOR');
  flavor = flavor.isEmpty ? 'development' : flavor;
  await dotenv.load(fileName: "res/.env.$flavor");

  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();

  runApp(ProviderScope(child: MyApp()));
}
