import 'package:audio_service/audio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manavo/actions/audio_player_action.dart';
import 'package:manavo/models/lesson.dart';
import 'package:manavo/services/audio/audio_service_handler.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:get_it/get_it.dart';

import 'audio_player_action_test.mocks.dart';

@GenerateMocks([AudioServiceHandler])
void main() {
  group('AudioPlayerAction Test', () {
    tearDown(() => GetIt.instance.reset());
    test('setAudioSource', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.setAudioSource(
              item: const MediaItem(id: '', title: ''),
              initialPosition: Duration.zero))
          .thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).setAudioSource(
            lesson: const Lesson(
                id: '',
                name: '',
                length: '',
                description: '',
                url: '',
                lastUpdatedDate: ''),
            album: '',
            initialPosition: Duration.zero,
          );

      verify(mock.setAudioSource(
              item: const MediaItem(id: '', title: ''),
              initialPosition: Duration.zero))
          .called(1);
    });

    test('play', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.play()).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).play();
      verify(mock.play()).called(1);
    });

    test('stop', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.stop()).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).stop();
      verify(mock.stop()).called(1);
    });

    test('pause', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.pause()).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).pause();
      verify(mock.pause()).called(1);
    });

    test('seek', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.seek(Duration.zero)).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).seek(Duration.zero);
      verify(mock.seek(Duration.zero)).called(1);
    });

    test('load', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.load()).thenAnswer((_) async {
        return null;
      });

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).load();
      verify(mock.load()).called(1);
    });

    test('setVolume', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.setVolume(1.0)).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).setVolume(1.0);
      verify(mock.setVolume(1.0)).called(1);
    });

    test('setSpeed', () {
      final mock = MockAudioServiceHandler();
      GetIt.instance.registerSingleton<AudioServiceHandler>(mock);
      when(mock.setSpeed(1.0)).thenAnswer((_) async {});

      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(audioPlayerActionProvider).setSpeed(1.0);
      verify(mock.setSpeed(1.0)).called(1);
    });
  });
}
