import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manavo/components/networks/http_error_snack_bar.dart';
import 'package:manavo/pages/routes/router.dart';
import 'package:manavo/pages/version_update/version_update_page.dart';
import 'package:manavo/providers/app_info.dart';
import 'package:manavo/providers/course.dart';
import 'package:manavo/utils/global/scaffold_key.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(Object context, WidgetRef ref) {
    _init(ref);
    ref.listen<AsyncValue<void>>(appVersionProvider, (_, __) {},
        onError: (error, _) {});
    final appVersion = ref.watch(appVersionProvider);
    return appVersion.when(
        data: ((data) {
          if (data.isLeft()) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              HttpErrorSnackBar.showHttpErrorSnackBar(
                  error: data.getLeft(),
                  onRetry: () {
                    ref.refresh(appVersionProvider);
                  },
                  message: 'ネットワークが接続できることを確認してください。');
            });
            return loadingWidget();
          } else if (!data
              .getRight()
              .match(() => false, (d) => d.needsToForceUpdate())) {
            final appVersion = data.getRight().toNullable();
            if (appVersion != null) {
              final r = router(appVersion);
              return MaterialApp.router(
                scaffoldMessengerKey: scaffoldKey,
                title: dotenv.env['APP_NAME']!,
                theme: ThemeData(
                    appBarTheme: const AppBarTheme(
                        backgroundColor: Colors.transparent,
                        titleTextStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        toolbarTextStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        iconTheme: IconThemeData(color: Colors.black),
                        actionsIconTheme: IconThemeData(color: Colors.black),
                        elevation: 0),
                    scaffoldBackgroundColor: const Color(0xFFFEFEFE)),
                routeInformationProvider: r.routeInformationProvider,
                routeInformationParser: r.routeInformationParser,
                routerDelegate: r.routerDelegate,
              );
            } else {
              return loadingWidget();
            }
          } else {
            return const VersionUpdatePage();
          }
        }),
        error: (Object error, StackTrace? stackTrace) {
          debugPrint('error: $error, stackTrace: $stackTrace');
          WidgetsBinding.instance.addPostFrameCallback((_) {
            HttpErrorSnackBar.showHttpErrorSnackBar(
                error: error,
                onRetry: () {
                  ref.refresh(appVersionProvider);
                });
          });
          return Container();
        },
        loading: () => const Center(
            child: SizedBox(
                width: 40, height: 40, child: CircularProgressIndicator())));
  }

  Future<void> _init(WidgetRef ref) async {
    try {
      await startCheckingToUpdateAppInfo(ref.read);
      await startCheckingToUpdateCourses(ref.read);
    } catch (error) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        HttpErrorSnackBar.showHttpErrorSnackBar(
            error: error,
            onRetry: () async {
              await _init(ref);
            });
      });
    }
  }

  Widget loadingWidget() {
    return MaterialApp(
        scaffoldMessengerKey: scaffoldKey,
        home: const Scaffold(
            body: Center(
                child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator()))));
  }
}
