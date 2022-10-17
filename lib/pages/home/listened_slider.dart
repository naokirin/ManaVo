import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/models/course.dart';
import 'package:manavo/providers/listened.dart';

class ListenedSlider extends ConsumerWidget {
  final Course course;

  const ListenedSlider({super.key, required this.course});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(listenedProvider);
    final listened = ref.read(listenedProvider.notifier);
    return FutureBuilder(
        future: listened.listened(courseId: course.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final count = snapshot.data?.length ?? 0;
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${(count / course.lessons * 100).round()}%完了しています',
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white)),
                  const SizedBox(height: 4.0),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          disabledActiveTrackColor: Colors.blue[100],
                          disabledInactiveTrackColor: Colors.blueGrey[100],
                          trackHeight: 1,
                          overlayShape: SliderComponentShape.noOverlay,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0, disabledThumbRadius: 0)),
                      child: Slider(
                        min: 0,
                        max: 1,
                        value: count / course.lessons,
                        onChanged: null,
                      ))
                ]);
          } else {
            return Container();
          }
        });
  }
}
