import 'package:flutter/material.dart';
import 'package:manavo/actions/audio_player_action.dart';
import 'package:manavo/models/audio_player_state.dart';
import 'package:manavo/pages/audio_player/dialog.dart';
import 'package:manavo/providers/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Displays the play/pause button and volume/speed sliders.
class ControlButtons extends ConsumerWidget {
  const ControlButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(audioPlayerProvider.notifier);
    final action = ref.read(audioPlayerActionProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opens volume slider dialog
        IconButton(
          icon: const Icon(Icons.volume_up),
          onPressed: () {
            showSliderDialog(
              context: context,
              title: "ボリューム",
              divisions: 10,
              min: 0.0,
              max: 1.0,
              value: player.volume,
              stream:
                  player.playerStateStream.map<double>((state) => state.volume),
              onChanged: action.setVolume,
            );
          },
        ),

        StreamBuilder<AudioPlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.audioProcessingState;
            final playing = playerState?.playing;
            if (processingState == AudioProcessingState.loading ||
                processingState == AudioProcessingState.buffering) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 64.0,
                height: 64.0,
                child: const SizedBox(
                    width: 200,
                    height: 200,
                    child: Center(child: CircularProgressIndicator())),
              );
            } else if (playing != true) {
              return IconButton(
                icon: const Icon(Icons.play_arrow),
                iconSize: 64.0,
                onPressed: action.play,
              );
            } else if (processingState != AudioProcessingState.completed) {
              return IconButton(
                icon: const Icon(Icons.pause),
                iconSize: 64.0,
                onPressed: action.pause,
              );
            } else {
              return IconButton(
                icon: const Icon(Icons.replay),
                iconSize: 64.0,
                onPressed: () => action.seek(Duration.zero),
              );
            }
          },
        ),
        // Opens speed slider dialog
        StreamBuilder<AudioPlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) => IconButton(
            icon: Text("${snapshot.data?.speed.toStringAsFixed(1)}x",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              showSliderDialog(
                context: context,
                title: "再生スピード",
                divisions: 10,
                min: 0.5,
                max: 1.5,
                value: player.speed,
                stream: player.playerStateStream
                    .map<double>((state) => state.speed),
                onChanged: action.setSpeed,
              );
            },
          ),
        ),
      ],
    );
  }
}
