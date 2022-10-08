import 'package:flutter/material.dart';
import 'package:manavo/models/lesson.dart';

class LastUpdatedDate extends StatelessWidget {
  final Lesson? lesson;
  const LastUpdatedDate(this.lesson, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 16),
          const Text('最終更新日: ',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white)),
          Text(lesson?.lastUpdatedDate ?? '不明',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 14, color: Colors.white)),
        ])
    );
  }
}
