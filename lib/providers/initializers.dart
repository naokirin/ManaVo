import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:manavo/providers/audio_player.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';

void initAudioPlayerProvider(Reader read) {
  final handler = GetIt.I<AudioServiceHandler>();
  final notifier = read(audioPlayerProvider.notifier);
  notifier.reset();

  final subscription = handler
      .audioPlayerStateStream()
      .listen((state) => notifier.setState(state));

  notifier.setOnResetted(() {
    subscription.cancel();
  });

  notifier.setOnDisposed(() {
    handler.stop();
  });
}
