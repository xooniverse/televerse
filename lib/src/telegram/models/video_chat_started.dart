part of models;

/// This object represents a service message about a video chat started in the chat. Currently holds no information.
class VideoChatStarted {
  VideoChatStarted();

  factory VideoChatStarted.fromJson(Map<String, dynamic> json) {
    return VideoChatStarted();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
