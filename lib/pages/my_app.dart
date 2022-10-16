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
    startCheckingToUpdateAppInfo(ref.read);
    startCheckingToUpdateCourses(ref.read);
    final appVersion = ref.watch(appVersionProvider);
    return appVersion.when(
        data: ((data) {
          if (!data.needsToForceUpdate()) {
            final r = router(data);
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
}
