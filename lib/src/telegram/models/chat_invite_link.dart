// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'chat_invite_link.freezed.dart';
part 'chat_invite_link.g.dart';

/// Represents an invite link for a chat.
@freezed
abstract class ChatInviteLink with _$ChatInviteLink {
  /// Creates a new [ChatInviteLink] object.
  const factory ChatInviteLink({
    /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
    @JsonKey(name: 'invite_link') required String inviteLink,

    /// Creator of the link
    @JsonKey(name: 'creator') User? creator,

    /// True, if users joining the chat via the link need to be approved by chat administrators
    @JsonKey(name: 'creates_join_request') bool? createsJoinRequest,

    /// True, if the link is primary
    @JsonKey(name: 'is_primary') bool? isPrimary,

    /// True, if the link is revoked
    @JsonKey(name: 'is_revoked') bool? isRevoked,

    /// Optional. Invite link name
    @JsonKey(name: 'name') String? name,

    /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
    ///
    /// The expiry date is available as `expireDateTime` getter.
    @JsonKey(name: 'expire_date') int? expireDate,

    /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
    @JsonKey(name: 'member_limit') int? memberLimit,

    /// Optional. Number of pending join requests created using this link
    @JsonKey(name: 'pending_member_count') int? pendingMemberCount,
  }) = _ChatInviteLink;

  /// Creates a new [ChatInviteLink] object from json.
  factory ChatInviteLink.fromJson(Map<String, dynamic> json) =>
      _$ChatInviteLinkFromJson(json);
}

/// Extension to provide additional functionality
extension ChatInviteLinkExt on ChatInviteLink {
  /// Returns the expiry date as [DateTime] object.
  /// Returns `null` if the link doesn't expire.
  DateTime? get expireDateTime => expireDate != null
      ? DateTime.fromMillisecondsSinceEpoch(expireDate! * 1000)
      : null;
}
