// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// This object represents a Telegram user or bot.
@freezed
abstract class User with _$User implements WithID {
  /// Creates a Telegram user or bot
  ///
  /// - [id] Unique identifier for this user or bot
  /// - [isBot] True, if this user is a bot
  /// - [firstName] User's or bot's first name
  /// - [lastName] User's or bot's last name
  /// - [username] User's or bot's username
  /// - [languageCode] IETF language tag of the user's language
  /// - [isPremium] True, if this user is a Telegram Premium user
  /// - [addedToAttachmentMenu] True, if this user added the bot to the
  ///   attachment menu
  /// - [canJoinGroups] True, if the bot can be invited to groups
  /// - [canReadAllGroupMessages] True, if privacy mode is disabled for the bot
  /// - [supportsInlineQueries] True, if the bot supports inline queries
  /// - [canConnectToBusiness] True, if the bot can be connected to a Telegram
  ///   Business account
  /// - [hasMainWebApp] True, if the bot has a main Web App
  /// - [hasTopicsEnabled] True, if forum topic mode is enabled for the bot in
  ///   private chats
  const factory User({
    /// Unique identifier for this user or bot. This number may have more than
    /// 32 significant bits and some programming languages may have
    /// difficulty/silent defects in interpreting it. But it has at most 52
    /// significant bits, so a 64-bit integer or double-precision float type are
    /// safe for storing this identifier.
    @JsonKey(name: 'id') required int id,

    /// True, if this user is a bot
    @JsonKey(name: 'is_bot') required bool isBot,

    /// User's or bot's first name
    @JsonKey(name: 'first_name') required String firstName,

    /// Optional. User's or bot's last name
    @JsonKey(name: 'last_name') String? lastName,

    /// Optional. User's or bot's username
    @JsonKey(name: 'username') String? username,

    /// Optional. IETF language tag of the user's language
    @JsonKey(name: 'language_code') String? languageCode,

    /// Optional. True, if this user is a Telegram Premium user
    @JsonKey(name: 'is_premium') bool? isPremium,

    /// Optional. True, if this user added the bot to the attachment menu
    @JsonKey(name: 'added_to_attachment_menu') bool? addedToAttachmentMenu,

    /// Optional. True, if the bot can be invited to groups. Returned only in
    /// getMe.
    @JsonKey(name: 'can_join_groups') bool? canJoinGroups,

    /// Optional. True, if privacy mode is disabled for the bot. Returned only
    /// in getMe.
    @JsonKey(name: 'can_read_all_group_messages') bool? canReadAllGroupMessages,

    /// Optional. True, if the bot supports inline queries. Returned only in
    /// getMe.
    @JsonKey(name: 'supports_inline_queries') bool? supportsInlineQueries,

    /// Optional. True, if the bot can be connected to a Telegram Business
    /// account to receive its messages. Returned only in getMe.
    @JsonKey(name: 'can_connect_to_business') bool? canConnectToBusiness,

    /// Optional. True, if the bot has a main Web App. Returned only in getMe.
    @JsonKey(name: 'has_main_web_app') bool? hasMainWebApp,

    /// Optional. True, if forum topic mode is enabled for the bot in private
    /// chats.
    @JsonKey(name: 'has_topics_enabled') bool? hasTopicsEnabled,

    /// Optional. True, if the bot allows users to create and delete topics in
    /// private chats. Returned only in getMe.
    @JsonKey(name: 'allows_users_to_create_topics')
    bool? allowsUsersToCreateTopics,
  }) = _User;

  /// Creates a [User] from a JSON map
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
