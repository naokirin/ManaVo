import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/providers/audio_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeekBar extends ConsumerWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekBar({
    super.key,
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SliderThemeData sliderThemeData = SliderTheme.of(context).copyWith(
      trackHeight: 2.0,
    );

    return Stack(
      children: [
        // Base slider
        SliderTheme(
          data: sliderThemeData.copyWith(
            thumbShape: HiddenThumbComponentShape(),
            activeTrackColor: Colors.blue.shade100,
            inactiveTrackColor: Colors.grey.shade300,
          ),
          child: VisibleSeekBar(
              duration, position, bufferedPosition, onChanged, onChangeEnd),
        ),
        // Draggable slider
        SliderTheme(
          data: sliderThemeData.copyWith(
            inactiveTrackColor: Colors.transparent,
          ),
          child: DraggableSlider(
              duration, position, bufferedPosition, onChanged, onChangeEnd),
        ),
        Positioned(
          right: 16.0,
          bottom: 0.0,
          child: Text(
              RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                      .firstMatch("${duration - position}")
                      ?.group(1) ??
                  '${duration - position}',
              style: Theme.of(context).textTheme.caption),
        ),
      ],
    );
  }
}

class HiddenThumbComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.zero;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {}
}

class VisibleSeekBar extends ConsumerWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const VisibleSeekBar(this.duration, this.position, this.bufferedPosition,
      this.onChanged, this.onChangeEnd,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExcludeSemantics(
      child: Slider(
        min: 0.0,
        max: duration.inMilliseconds.toDouble(),
        value: min(bufferedPosition.inMilliseconds.toDouble(),
            duration.inMilliseconds.toDouble()),
        onChanged: (value) {
          ref.read(seekBarDragProvider.notifier).state = value;
          if (onChanged != null) {
            onChanged!(Duration(milliseconds: value.round()));
          }
        },
        onChangeEnd: (value) {
          if (onChangeEnd != null) {
            onChangeEnd!(Duration(milliseconds: value.round()));
          }
          ref.read(seekBarDragProvider.notifier).state = null;
        },
      ),
    );
  }
}

class DraggableSlider extends ConsumerWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const DraggableSlider(this.duration, this.position, this.bufferedPosition,
      this.onChanged, this.onChangeEnd,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double? dragValue = ref.watch(seekBarDragProvider);

    return Slider(
      min: 0.0,
      max: duration.inMilliseconds.toDouble(),
      value: min(dragValue ?? position.inMilliseconds.toDouble(),
          duration.inMilliseconds.toDouble()),
      onChanged: (value) {
        ref.read(seekBarDragProvider.notifier).state = value;
        if (onChanged != null) {
          onChanged!(Duration(milliseconds: value.round()));
        }
      },
      onChangeEnd: (value) {
        if (onChangeEnd != null) {
          onChangeEnd!(Duration(milliseconds: value.round()));
        }
        ref.read(seekBarDragProvider.notifier).state = null;
      },
    );
  }
}
