// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'chat.dart';

part 'business_messages_deleted.freezed.dart';
part 'business_messages_deleted.g.dart';

/// Represents an object received when messages are deleted from a connected
/// business account.
@freezed
class BusinessMessagesDeleted
    with _$BusinessMessagesDeleted
    implements WithChat {
  /// Creates a [BusinessMessagesDeleted] object.
  const factory BusinessMessagesDeleted({
    /// Unique identifier of the business connection.
    @JsonKey(name: 'business_connection_id')
    required String businessConnectionId,

    /// Information about a chat in the business account. The bot may not have
    /// access to the chat or the corresponding user.
    @JsonKey(name: 'chat') required Chat chat,

    /// A JSON-serialized list of identifiers of deleted messages in the chat of
    /// the business account.
    @JsonKey(name: 'message_ids') required List<int> messageIds,
  }) = _BusinessMessagesDeleted;

  /// Creates a [BusinessMessagesDeleted] object from a JSON map.
  factory BusinessMessagesDeleted.fromJson(Map<String, dynamic> json) =>
      _$BusinessMessagesDeletedFromJson(json);
}
