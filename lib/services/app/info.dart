import 'package:package_info/package_info.dart';

class Info {
  static Info instance = Info._();

  bool _initialized = false;
  final String appName;
  final String version;
  final int buildNumber;

  Info._({this.appName = '', this.version = '', this.buildNumber = 1});

  static Future<Info> getInstance() async {
    if (!instance._initialized) {
      final info = await PackageInfo.fromPlatform();
      instance = Info._(
          appName: info.appName,
          version: info.version,
          buildNumber: int.parse(info.buildNumber));
    }
    instance._initialized = true;
    return instance;
  }
}
