import 'dart:io';

import 'package:mp3_info/mp3_info.dart';

void main(List<String> args) {
  final dir = Directory(args[0]);
  final fileList = dir.listSync().toList();
  Duration length = Duration.zero;
  for (var file
      in fileList.whereType<File>().where((f) => f.path.endsWith('.mp3'))) {
    length += mp3Duration(path: file.path);
  }
  print('count: ${fileList.length}');
  print('length: $length');
}

Duration mp3Duration({required String path}) {
  final bytes = File(path).readAsBytesSync();
  final mp3 = MP3Processor.fromBytes(bytes);
  final duration = mp3.duration;
  print('${path.split('/').last}: $duration');
  return duration;
}
