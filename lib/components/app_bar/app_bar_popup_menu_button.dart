import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:manavo/utils/progress_waiter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarPopupMenuButton extends StatelessWidget {
  const AppBarPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem<String>(
              value: 'PrivacyPolicy', child: Text('プライバシーポリシー')),
          const PopupMenuItem<String>(value: 'License', child: Text('ライセンス'))
        ];
      },
      onSelected: (value) async {
        if (value == 'PrivacyPolicy') {
          final url = dotenv.env['PRIVACY_POLICY_URL'];
          if (url != null) {
            await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
          }
        } else if (value == 'License') {
          ProgressWaiter.get('default').onProgress(
              () => GoRouter.of(context).push('/license_page'),
              delay: const Duration(milliseconds: 800));
        }
      },
    );
  }
}
