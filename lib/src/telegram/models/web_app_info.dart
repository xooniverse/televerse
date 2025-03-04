import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_app_info.freezed.dart';
part 'web_app_info.g.dart';

/// Describes a Web App.
@freezed
class WebAppInfo with _$WebAppInfo {
  /// Constructs a [WebAppInfo] object
  const factory WebAppInfo({
    /// An HTTPS URL of a Web App to be opened with additional data as specified
    /// in Initializing Web Apps
    @JsonKey(name: 'url') required String url,
  }) = _WebAppInfo;

  /// Creates a [WebAppInfo] object from JSON object
  factory WebAppInfo.fromJson(Map<String, dynamic> json) =>
      _$WebAppInfoFromJson(json);
}
