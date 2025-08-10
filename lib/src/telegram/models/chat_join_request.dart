// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/televerse.dart';
import 'chat.dart';
import 'user.dart';
import 'chat_invite_link.dart';

part 'chat_join_request.freezed.dart';
part 'chat_join_request.g.dart';

/// Represents a join request sent to a chat.
@freezed
abstract class ChatJoinRequest
    with _$ChatJoinRequest
    implements WithChat, WithUser {
  /// Creates a new [ChatJoinRequest] object.
  const factory ChatJoinRequest({
    /// Chat to which the request was sent
    @JsonKey(name: 'chat') required Chat chat,

    /// User that sent the join request
    @JsonKey(name: 'from') required User from,

    /// Date the request was sent in Unix time
    ///
    /// You can use the `dateTime` getter to get a [DateTime] object
    @JsonKey(name: 'date') required int date,

    /// Optional. Bio of the user.
    @JsonKey(name: 'bio') String? bio,

    /// Optional. Chat invite link that was used by the user to send the join request
    @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,

    /// Since Bot API 6.5
    ///
    /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
    @JsonKey(name: 'user_chat_id') required int userChatId,
  }) = _ChatJoinRequest;

  /// Creates a new [ChatJoinRequest] object from json.
  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatJoinRequestFromJson(json);
}

/// Extension to provide additional functionality
extension ChatJoinRequestExt on ChatJoinRequest {
  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => date.toDateTime();

  /// User that sent the join request (alias for [from])
  User get user => from;
}
