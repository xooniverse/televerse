part of models;

/// This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
class KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
  PollType? type;

  /// Constructs a [KeyboardButtonPollType] object
  KeyboardButtonPollType({this.type});

  /// Creates a [KeyboardButtonPollType] object from JSON object
  factory KeyboardButtonPollType.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonPollType(
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type?.type,
    }..removeWhere((key, value) => value == null);
  }
}
