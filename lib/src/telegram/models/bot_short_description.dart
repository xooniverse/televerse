// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_short_description.freezed.dart';
part 'bot_short_description.g.dart';

/// This object represents the bot's short description.
@freezed
abstract class BotShortDescription with _$BotShortDescription {
  /// Creates the Bot Short Description object.
  const factory BotShortDescription({
    /// Bot's short description.
    @JsonKey(name: 'short_description') required String shortDescription,
  }) = _BotShortDescription;

  /// Creates the Bot Short Description object from a JSON object.
  factory BotShortDescription.fromJson(Map<String, dynamic> json) =>
      _$BotShortDescriptionFromJson(json);
}
