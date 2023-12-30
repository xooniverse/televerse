part of 'models.dart';

/// This object represents a service message about a change in auto-delete timer settings.
class MessageAutoDeleteTimerChanged {
  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in [Duration] object
  int messageAutoDeleteTime;

  /// Constructs a [MessageAutoDeleteTimerChanged] object
  MessageAutoDeleteTimerChanged({
    required this.messageAutoDeleteTime,
  });

  /// Creates a [MessageAutoDeleteTimerChanged] object from JSON object
  factory MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) {
    return MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime: json['message_auto_delete_time']!,
    );
  }

  /// Converts a [MessageAutoDeleteTimerChanged] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'message_auto_delete_time': messageAutoDeleteTime,
    };
  }

  /// Returns the time in [Duration] object
  Duration get timeInDuration => Duration(seconds: messageAutoDeleteTime);
}
