import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_app_data.freezed.dart';
part 'web_app_data.g.dart';

/// Describes data sent from a Web App to the bot.
@freezed
class WebAppData with _$WebAppData {
  /// Constructs a [WebAppData] object
  const factory WebAppData({
    /// The data. Be aware that a bad client can send arbitrary data in this
    /// field.
    required String data,

    /// Text of the web_app keyboard button from which the Web App was opened.
    /// Be aware that a bad client can send arbitrary data in this field.
    @JsonKey(name: 'button_text') required String buttonText,
  }) = _WebAppData;

  /// Creates a [WebAppData] object from JSON object
  factory WebAppData.fromJson(Map<String, dynamic> json) =>
      _$WebAppDataFromJson(json);
}
