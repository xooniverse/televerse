import 'package:freezed_annotation/freezed_annotation.dart';
part 'reaction_type_type.g.dart';

/// The type of a `ReactionType`
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
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

  /// Converts the [ReactionTypeType] to its corresponding JSON value.
  String toJson() => _$ReactionTypeTypeEnumMap[this]!;
}
