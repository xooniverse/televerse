import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';
part 'keyboard_button_poll_type.freezed.dart';
part 'keyboard_button_poll_type.g.dart';

/// This object represents type of a poll, which is allowed to be created and
/// sent when the corresponding button is pressed.
@freezed
class KeyboardButtonPollType with _$KeyboardButtonPollType {
  /// Constructs a [KeyboardButtonPollType] object
  const factory KeyboardButtonPollType({
    /// Optional. If quiz is passed, the user will be allowed to create only
    /// polls in the quiz mode. If regular is passed, only regular polls will be
    /// allowed. Otherwise, the user will be allowed to create a poll of any
    /// type.
    @JsonKey(name: 'type') PollType? type,
  }) = _KeyboardButtonPollType;

  /// Creates a [KeyboardButtonPollType] object from JSON object
  factory KeyboardButtonPollType.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonPollTypeFromJson(json);
}
