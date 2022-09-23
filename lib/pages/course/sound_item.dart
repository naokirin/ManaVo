import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/models/sound.dart';
import 'package:go_router/go_router.dart';

class SoundItem extends StatelessWidget {
  final String courseId;
  final Sound sound;

  const SoundItem({super.key, required this.courseId, required this.sound});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: ListTile(
            tileColor: Colors.blueGrey.shade50,
            trailing: SizedBox(
                width: 45.0,
                height: 80.0,
                child: Column(children: [
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.check_circle,
                          color: Colors.green,
                          size: 24.0)), // TODO: Set if done
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(sound.length,
                              style: const TextStyle(fontSize: 15, color: Colors.black54))))
                ])),
            title: SizedBox(
              height: 80.0,
              child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(sound.name)),
            ),
            onTap: () => goPlayerPage(context)));
  }

  void goPlayerPage(BuildContext context) {
    GoRouter.of(context).push(playerPath);
  }

  String get playerPath => "/course/$courseId/player/${sound.id}";
}
