import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `ReactionType`
@JsonEnum(fieldRename: FieldRename.snake)
enum ReactionTypeType {
  /// Regular emoji reaction
  @JsonValue('emoji')
  emoji,

  /// Custom emoji reaction
  @JsonValue('custom_emoji')
  customEmoji,

  /// Paid reaction
  @JsonValue('paid')
  paid;
}
