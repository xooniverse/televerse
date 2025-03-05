// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_id.freezed.dart';
part 'message_id.g.dart';

/// This object represents a unique message identifier.
@freezed
class MessageId with _$MessageId {
  /// Constructs a [MessageId] object
  const factory MessageId({
    /// Unique message identifier
    @JsonKey(name: 'message_id') required int messageId,
  }) = _MessageId;

  /// Creates a [MessageId] object from JSON object
  factory MessageId.fromJson(Map<String, dynamic> json) =>
      _$MessageIdFromJson(json);
}
