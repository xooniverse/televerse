// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_bot_rights.freezed.dart';
part 'business_bot_rights.g.dart';

/// Represents the rights of a business bot.
@freezed
abstract class BusinessBotRights with _$BusinessBotRights {
  /// Creates a new [BusinessBotRights] object.
  const factory BusinessBotRights({
    /// Optional. True, if the bot can send and edit messages in the private
    /// chats that had incoming messages in the last 24 hours
    @JsonKey(name: 'can_reply') bool? canReply,

    /// Optional. True, if the bot can mark incoming private messages as read
    @JsonKey(name: 'can_read_messages') bool? canReadMessages,

    /// Optional. True, if the bot can delete messages sent by the bot
    @JsonKey(name: 'can_delete_outgoing_messages')
    bool? canDeleteOutgoingMessages,

    /// Optional. True, if the bot can delete all private messages in managed chats
    @JsonKey(name: 'can_delete_all_messages') bool? canDeleteAllMessages,

    /// Optional. True, if the bot can edit the first and last name of the business account
    @JsonKey(name: 'can_edit_name') bool? canEditName,

    /// Optional. True, if the bot can edit the bio of the business account
    @JsonKey(name: 'can_edit_bio') bool? canEditBio,

    /// Optional. True, if the bot can edit the profile photo of the business account
    @JsonKey(name: 'can_edit_profile_photo') bool? canEditProfilePhoto,

    /// Optional. True, if the bot can edit the username of the business account
    @JsonKey(name: 'can_edit_username') bool? canEditUsername,

    /// Optional. True, if the bot can change the privacy settings pertaining to gifts for the business account
    @JsonKey(name: 'can_change_gift_settings') bool? canChangeGiftSettings,

    /// Optional. True, if the bot can view gifts and the amount of Telegram Stars owned by the business account
    @JsonKey(name: 'can_view_gifts_and_stars') bool? canViewGiftsAndStars,

    /// Optional. True, if the bot can convert regular gifts owned by the business account to Telegram Stars
    @JsonKey(name: 'can_convert_gifts_to_stars') bool? canConvertGiftsToStars,

    /// Optional. True, if the bot can transfer and upgrade gifts owned by the business account
    @JsonKey(name: 'can_transfer_and_upgrade_gifts')
    bool? canTransferAndUpgradeGifts,

    /// Optional. True, if the bot can transfer Telegram Stars received by the business account to its own account, or use them to upgrade and transfer gifts
    @JsonKey(name: 'can_transfer_stars') bool? canTransferStars,

    /// Optional. True, if the bot can post, edit and delete stories on behalf of the business account
    @JsonKey(name: 'can_manage_stories') bool? canManageStories,
  }) = _BusinessBotRights;

  /// Creates a new [BusinessBotRights] object from a JSON [Map].
  factory BusinessBotRights.fromJson(Map<String, dynamic> json) =>
      _$BusinessBotRightsFromJson(json);
}
