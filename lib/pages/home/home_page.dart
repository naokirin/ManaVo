import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sample just_audio',
        home: Scaffold(
            appBar: AppBar(title: const Text('Sample just_audio')),
            body: Center(
                child: MaterialButton(
              child: const Text('Player'),
              onPressed: () {
                GoRouter.of(context).push('/player/1');
              },
            ))));
  }
}
