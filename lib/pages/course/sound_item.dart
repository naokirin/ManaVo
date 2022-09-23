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
            leading: const Icon(Icons.check_circle,
                color: Colors.green, size: 24.0), // TODO: Set if done
            title: Text(sound.name),
            subtitle: Text(sound.length),
            onTap: () {
              GoRouter.of(context)
                  .push("/course/$courseId/player/${sound.id}");
            }));
  }
}
