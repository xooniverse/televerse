part of models;

/// Describes a Web App.
class WebAppInfo {
  /// An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
  String url;

  WebAppInfo({required this.url});

  factory WebAppInfo.fromJson(Map<String, dynamic> json) {
    return WebAppInfo(
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
    }..removeWhere((key, value) => value == null);
  }
}
