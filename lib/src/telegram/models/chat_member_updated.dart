// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/src/telegram/models/chat.dart';
import 'package:televerse/src/telegram/models/chat_invite_link.dart';
import 'package:televerse/src/telegram/models/chat_member.dart';
import 'package:televerse/src/telegram/models/user.dart';
import 'package:televerse/televerse.dart';

part 'chat_member_updated.freezed.dart';
part 'chat_member_updated.g.dart';

/// This object represents changes in the status of a chat member.
@freezed
abstract class ChatMemberUpdated
    with _$ChatMemberUpdated
    implements WithChat, WithUser {
  /// Creates a new [ChatMemberUpdated] object.
  const factory ChatMemberUpdated({
    /// Chat the user belongs to
    @JsonKey(name: 'chat') required Chat chat,

    /// Performer of the action, which resulted in the change
    @JsonKey(name: 'from') required User from,

    /// Date the change was done in Unix time
    @JsonKey(name: 'date') required int date,

    /// Previous information about the chat member
    @JsonKey(name: 'old_chat_member') required ChatMember oldChatMember,

    /// New information about the chat member
    @JsonKey(name: 'new_chat_member') required ChatMember newChatMember,

    /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
    @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,

    /// Optional. True, if the user joined the chat via a chat folder invite link
    @JsonKey(name: 'via_chat_folder_invite_link') bool? viaChatFolderInviteLink,

    /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
    @JsonKey(name: 'via_join_request') bool? viaJoinRequest,
  }) = _ChatMemberUpdated;

  /// Creates a new [ChatMemberUpdated] object from json.
  factory ChatMemberUpdated.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberUpdatedFromJson(json);
}

/// Extension to get DateTime from date field
extension ChatMemberUpdatedExt on ChatMemberUpdated {
  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => date.toDateTime();
}
