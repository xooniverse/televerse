part of models;
/// This object represents a service message about a video chat scheduled in the chat.
class VideoChatScheduled {
  /// Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  int startDate;

  VideoChatScheduled({
    required this.startDate,
  });

  factory VideoChatScheduled.fromJson(Map<String, dynamic> json) {
    return VideoChatScheduled(
      startDate: json['start_date']!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'start_date': startDate,
    };
  }

  /// [DateTime] object getter for [startDate]
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startDate * 1000);
}
