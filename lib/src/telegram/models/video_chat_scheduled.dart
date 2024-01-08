part of 'models.dart';

/// This object represents a service message about a video chat scheduled in the chat.
class VideoChatScheduled {
  /// Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  final int startDate;

  /// Constructs a [VideoChatScheduled] object
  const VideoChatScheduled({
    required this.startDate,
  });

  /// Creates a [VideoChatScheduled] object from JSON object
  factory VideoChatScheduled.fromJson(Map<String, dynamic> json) {
    return VideoChatScheduled(
      startDate: json['start_date']!,
    );
  }

  /// Converts a [VideoChatScheduled] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'start_date': startDate,
    };
  }

  /// [DateTime] object getter for [startDate]
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startDate * 1000);
}
