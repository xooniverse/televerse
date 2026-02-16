import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/types/televerse_enum.dart';

part 'update_type.g.dart';

/// This object represents type of an incoming update.
@JsonEnum(alwaysCreate: true)
enum UpdateType implements TeleverseEnum {
  /// Message update
  @JsonValue("message")
  message,

  /// Edited message update
  @JsonValue("edited_message")
  editedMessage,

  /// Channel post update
  @JsonValue("channel_post")
  channelPost,

  /// Edited channel post update
  @JsonValue("edited_channel_post")
  editedChannelPost,

  /// Inline query update
  @JsonValue("inline_query")
  inlineQuery,

  /// Chosen inline result update
  @JsonValue("chosen_inline_result")
  chosenInlineResult,

  /// Callback query update
  @JsonValue("callback_query")
  callbackQuery,

  /// Shipping query update
  @JsonValue("shipping_query")
  shippingQuery,

  /// Pre checkout query update
  @JsonValue("pre_checkout_query")
  preCheckoutQuery,

  /// Poll update
  @JsonValue("poll")
  poll,

  /// Poll answer update
  @JsonValue("poll_answer")
  pollAnswer,

  /// My chat member update
  @JsonValue("my_chat_member")
  myChatMember,

  /// Chat member update
  @JsonValue("chat_member")
  chatMember,

  /// Chat join request update
  @JsonValue("chat_join_request")
  chatJoinRequest,

  /// A reaction to a message was changed by a user.
  @JsonValue("message_reaction")
  messageReaction,

  /// Update when reactions to a message with anonymous reactions were changed.
  @JsonValue("message_reaction_count")
  messageReactionCount,

  /// Update when a chat is boosted.
  @JsonValue("chat_boost")
  chatBoost,

  /// Update when a chat boost is removed.
  @JsonValue("removed_chat_boost")
  removedChatBoost,

  /// Update when a business connection is established.
  @JsonValue("business_connection")
  businessConnection,

  /// When a message from a connected business account is recieved
  @JsonValue("business_message")
  businessMessage,

  /// New version of a message from a connected business account
  @JsonValue("edited_business_message")
  editedBusinessMessage,

  /// Messages were deleted from a connected business account
  @JsonValue("deleted_business_messages")
  deletedBusinessMessages,

  /// Updates about purchased paid media
  @JsonValue("purchased_paid_media")
  purchasedPaidMedia;

  /// Check if the update is a message update
  bool get isMessage => this == UpdateType.message;

  /// Check if the update is an edited message update
  bool get isEditedMessage => this == UpdateType.editedMessage;

  /// Check if the update is a channel post update
  bool get isChannelPost => this == UpdateType.channelPost;

  /// Check if the update is an edited channel post update
  bool get isEditedChannelPost => this == UpdateType.editedChannelPost;

  /// Check if the update is an inline query update
  bool get isInlineQuery => this == UpdateType.inlineQuery;

  /// Check if the update is a chosen inline result update
  bool get isChosenInlineResult => this == UpdateType.chosenInlineResult;

  /// Check if the update is a callback query update
  bool get isCallbackQuery => this == UpdateType.callbackQuery;

  /// Check if the update is a shipping query update
  bool get isShippingQuery => this == UpdateType.shippingQuery;

  /// Check if the update is a pre checkout query update
  bool get isPreCheckoutQuery => this == UpdateType.preCheckoutQuery;

  /// Check if the update is a poll update
  bool get isPoll => this == UpdateType.poll;

  /// Check if the update is a poll answer update
  bool get isPollAnswer => this == UpdateType.pollAnswer;

  /// Check if the update is a my chat member update
  bool get isMyChatMember => this == UpdateType.myChatMember;

  /// Check if the update is a chat member update
  bool get isChatMember => this == UpdateType.chatMember;

  /// Check if the update is a chat join request update
  bool get isChatJoinRequest => this == UpdateType.chatJoinRequest;

  /// Check if the update is a message reaction update
  bool get isMessageReaction => this == UpdateType.messageReaction;

  /// Check if the update is a message reaction count update
  bool get isMessageReactionCount => this == UpdateType.messageReactionCount;

  /// List of update types that related to a Message event.
  static List<UpdateType> messages() {
    return [
      message,
      editedMessage,
      channelPost,
      editedChannelPost,
      businessMessage,
      editedBusinessMessage,
    ];
  }

  /// Converts the [UpdateType] to its corresponding JSON value.
  @override
  String toJson() => _$UpdateTypeEnumMap[this]!;
}
