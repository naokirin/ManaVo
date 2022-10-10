import 'package:package_info/package_info.dart';

class Info {
  static final instance = Info._();

  Info._();
  factory Info.getInstance() => instance;

  Future<int> currentBuildNumber() async {
    final info = await PackageInfo.fromPlatform();
    final buildNumber = int.parse(info.buildNumber);
    return buildNumber;
  }
}
