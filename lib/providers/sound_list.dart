import 'dart:convert';
import 'package:flutter_just_audio_sample/models/sound_list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_just_audio_sample/models/sound.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final soundListProvider =
    FutureProvider.family<List<Sound>, String>((ref, url) async {
  return _fetchSounds(url).then((value) => value.sounds);
});

Future<SoundList> _fetchSounds(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return SoundList.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load courses');
  }
}
