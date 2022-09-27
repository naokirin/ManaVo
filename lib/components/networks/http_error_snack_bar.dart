import 'package:flutter/material.dart';
import 'package:flutter_just_audio_sample/utils/exceptions/connection_exception.dart';

class HttpErrorSnackBar extends StatelessWidget {
  const HttpErrorSnackBar({super.key});

  static showHttpErrorSnackBar(
      {required BuildContext context,
      required Object error,
      required void Function() onRetry}) {
    String text = '';
    if (error is NoNetworkException) {
      text = 'ネットワーク接続できませんでした。';
    } else if (error is TimeoutException) {
      text = 'タイムアウトしました。';
    } else {
      text = 'データの取得に失敗しました。';
    }
    final snackBar = SnackBar(
        content: Text(text),
        duration: const Duration(days: 365),
        action: SnackBarAction(
          label: '再試行',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            onRetry();
          },
        ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
