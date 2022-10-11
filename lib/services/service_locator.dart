import 'package:audio_service/audio_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/services/listened/listened.dart';

final GetIt _getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  _getIt.registerSingleton<AudioServiceHandler>(await _initeAudioService());
  _getIt.registerSingleton<Listened>(await _initListenedService());
}

Future<AudioServiceHandler> _initeAudioService() async {
  return await AudioService.init(
      builder: () => AudioServiceHandler(),
      config: AudioServiceConfig(
          androidNotificationChannelId: 'com.naokirin.manavo.audio',
          androidNotificationChannelName: '${dotenv.env['APP_NAME']} Audio',
          androidNotificationOngoing: false,
          androidStopForegroundOnPause: true));
}

Future<Listened> _initListenedService() async {
  return await Listened.getInstance();
}
