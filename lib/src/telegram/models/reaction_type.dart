import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';
part 'reaction_type.freezed.dart';
part 'reaction_type.g.dart';

/// Interface to expose the `type` property on `ReactionType`
abstract interface class _ReactionTypeImpl {
  /// Type of the reaction
  ReactionTypeType get type;
}

/// This object describes the type of a reaction. It can be one of
/// - [ReactionTypeEmoji]
/// - [ReactionTypeCustomEmoji]
/// - [ReactionTypePaid]
@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class ReactionType with _$ReactionType implements _ReactionTypeImpl {
  /// Regular emoji reaction
  @Assert(
    'type == ReactionTypeType.emoji',
    'type must be ReactionTypeType.emoji',
  )
  const factory ReactionType.emoji({
    /// Type of the reaction, must be "emoji"
    @Default(ReactionTypeType.emoji) ReactionTypeType type,

    /// The reaction emoji.
    ///
    /// Currently, it can be one of: "👍", "👎", "❤", "🔥", "🥰", "👏", "😁",
    /// "🤔", "🤯", "😱", "🤬", "😢", "🎉", "🤩", "🤮", "💩", "🙏", "👌", "🕊",
    /// "🤡", "🥱", "🥴", "😍", "🐳", "❤‍🔥", "🌚", "🌭", "💯", "🤣", "⚡", "🍌",
    /// "🏆", "💔", "🤨", "😐", "🍓", "🍾", "💋", "🖕", "😈", "😴", "😭", "🤓",
    /// "👻", "👨‍💻", "👀", "🎃", "🙈", "😇", "😨", "🤝", "✍", "🤗", "🫡",
    /// "🎅", "🎄", "☃", "💅", "🤪", "🗿", "🆒", "💘", "🙉", "🦄", "😘", "💊",
    /// "🙊", "😎", "👾", "🤷‍♂", "🤷", "🤷‍♀", "😡"
    @JsonKey(name: 'emoji') required final String emoji,
  }) = ReactionTypeEmoji;

  /// Custom emoji reaction
  @Assert(
    'type == ReactionTypeType.customEmoji',
    'type must be ReactionTypeType.customEmoji',
  )
  const factory ReactionType.customEmoji({
    /// Type of the reaction, must be "custom_emoji"
    @JsonKey(name: 'type')
    @Default(ReactionTypeType.customEmoji)
    ReactionTypeType type,

    /// Custom emoji identifier
    @JsonKey(name: 'custom_emoji_id') required final String customEmojiId,
  }) = ReactionTypeCustomEmoji;

  /// Paid reaction
  @Assert(
    'type == ReactionTypeType.paid',
    'type must be ReactionTypeType.paid',
  )
  const factory ReactionType.paid({
    /// Type of the reaction, must be "paid"
    @JsonKey(name: 'type')
    @Default(ReactionTypeType.paid)
    ReactionTypeType type,
  }) = ReactionTypePaid;

  factory ReactionType.fromJson(Map<String, Object?> json) =>
      _$ReactionTypeFromJson(json);
}
