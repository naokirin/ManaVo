import 'package:flutter/material.dart';
import 'package:manavo/utils/exceptions/connection_exception.dart';
import 'package:manavo/utils/global/scaffold_key.dart';

class HttpErrorSnackBar extends StatelessWidget {
  const HttpErrorSnackBar({super.key});

  static showHttpErrorSnackBar(
      {required Object error,
      required void Function() onRetry,
      String? message}) {
    String text = message ?? '';
    if (text == '') {
      if (error is NoNetworkException) {
        text = 'ネットワーク接続できませんでした。';
      } else if (error is TimeoutException) {
        text = 'タイムアウトしました。';
      } else {
        text = 'データの取得に失敗しました。 $error';
      }
    }
    final snackBar = SnackBar(
        content: Text(text),
        duration: const Duration(days: 365),
        action: SnackBarAction(
          label: '再試行',
          onPressed: () {
            scaffoldKey.currentState?.removeCurrentSnackBar();
            onRetry();
          },
        ));
    scaffoldKey.currentState?.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
