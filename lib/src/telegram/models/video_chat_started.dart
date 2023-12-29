part of 'models.dart';

/// This object represents a service message about a video chat started in the chat. Currently holds no information.
class VideoChatStarted {
  /// Constructs a [VideoChatStarted] object
  VideoChatStarted();

  /// Creates a [VideoChatStarted] object from JSON object
  factory VideoChatStarted.fromJson(Map<String, dynamic> json) {
    return VideoChatStarted();
  }

  /// Converts a [VideoChatStarted] object to JSON object
  Map<String, dynamic> toJson() {
    return {};
  }
}
