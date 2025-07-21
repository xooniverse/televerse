// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'chat_member.freezed.dart';
part 'chat_member.g.dart';

/// Abstract implementation to expose "status" and "user" properties on
/// `ChatMember`
abstract interface class _ChatMemberImpl {
  /// Represents status of the chat member.
  ChatMemberStatus get status;

  /// Information about the user
  User get user;
}

/// This object contains information about one member of a chat.
///
/// Currently, the following 6 types of chat members are supported:
/// - ChatMemberOwner
/// - ChatMemberAdministrator
/// - ChatMemberMember
/// - ChatMemberRestricted
/// - ChatMemberLeft
/// - ChatMemberBanned
@Freezed(unionKey: 'status', unionValueCase: FreezedUnionCase.snake)
sealed class ChatMember with _$ChatMember implements _ChatMemberImpl {
  /// Represents a chat member that owns the chat and has all administrator
  /// privileges.
  ///
  /// The status of this member is always "creator".
  const factory ChatMember.creator({
    /// The member's status in the chat
    @Default(ChatMemberStatus.creator)
    @JsonKey(name: 'status')
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,

    /// True, if the user's presence in the chat is hidden
    @JsonKey(name: 'is_anonymous') required bool isAnonymous,

    /// Optional. Custom title for this user
    @JsonKey(name: 'custom_title') String? customTitle,
  }) = ChatMemberOwner;

  /// Represents a chat member that has some additional privileges.
  ///
  /// The status of this member is always "administrator".
  const factory ChatMember.administrator({
    /// The member's status in the chat
    @Default(ChatMemberStatus.administrator)
    @JsonKey(name: 'status')
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,

    /// True, if the bot is allowed to edit administrator privileges of that
    /// user
    @JsonKey(name: 'can_be_edited') required bool canBeEdited,

    /// True, if the user's presence in the chat is hidden
    @JsonKey(name: 'is_anonymous') required bool isAnonymous,

    /// True, if the administrator can access the chat event log, get boost
    /// list, see hidden supergroup and channel members, report spam messages
    /// and ignore slow mode
    @JsonKey(name: 'can_manage_chat') required bool canManageChat,

    /// True, if the administrator can delete messages of other users
    @JsonKey(name: 'can_delete_messages') required bool canDeleteMessages,

    /// True, if the administrator can manage video chats
    @JsonKey(name: 'can_manage_video_chats') required bool canManageVideoChats,

    /// True, if the administrator can restrict, ban or unban chat members, or
    /// access supergroup statistics
    @JsonKey(name: 'can_restrict_members') required bool canRestrictMembers,

    /// True, if the administrator can add new administrators with a subset of
    /// their own privileges or demote administrators that they have promoted
    @JsonKey(name: 'can_promote_members') required bool canPromoteMembers,

    /// True, if the user is allowed to change the chat title, photo and other
    /// settings
    @JsonKey(name: 'can_change_info') required bool canChangeInfo,

    /// True, if the user is allowed to invite new users to the chat
    @JsonKey(name: 'can_invite_users') required bool canInviteUsers,

    /// True, if the administrator can post stories to the chat
    @JsonKey(name: 'can_post_stories') required bool canPostStories,

    /// True, if the administrator can edit stories posted by other users
    @JsonKey(name: 'can_edit_stories') required bool canEditStories,

    /// True, if the administrator can delete stories posted by other users
    @JsonKey(name: 'can_delete_stories') required bool canDeleteStories,

    /// Optional. True, if the administrator can post messages in the channel,
    /// or access channel statistics
    @JsonKey(name: 'can_post_messages') bool? canPostMessages,

    /// Optional. True, if the administrator can edit messages of other users
    /// and can pin messages
    @JsonKey(name: 'can_edit_messages') bool? canEditMessages,

    /// Optional. True, if the user is allowed to pin messages
    @JsonKey(name: 'can_pin_messages') bool? canPinMessages,

    /// Optional. True, if the user is allowed to create, rename, close, and
    /// reopen forum topics
    @JsonKey(name: 'can_manage_topics') bool? canManageTopics,

    /// Optional. Custom title for this user
    @JsonKey(name: 'custom_title') String? customTitle,
  }) = ChatMemberAdministrator;

  /// Represents a chat member that has no additional privileges or
  /// restrictions.
  ///
  /// The status of this member is always "member".
  const factory ChatMember.member({
    /// The member's status in the chat
    @Default(ChatMemberStatus.member)
    @JsonKey(name: 'status')
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,

    /// Optional. Date when restrictions will be lifted for this user; Unix time
    @JsonKey(name: 'until_date') int? untilDate,
  }) = ChatMemberMember;

  /// Represents a chat member that is under certain restrictions in the chat.
  /// Supergroups only.
  ///
  /// The status of this member is always "restricted".
  const factory ChatMember.restricted({
    /// The member's status in the chat
    @Default(ChatMemberStatus.restricted)
    @JsonKey(name: 'status')
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,

    /// True, if the user is a member of the chat at the moment of the request
    @JsonKey(name: 'is_member') required bool isMember,

    /// True, if the user is allowed to send text messages, contacts, giveaways,
    /// giveaway winners, invoices, locations and venues
    @JsonKey(name: 'can_send_messages') required bool canSendMessages,

    /// True, if the user is allowed to send audios
    @JsonKey(name: 'can_send_audios') required bool canSendAudios,

    /// True, if the user is allowed to send documents
    @JsonKey(name: 'can_send_documents') required bool canSendDocuments,

    /// True, if the user is allowed to send photos
    @JsonKey(name: 'can_send_photos') required bool canSendPhotos,

    /// True, if the user is allowed to send videos
    @JsonKey(name: 'can_send_videos') required bool canSendVideos,

    /// True, if the user is allowed to send video notes
    @JsonKey(name: 'can_send_video_notes') required bool canSendVideoNotes,

    /// True, if the user is allowed to send voice notes
    @JsonKey(name: 'can_send_voice_notes') required bool canSendVoiceNotes,

    /// True, if the user is allowed to send polls
    @JsonKey(name: 'can_send_polls') required bool canSendPolls,

    /// True, if the user is allowed to send animations, games, stickers and use
    /// inline bots
    @JsonKey(name: 'can_send_other_messages')
    required bool canSendOtherMessages,

    /// True, if the user is allowed to add web page previews to their messages
    @JsonKey(name: 'can_add_web_page_previews')
    required bool canAddWebPagePreviews,

    /// True, if the user is allowed to change the chat title, photo and other
    /// settings
    @JsonKey(name: 'can_change_info') required bool canChangeInfo,

    /// True, if the user is allowed to invite new users to the chat
    @JsonKey(name: 'can_invite_users') required bool canInviteUsers,

    /// True, if the user is allowed to pin messages
    @JsonKey(name: 'can_pin_messages') required bool canPinMessages,

    /// True, if the user is allowed to create forum topics
    @JsonKey(name: 'can_manage_topics') required bool canManageTopics,

    /// Date when restrictions will be lifted for this user; Unix time. If 0,
    /// then the user is restricted forever
    @JsonKey(name: 'until_date') required int untilDate,
  }) = ChatMemberRestricted;

  /// Represents a chat member that isn't currently a member of the chat, but
  /// may join it themselves.
  ///
  /// The status of this member is always "left".
  const factory ChatMember.left({
    /// The member's status in the chat
    @JsonKey(name: 'status')
    @Default(ChatMemberStatus.left)
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,
  }) = ChatMemberLeft;

  /// Represents a chat member that was banned in the chat and can't return to
  /// the chat or view chat messages.
  ///
  /// The status of this member is always "kicked".
  const factory ChatMember.kicked({
    /// The member's status in the chat
    @Default(ChatMemberStatus.kicked)
    @JsonKey(name: 'status')
    ChatMemberStatus status,

    /// Information about the user
    @JsonKey(name: 'user') required User user,

    /// Date when restrictions will be lifted for this user; Unix time. If 0,
    /// then the user is banned forever
    @JsonKey(name: 'until_date') required int untilDate,
  }) = ChatMemberBanned;

  /// Creates the ChatMember instance from the JSON map
  factory ChatMember.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberFromJson(json);
}
