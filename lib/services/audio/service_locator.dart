import 'package:audio_service/audio_service.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/services/listened/listened.dart';

GetIt getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  getIt.registerSingleton<AudioServiceHandler>(await _initeAudioService());
  getIt.registerSingleton<Listened>(await _initListenedService());
}

Future<AudioServiceHandler> _initeAudioService() async {
  return await AudioService.init(
      builder: () => AudioServiceHandler(),
      config: const AudioServiceConfig(
          androidNotificationChannelId: 'com.naokirin.manavo.audio',
          androidNotificationChannelName: 'ManaVo Audio',
          androidNotificationOngoing: false,
          androidStopForegroundOnPause: true));
}

Future<Listened> _initListenedService() async {
  return await Listened.getInstance();
}
