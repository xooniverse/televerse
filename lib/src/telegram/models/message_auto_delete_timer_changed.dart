import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_auto_delete_timer_changed.freezed.dart';
part 'message_auto_delete_timer_changed.g.dart';

/// This object represents a service message about a change in auto-delete timer
/// settings.
@freezed
class MessageAutoDeleteTimerChanged with _$MessageAutoDeleteTimerChanged {
  /// Creates a service message about auto-delete timer change
  ///
  /// [messageAutoDeleteTime] New auto-delete time for messages in the chat in
  /// seconds
  const factory MessageAutoDeleteTimerChanged({
    /// New auto-delete time for messages in the chat; in seconds
    ///
    /// Note: you can also use the getter [timeInDuration] to get the time in
    /// [Duration] object
    @JsonKey(name: 'message_auto_delete_time')
    required int messageAutoDeleteTime,
  }) = _MessageAutoDeleteTimerChanged;

  /// Creates a [MessageAutoDeleteTimerChanged] from a JSON map
  factory MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) =>
      _$MessageAutoDeleteTimerChangedFromJson(json);
}

/// Extension over `MessageAutoDeleteTimerChanged` model
extension MessageAutoDeleteTimerChangedDurationExt
    on MessageAutoDeleteTimerChanged {
  /// Returns the time in [Duration] object
  Duration get timeInDuration => Duration(seconds: messageAutoDeleteTime);
}
