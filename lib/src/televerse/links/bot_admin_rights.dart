part of 'links.dart';

/// Represents a bot admin rights.
class BotAdminRights {
  /// If set, allows the admin to modify the description of the channel/supergroup
  final bool changeInfo;

  /// If set, allows the admin to post messages in the channel
  final bool postMessages;

  /// If set, allows the admin to also edit messages from other admins in the channel.
  final bool editMessages;

  /// If set, allows the admin to also delete messages from other admins in the channel
  final bool deleteMessages;

  /// If set, allows the admin to ban users from the channel/supergroup
  final bool restrictMembers;

  /// If set, allows the admin to invite users in the channel/supergroup
  final bool inviteUsers;

  /// If set, allows the admin to pin messages in the channel/supergroup
  final bool pinMessages;

  /// If set, allows the admin to add other admins with the same (or more limited) permissions in the channel/supergroup
  final bool promoteMembers;

  /// If set, allows the admin to change group call/livestream settings
  final bool manageVideoChats;

  /// Whether this admin is anonymous
  final bool anonymous;

  /// Set this flag if none of the other flags are set, but you still want the user to be an admin: if this or any of the other flags are set, the admin can get the chat admin log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode.
  final bool manageChat;

  /// Creates a new [BotAdminRights].
  const BotAdminRights({
    this.changeInfo = false,
    this.postMessages = false,
    this.editMessages = false,
    this.deleteMessages = false,
    this.restrictMembers = false,
    this.inviteUsers = false,
    this.pinMessages = false,
    this.promoteMembers = false,
    this.manageVideoChats = false,
    this.anonymous = false,
    this.manageChat = false,
  });

  /// Returns a list of rights.
  List<String> get rights {
    final r = <String>[];
    if (changeInfo) r.add('change_info');
    if (postMessages) r.add('post_messages');
    if (editMessages) r.add('edit_messages');
    if (deleteMessages) r.add('delete_messages');
    if (restrictMembers) r.add('restrict_members');
    if (inviteUsers) r.add('invite_users');
    if (pinMessages) r.add('pin_messages');
    if (promoteMembers) r.add('promote_members');
    if (manageVideoChats) r.add('manage_video_chats');
    if (anonymous) r.add('anonymous');
    if (manageChat) r.add('manage_chat');
    return r;
  }

  /// Returns a string representation of the admin rights.
  @override
  String toString() {
    return rights.join(',');
  }

  /// Returns a JSON representation of the admin rights.
  Map<String, dynamic> toJson() {
    return {
      'change_info': changeInfo,
      'post_messages': postMessages,
      'edit_messages': editMessages,
      'delete_messages': deleteMessages,
      'restrict_members': restrictMembers,
      'invite_users': inviteUsers,
      'pin_messages': pinMessages,
      'promote_members': promoteMembers,
      'manage_video_chats': manageVideoChats,
      'anonymous': anonymous,
      'manage_chat': manageChat,
    };
  }

  /// Returns a base64url encoded value of the admin rights query parameter.
  String get param {
    return rights.join('+');
  }
}
