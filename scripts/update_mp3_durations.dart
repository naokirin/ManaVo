import 'dart:io';
import 'dart:convert';

import 'package:mp3_info/mp3_info.dart';

void main(List<String> args) {
  final dir = Directory(args[0]);
  final lessonsPath = args[1];
  final settings = readJson(lessonsPath);

  final fileList = dir.listSync().toList();
  final audios = fileList
      .whereType<File>()
      .where((f) => f.path.endsWith('.mp3'))
      .map((f) => Audio(
          audioFileName: f.path.split('/').last,
          duration: mp3Duration(path: f.path)))
      .toList();
  final length = audios.fold(Duration.zero, (p, audio) => p + audio.duration);
  print('count: ${fileList.length}');
  print('length: $length');

  final List<Lesson> lessons = settings['lessons']
      ?.map((setting) => Lesson.fromMap(setting))
      .toList()
      .cast<Lesson>();
  audios.forEach((audio) => updateDuration(audio, (lessons.cast<Lesson>())));
  writeJson(lessons.map((lesson) => lesson.toMap()).toList(), lessonsPath);
}

class Audio {
  final String audioFileName;
  final Duration duration;

  Audio({required this.audioFileName, required this.duration});
}

class Lesson {
  final String id;
  final String name;
  final String length;
  final String description;
  final String url;
  final String last_updated_date;

  Lesson(
      {required this.id,
      required this.name,
      required this.length,
      required this.description,
      required this.url,
      required this.last_updated_date});

  factory Lesson.fromMap(Map<String, dynamic> map) => Lesson(
      id: map['id'],
      name: map['name'],
      length: map['length'],
      description: map['description'],
      url: map['url'],
      last_updated_date: map['last_updated_date']);

  Lesson copyWith(
          {String? id,
          String? name,
          String? length,
          String? description,
          String? url,
          String? last_updated_date}) =>
      Lesson(
          id: id ?? this.id,
          name: name ?? this.name,
          length: length ?? this.length,
          description: description ?? this.description,
          url: url ?? this.url,
          last_updated_date: last_updated_date ?? this.last_updated_date);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'length': length,
        'description': description,
        'url': url,
        'last_updated_date': last_updated_date
      };
}

Duration mp3Duration({required String path}) {
  final bytes = File(path).readAsBytesSync();
  final mp3 = MP3Processor.fromBytes(bytes);
  final duration = mp3.duration;
  print('${path.split('/').last}: $duration');
  return duration;
}

void updateDuration(Audio audio, List<Lesson> lessons) {
  lessons.asMap().forEach((i, lesson) {
    final url = lesson.url;
    if (url.endsWith(audio.audioFileName)) {
      lessons[i] = lessons[i].copyWith(
          length:
              '${audio.duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${audio.duration.inSeconds.remainder(60).toString().padLeft(2, '0')}');
    }
  });
}

dynamic readJson(String path) {
  return jsonDecode(File(path).readAsStringSync());
}

Future<void> writeJson(List<Map<String, dynamic>> data, String path) async {
  final indent = ' ' * 4;
  final encoder = JsonEncoder.withIndent(indent);
  final text = encoder.convert({'lessons': data});
  final file = File(path);
  await file.writeAsString(text);
}

Map<Symbol, dynamic> symbolizeKeys(Map<String, dynamic> map) {
  return map.map((k, v) => MapEntry(Symbol(k), v));
}
