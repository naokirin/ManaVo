import 'package:audio_service/audio_service.dart';
import 'package:flutter_just_audio_sample/services/audio/audio_service_handler.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  getIt.registerSingleton<AudioServiceHandler>(await _initeAudioService());
}

Future<AudioServiceHandler> _initeAudioService() async {
  return await AudioService.init(
      builder: () => AudioServiceHandler(),
      config: const AudioServiceConfig(
          androidNotificationChannelId: 'com.naokirin.manavo.audio',
          androidNotificationChannelName: 'ManaVo Audio',
          androidNotificationOngoing: true,
          androidStopForegroundOnPause: true));
}
