import 'package:flutter/material.dart';

class VersionUpdatePage extends StatelessWidget {
  const VersionUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Text('バージョンアップのお知らせ', style: TextStyle(fontSize: 24)),
          Padding(
              padding: EdgeInsets.all(30),
              child: Text('利用するためには新しいバージョンへ更新が必要です。ストアよりアプリを更新してください。')),
          TextButton(onPressed: null, child: Text('今すぐ更新'))
        ]))));
  }
}
