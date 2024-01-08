part of 'models.dart';

/// This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
class KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
  final PollType? type;

  /// Constructs a [KeyboardButtonPollType] object
  const KeyboardButtonPollType({this.type});

  /// Creates a [KeyboardButtonPollType] object from JSON object
  factory KeyboardButtonPollType.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonPollType(
      type: json['type'],
    );
  }

  /// Converts a [KeyboardButtonPollType] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'type': type?.type,
    }..removeWhere((key, value) => value == null);
  }
}
