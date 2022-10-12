import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const AppVersion._();
  const factory AppVersion(
      {required String? version,
      required int? buildNumber,
      required int? lowestVersion}) = _AppVersion;

  bool needsToForceUpdate() => lowestVersion != null && buildNumber != null
      ? lowestVersion! > buildNumber!
      : false;
}
