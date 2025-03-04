import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_entity.dart';

part 'poll_option.freezed.dart';
part 'poll_option.g.dart';

/// This object contains information about one answer option in a poll.
@freezed
class PollOption with _$PollOption {
  /// Constructs a [PollOption] object.
  const factory PollOption({
    /// Option text, 1-100 characters
    @JsonKey(name: 'text') required String text,

    /// Number of users that voted for this option
    @JsonKey(name: 'voter_count') required int voterCount,

    /// Optional. Special entities that appear in the option text. Currently,
    /// only custom emoji entities are allowed in poll option texts
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
  }) = _PollOption;

  /// Creates a [PollOption] object from JSON object.
  factory PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);
}
