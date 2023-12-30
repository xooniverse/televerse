part of 'models.dart';

/// Describes a Web App.
class WebAppInfo {
  /// An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
  String url;

  /// Constructs a [WebAppInfo] object
  WebAppInfo({required this.url});

  /// Creates a [WebAppInfo] object from JSON object
  factory WebAppInfo.fromJson(Map<String, dynamic> json) {
    return WebAppInfo(
      url: json['url'],
    );
  }

  /// Converts a [WebAppInfo] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'url': url,
    }..removeWhere((key, value) => value == null);
  }
}
