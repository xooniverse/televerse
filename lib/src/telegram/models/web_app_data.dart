part of 'models.dart';

/// Describes data sent from a Web App to the bot.
class WebAppData {
  /// The data. Be aware that a bad client can send arbitrary data in this field.
  String data;

  /// Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
  String buttonText;

  /// Constructs a [WebAppData] object
  WebAppData({
    required this.data,
    required this.buttonText,
  });

  /// Creates a [WebAppData] object from JSON object
  factory WebAppData.fromJson(Map<String, dynamic> json) {
    return WebAppData(
      data: json['data']!,
      buttonText: json['button_text'],
    );
  }

  /// Converts a [WebAppData] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'button_text': buttonText,
    }..removeWhere((key, value) => value == null);
  }
}
