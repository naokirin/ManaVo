import 'package:shared_preferences/shared_preferences.dart';

class Listened {
  SharedPreferences? _prefs;
  static final instance = Listened();

  static Future<Listened> getInstance() async {
    instance._prefs ??= await SharedPreferences.getInstance();
    return instance;
  }

  Future<void> saveListened(
      {required String courseId, required String lessonId}) async {
    final list = listened(courseId: courseId);
    if (!list.contains(lessonId)) {
      list.add(lessonId);
      await _prefs?.setStringList(_listenedKey(courseId: courseId), list);
    }
  }

  Future<void> incrementListenedCount({required String lessonId}) async {
    int count = listenedCount(lessonId: lessonId);
    count += 1;
    await _prefs?.setInt(_listenedCountKey(lessonId: lessonId), count);
  }

  List<String> listened({required String courseId}) {
    return _prefs?.getStringList(_listenedKey(courseId: courseId)) ?? [];
  }

  int listenedCount({required String lessonId}) {
    final count = _prefs?.getInt(_listenedCountKey(lessonId: lessonId));
    return count ?? 0;
  }

  String _listenedKey({required String courseId}) => 'listened_$courseId';
  String _listenedCountKey({required String lessonId}) =>
      'listened_count_$lessonId';
}
