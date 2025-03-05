// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_name.freezed.dart';
part 'bot_name.g.dart';

/// This object represents the bot's name.
@freezed
class BotName with _$BotName {
  /// Creates a new [BotName] object.
  const factory BotName({
    /// The bot's name
    @JsonKey(name: 'name') required String name,
  }) = _BotName;

  /// Constructs [BotName] from JSON.
  factory BotName.fromJson(Map<String, dynamic> json) =>
      _$BotNameFromJson(json);
}
