// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart' show MessageEntity, ParseMode;

part 'input_poll_option.freezed.dart';
part 'input_poll_option.g.dart';

/// Represents an input poll option.
@freezed
abstract class InputPollOption with _$InputPollOption {
  /// Creates an [InputPollOption] object.
  const factory InputPollOption({
    /// Option text, 1-100 characters.
    @JsonKey(name: 'text') required String text,

    /// Optional. Mode for parsing entities in the text.
    @JsonKey(name: 'text_parse_mode') ParseMode? textParseMode,

    /// Optional. A list of special entities that appear in the poll option text.
    @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
  }) = _InputPollOption;

  /// Creates an [InputPollOption] object from a JSON map.
  factory InputPollOption.fromJson(Map<String, dynamic> json) =>
      _$InputPollOptionFromJson(json);
}
