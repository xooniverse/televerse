/// Represents the methods available in the Telegram Bot API.
///
/// Each enum value corresponds to a specific Telegram Bot API endpoint.
enum APIMethod {
  /// Returns the updates for the bot.
  getUpdates,

  /// Sets a webhook for the bot.
  setWebhook,

  /// Deletes the webhook for the bot.
  deleteWebhook,

  /// Returns the bot's information.
  getMe,

  /// Logs the bot out.
  logOut,

  /// Closes the bot.
  close,

  /// Sends a message.
  sendMessage,

  /// Forwards a message.
  forwardMessage,

  /// Copies a message.
  copyMessage,

  /// Sends a photo.
  sendPhoto,

  /// Sends an audio file.
  sendAudio,

  /// Sends a document.
  sendDocument,

  /// Sends a video.
  sendVideo,

  /// Sends an animation.
  sendAnimation,

  /// Sends a voice message.
  sendVoice,

  /// Sends a video note.
  sendVideoNote,

  /// Sends a group of media files.
  sendMediaGroup,

  /// Sends a location.
  sendLocation,

  /// Sends a venue.
  sendVenue,

  /// Sends a contact.
  sendContact,

  /// Sends a poll.
  sendPoll,

  /// Sends a dice.
  sendDice,

  /// Sends a chat action.
  sendChatAction,

  /// Gets a user's profile photos.
  getUserProfilePhotos,

  /// Gets a file.
  getFile,

  /// Bans a chat member.
  banChatMember,

  /// Unbans a chat member.
  unbanChatMember,

  /// Restricts a chat member.
  restrictChatMember,

  /// Promotes a chat member.
  promoteChatMember,

  /// Sets a chat administrator's custom title.
  setChatAdministratorCustomTitle,

  /// Bans a chat sender chat.
  banChatSenderChat,

  /// Unbans a chat sender chat.
  unbanChatSenderChat,

  /// Sets a chat's permissions.
  setChatPermissions,

  /// Exports a chat's invite link.
  exportChatInviteLink,

  /// Creates a chat's invite link.
  createChatInviteLink,

  /// Edits a chat's invite link.
  editChatInviteLink,

  /// Revokes a chat's invite link.
  revokeChatInviteLink,

  /// Approves a chat's join request.
  approveChatJoinRequest,

  /// Declines a chat's join request.
  declineChatJoinRequest,

  /// Sets a chat's photo.
  setChatPhoto,

  /// Deletes a chat's photo.
  deleteChatPhoto,

  /// Sets a chat's title.
  setChatTitle,

  /// Sets a chat's description.
  setChatDescription,

  /// Pins a chat message.
  pinChatMessage,

  /// Unpins a chat message.
  unpinChatMessage,

  /// Unpins all chat messages.
  unpinAllChatMessages,

  /// Leaves a chat.
  leaveChat,

  /// Gets a chat.
  getChat,

  /// Gets a chat's administrators.
  getChatAdministrators,

  /// Gets a chat's member count.
  getChatMemberCount,

  /// Gets a chat member.
  getChatMember,

  /// Sets a chat's sticker set.
  setChatStickerSet,

  /// Deletes a chat's sticker set.
  deleteChatStickerSet,

  /// Gets a forum topic's icon stickers.
  getForumTopicIconStickers,

  /// Creates a forum topic.
  createForumTopic,

  /// Edits a forum topic.
  editForumTopic,

  /// Closes a forum topic.
  closeForumTopic,

  /// Reopens a forum topic.
  reopenForumTopic,

  /// Deletes a forum topic.
  deleteForumTopic,

  /// Unpins all forum topic messages.
  unpinAllForumTopicMessages,

  /// Edits a general forum topic.
  editGeneralForumTopic,

  /// Closes a general forum topic.
  closeGeneralForumTopic,

  /// Reopens a general forum topic.
  reopenGeneralForumTopic,

  /// Hides a general forum topic.
  hideGeneralForumTopic,

  /// Unhides a general forum topic.
  unhideGeneralForumTopic,

  /// Answers a callback query.
  answerCallbackQuery,

  /// Sets a bot's commands.
  setMyCommands,

  /// Deletes a bot's commands.
  deleteMyCommands,

  /// Gets a bot's commands.
  getMyCommands,

  /// Sets a bot's name.
  setMyName,

  /// Gets a bot's name.
  getMyName,

  /// Sets a bot's description.
  setMyDescription,

  /// Gets a bot's description.
  getMyDescription,

  /// Sets a bot's short description.
  setMyShortDescription,

  /// Gets a bot's short description.
  getMyShortDescription,

  /// Sets a chat's menu button.
  setChatMenuButton,

  /// Gets a chat's menu button.
  getChatMenuButton,

  /// Sets a bot's default administrator rights.
  setMyDefaultAdministratorRights,

  /// Gets a bot's default administrator rights.
  getMyDefaultAdministratorRights,

  /// Edits a message's text.
  editMessageText,

  /// Edits a message's caption.
  editMessageCaption,

  /// Edits a message's media.
  editMessageMedia,

  /// Edits a message's live location.
  editMessageLiveLocation,

  /// Stops a message's live location.
  stopMessageLiveLocation,

  /// Edits a message's reply markup.
  editMessageReplyMarkup,

  /// Stops a poll.
  stopPoll,

  /// Deletes a message.
  deleteMessage,

  /// Sends a sticker.
  sendSticker,

  /// Gets a sticker set.
  getStickerSet,

  /// Gets custom emoji stickers.
  getCustomEmojiStickers,

  /// Uploads a sticker file.
  uploadStickerFile,

  /// Creates a new sticker set.
  createNewStickerSet,

  /// Adds a sticker to a set.
  addStickerToSet,

  /// Sets a sticker's position in a set.
  setStickerPositionInSet,

  /// Deletes a sticker from a set.
  deleteStickerFromSet,

  /// Sets a sticker's emoji list.
  setStickerEmojiList,

  /// Sets a sticker's keywords.
  setStickerKeywords,

  /// Sets a sticker's mask position.
  setStickerMaskPosition,

  /// Sets a sticker set's title.
  setStickerSetTitle,

  /// Sets a sticker set's thumbnail.
  setStickerSetThumbnail,

  /// Sets a custom emoji sticker set's thumbnail.
  setCustomEmojiStickerSetThumbnail,

  /// Deletes a sticker set.
  deleteStickerSet,

  /// Answers an inline query.
  answerInlineQuery,

  /// Answers a web app query.
  answerWebAppQuery,

  /// Sends an invoice.
  sendInvoice,

  /// Creates an invoice link.
  createInvoiceLink,

  /// Answers a shipping query.
  answerShippingQuery,

  /// Answers a pre checkout query.
  answerPreCheckoutQuery,

  /// Sets passport data errors.
  setPassportDataErrors,

  /// Sends a game.
  sendGame,

  /// Sets a game's score.
  setGameScore,

  /// Gets a game's high scores.
  getGameHighScores,

  /// Sets a message reaction.
  setMessageReaction,

  /// Deletes multiple messages.
  deleteMessages,

  /// Forwards multiple messages.
  forwardMessages,

  /// Copies multiple messages.
  copyMessages,

  /// Gets a user's active chat boosts.
  getUserChatBoosts,

  /// Returns the webhook info.
  getWebhookInfo,

  /// Sets an inline game's score.
  setInlineGameScore,

  /// Unpins all general forum topic messages.
  unpinAllGeneralForumTopicMessages,

  /// Gets a chat's member count (deprecated, use getChatMemberCount instead).
  getChatMembersCount,

  /// Gets information about the connection of the bot with a business account.
  getBusinessConnection,

  /// Replaces an existing sticker in a sticker pack.
  replaceStickerInSet,

  /// Refunds a successful payment in Telegram Stars.
  refundStarPayment,

  /// Returns the bot's Telegram Star transactions in chronological order.
  getStarTransactions,

  /// Sends paid media.
  sendPaidMedia,

  /// Creates a subscription invite link for a channel chat.
  createChatSubscriptionInviteLink,

  /// Edits a subscription invite link created by the bot.
  editChatSubscriptionInviteLink,

  /// Edits user's star subscription.
  editUserStarSubscription,

  /// Changes the emoji status for a given user.
  setUserEmojiStatus,

  /// Stores a message that can be sent by a user of a Mini App.
  savePreparedInlineMessage,

  /// Returns the list of gifts that can be sent by the bot to users.
  getAvailableGifts,

  /// Sends a gift to the given user.
  sendGift,

  /// Verifies a user on behalf of the organization which is represented by the bot.
  verifyUser,

  /// Verifies a chat on behalf of the organization which is represented by the bot.
  verifyChat,

  /// Removes verification from a user who is currently verified.
  removeUserVerification,

  /// Removes verification from a chat that is currently verified.
  removeChatVerification,

  /// Marks a message as read on behalf of the business.
  readBusinessMessage,

  /// Deletes a message on behalf of the business
  deleteBusinessMessages,

  /// Change the first and last name of a managed business account
  setBusinessAccountName,

  /// Change username of a managed business account
  setBusinessAccountUsername,

  /// Change the bio of a managed business account
  setBusinessAccountBio,

  /// Change the profile picture of a managed account
  setBusinessAccountProfilePhoto,

  /// Removes the profile photo of a managed business account
  removeBusinessAccountProfilePhoto,

  /// Changes the privacy settings pertaining to incoming gifts in a managed business account.
  setBusinessAccountGiftSettings,

  /// Returns the amount of Telegram Stars owned by a managed business account
  getBusinessAccountStarBalance,

  /// Transfers Telegram Stars from the business account balance to the bot's balance
  transferBusinessAccountStars,

  /// Get business account gifts method
  getBusinessAccountGifts,
  ;

  /// Returns the name of the API method as a string, matching the Telegram Bot API endpoint.
  String get name => toString().split('.').last;

  /// Checks if a given string matches any API method name.
  ///
  /// Returns true if the method exists, false otherwise.
  static bool isExistingMethod(String name) {
    return values.any((method) => method.name == name);
  }

  /// Gets an APIMethod enum value from a string path.
  ///
  /// Returns the corresponding enum value if found.
  /// Throws if no matching method is found.
  static APIMethod method(String path) {
    return APIMethod.values.firstWhere((element) => element.name == path);
  }

  /// List of API methods that are used to send messages of any kind.
  ///
  /// This includes sending text messages, photos, videos, etc.
  static List<APIMethod> get sendMethods {
    return [
      APIMethod.sendMessage,
      APIMethod.forwardMessage,
      APIMethod.copyMessage,
      APIMethod.sendPhoto,
      APIMethod.sendAudio,
      APIMethod.sendDocument,
      APIMethod.sendVideo,
      APIMethod.sendAnimation,
      APIMethod.sendVoice,
      APIMethod.sendVideoNote,
      APIMethod.sendMediaGroup,
      APIMethod.sendLocation,
      APIMethod.sendVenue,
      APIMethod.sendContact,
      APIMethod.sendPoll,
      APIMethod.sendDice,
      APIMethod.sendChatAction,
      APIMethod.sendSticker,
      APIMethod.sendGame,
      APIMethod.sendPaidMedia,
    ];
  }
}
