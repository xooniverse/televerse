part of models;

/// Represents an invite link for a chat.
class ChatInviteLink {
  /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
  String inviteLink;

  /// Creator of the link
  User? creator;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  bool? createsJoinRequest;

  /// True, if the link is primary
  bool? isPrimary;

  /// True, if the link is revoked
  bool? isRevoked;

  /// Optional. Invite link name
  String? name;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as [DateTime] object in [expireDateTime] getter.
  int? expireDate;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  int? memberLimit;

  /// Optional. Number of pending join requests created using this link
  int? pendingMemberCount;

  ChatInviteLink({
    required this.inviteLink,
    this.creator,
    this.createsJoinRequest,
    this.isPrimary,
    this.isRevoked,
    this.name,
    this.expireDate,
    this.memberLimit,
    this.pendingMemberCount,
  });

  factory ChatInviteLink.fromJson(Map<String, dynamic> json) {
    return ChatInviteLink(
      inviteLink: json['invite_link'],
      creator: json['creator'] != null ? User.fromJson(json['creator']) : null,
      createsJoinRequest: json['creates_join_request'],
      isPrimary: json['is_primary'],
      isRevoked: json['is_revoked'],
      name: json['name'],
      expireDate: json['expire_date'],
      memberLimit: json['member_limit'],
      pendingMemberCount: json['pending_member_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'invite_link': inviteLink,
      'creator': creator?.toJson(),
      'creates_join_request': createsJoinRequest,
      'is_primary': isPrimary,
      'is_revoked': isRevoked,
      'name': name,
      'expire_date': expireDate,
      'member_limit': memberLimit,
      'pending_member_count': pendingMemberCount,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns the expiry date as [DateTime] object.
  /// Returns `null` if the link doesn't expire.
  DateTime? get expireDateTime {
    if (expireDate == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(expireDate! * 1000);
  }
}
