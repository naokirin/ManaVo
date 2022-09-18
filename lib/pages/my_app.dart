import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/pages/my_audio_player/my_audio_player.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return MaterialApp(
        title: 'Sample just_audio',
        home: Scaffold(
            appBar: AppBar(title: const Text('Sample just_audio')),
            body: const Center(
              child: MyAudioPlayer(),
            )));
  }
}
