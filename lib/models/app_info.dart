import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info.freezed.dart';
part 'app_info.g.dart';

@freezed
class AppInfo with _$AppInfo {
  @JsonSerializable(explicitToJson: true)
  const factory AppInfo(
          {@JsonKey(name: 'lowest_version') required int lowestVersion,
          @JsonKey(name: 'course_list_path') required String courseListPath}) =
      _AppInfo;

  factory AppInfo.fromJson(Map<String, Object?> json) =>
      _$AppInfoFromJson(json);
}
