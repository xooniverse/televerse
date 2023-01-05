part of models;

/// This object represents a service message about a change in auto-delete timer settings.
class MessageAutoDeleteTimerChanged {
  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in [Duration] object
  int messageAutoDeleteTime;

  MessageAutoDeleteTimerChanged({
    required this.messageAutoDeleteTime,
  });

  factory MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) {
    return MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime: json['message_auto_delete_time']!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message_auto_delete_time': messageAutoDeleteTime,
    };
  }

  /// Returns the time in [Duration] object
  Duration get timeInDuration => Duration(seconds: messageAutoDeleteTime);
}
