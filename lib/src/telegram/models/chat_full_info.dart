// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'chat_full_info.freezed.dart';
part 'chat_full_info.g.dart';

/// This object represents a chat with full information.
@freezed
abstract class ChatFullInfo with _$ChatFullInfo {
  /// Constructs a [ChatFullInfo] object.
  const factory ChatFullInfo({
    /// Unique identifier for this chat.
    @JsonKey(name: 'id') required final int id,

    /// Type of the chat.
    @JsonKey(name: 'type') required final ChatType type,

    /// Optional. Title of the chat.
    @JsonKey(name: 'title') final String? title,

    /// Optional. Username of the chat.
    @JsonKey(name: 'username') final String? username,

    /// Optional. First name in private chats.
    @JsonKey(name: 'first_name') final String? firstName,

    /// Optional. Last name in private chats.
    @JsonKey(name: 'last_name') final String? lastName,

    /// Optional. True if the chat is a forum.
    @JsonKey(name: 'is_forum') final bool? isForum,

    /// Optional. Chat photo.
    @JsonKey(name: 'photo') final ChatPhoto? photo,

    /// Optional. If non-empty, the list of all active chat usernames.
    @JsonKey(name: 'active_usernames') final List<String>? activeUsernames,

    /// Optional. Bio of the other party in a private chat.
    @JsonKey(name: 'bio') final String? bio,

    /// Optional. True if privacy settings restrict forwarding.
    @JsonKey(name: 'has_private_forwards') final bool? hasPrivateForwards,

    /// Optional. True if voice and video note messages are restricted.
    @JsonKey(name: 'has_restricted_voice_and_video_messages')
    final bool? hasRestrictedVoiceAndVideoMessages,

    /// Optional. True if users need to join before sending messages.
    @JsonKey(name: 'join_to_send_messages') final bool? joinToSendMessages,

    /// Optional. True if joining requires administrator approval.
    @JsonKey(name: 'join_by_request') final bool? joinByRequest,

    /// Optional. Description for groups, supergroups, and channels.
    @JsonKey(name: 'description') final String? description,

    /// Optional. Primary invite link.
    @JsonKey(name: 'invite_link') final String? inviteLink,

    /// Optional. The most recent pinned message.
    @JsonKey(name: 'pinned_message') final Message? pinnedMessage,

    /// Optional. Default chat member permissions.
    @JsonKey(name: 'permissions') final ChatPermissions? permissions,

    /// Optional. Minimum delay between messages in supergroups.
    @JsonKey(name: 'slow_mode_delay') final int? slowModeDelay,

    /// Optional. Time after which messages are automatically deleted.
    @JsonKey(name: 'message_auto_delete_time') final int? messageAutoDeleteTime,

    /// Optional. True if messages can't be forwarded.
    @JsonKey(name: 'has_protected_content') final bool? hasProtectedContent,

    /// Optional. Name of group sticker set.
    @JsonKey(name: 'sticker_set_name') final String? stickerSetName,

    /// Optional. True if the bot can change the group sticker set.
    @JsonKey(name: 'can_set_sticker_set') final bool? canSetStickerSet,

    /// Optional. Unique identifier for the linked chat.
    @JsonKey(name: 'linked_chat_id') final int? linkedChatId,

    /// Optional. Location for supergroups.
    @JsonKey(name: 'location') final ChatLocation? location,

    /// Optional. True if non-administrators can only see bots and admins.
    @JsonKey(name: 'has_hidden_members') final bool? hasHiddenMembers,

    /// Optional. True if aggressive anti-spam is enabled.
    @JsonKey(name: 'has_aggressive_anti_spam_enabled')
    final bool? hasAggressiveAntiSpamEnabled,

    /// Optional. Expiration date of emoji status.
    @JsonKey(name: 'emoji_status_expiration_date')
    final int? emojiStatusExpirationDate,

    /// Optional. Available reaction types.
    @JsonKey(name: 'available_reactions')
    final List<ReactionType>? availableReactions,

    /// Optional. Custom emoji identifier for emoji status.
    @JsonKey(name: 'emoji_status_custom_emoji_id')
    final String? emojiStatusCustomEmojiId,

    /// Optional. Identifier for accent color.
    @JsonKey(name: 'accent_color_id') final int? accentColorId,

    /// Optional. Custom emoji identifier for background.
    @JsonKey(name: 'background_custom_emoji_id')
    final String? backgroundCustomEmojiId,

    /// Optional. Identifier for profile accent color.
    @JsonKey(name: 'profile_accent_color_id') int? profileAccentColorId,

    /// Optional. Custom emoji identifier for profile background.
    @JsonKey(name: 'profile_background_custom_emoji_id')
    final String? profileBackgroundCustomEmojiId,

    /// Optional. True if new members can see old messages.
    @JsonKey(name: 'has_visible_history') final bool? hasVisibleHistory,

    /// Optional. Minimum boost count to ignore restrictions.
    @JsonKey(name: 'unrestrict_boost_count') final int? unrestrictBoostCount,

    /// Optional. Name of custom emoji sticker set.
    @JsonKey(name: 'custom_emoji_sticker_set_name')
    final String? customEmojiStickerSetName,

    /// Optional. Business intro for business accounts.
    @JsonKey(name: 'business_intro') final BusinessIntro? businessIntro,

    /// Optional. Business location for business accounts.
    @JsonKey(name: 'business_location')
    final BusinessLocation? businessLocation,

    /// Optional. Business opening hours.
    @JsonKey(name: 'business_opening_hours')
    final BusinessOpeningHours? businessOpeningHours,

    /// Optional. Personal channel for private chats.
    @JsonKey(name: 'personal_chat') final Chat? personalChat,

    /// Optional. Date of birth for private chats.
    @JsonKey(name: 'birthdate') final Birthdate? birthdate,

    /// Maximum number of reactions allowed.
    @JsonKey(name: 'max_reaction_count') @Default(0) final int maxReactionCount,

    /// Optional. True if paid media can be sent.
    @JsonKey(name: 'can_send_paid_media') final bool? canSendPaidMedia,

    /// Information about types of gifts that are accepted by the chat or by the corresponding user for private chats.
    @JsonKey(name: 'accepted_gift_types')
    required final AcceptedGiftTypes acceptedGiftTypes,
  }) = _ChatFullInfo;

  /// Creates a [ChatFullInfo] object from a JSON map.
  factory ChatFullInfo.fromJson(Map<String, dynamic> json) =>
      _$ChatFullInfoFromJson(json);
}
