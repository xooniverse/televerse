import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_description.freezed.dart';
part 'bot_description.g.dart';

/// This object represents the bot's description.
@freezed
class BotDescription with _$BotDescription {
  /// Creates the Bot Description object.
  const factory BotDescription({
    /// Bot's description.
    required String description,
  }) = _BotDescription;

  /// Creates the Bot Description object from a JSON object.
  factory BotDescription.fromJson(Map<String, dynamic> json) =>
      _$BotDescriptionFromJson(json);
}
