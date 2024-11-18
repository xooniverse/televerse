part of 'types.dart';

/// Method - these are the available methods in the Telegram Bot API.
enum APIMethod {
  /// Get Updates - returns the updates
  getUpdates._("getUpdates"),

  /// Set Webhook - sets the webhook
  setWebhook._("setWebhook"),

  /// Delete Webhook - deletes the webhook
  deleteWebhook._("deleteWebhook"),

  /// Get Me - returns the bot's information
  getMe._("getMe"),

  /// Log Out - logs the bot out
  logOut._("logOut"),

  /// Close - closes the bot
  close._("close"),

  /// Send Message - sends a message
  sendMessage._("sendMessage"),

  /// Forward Message - forwards a message
  forwardMessage._("forwardMessage"),

  /// Copy Message - copies a message
  copyMessage._("copyMessage"),

  /// Send Photo - sends a photo
  sendPhoto._("sendPhoto"),

  /// Send Audio - sends an audio
  sendAudio._("sendAudio"),

  /// Send Document - sends a document
  sendDocument._("sendDocument"),

  /// Send Video - sends a video
  sendVideo._("sendVideo"),

  /// Send Animation - sends an animation
  sendAnimation._("sendAnimation"),

  /// Send Voice - sends a voice
  sendVoice._("sendVoice"),

  /// Send Video Note - sends a video note
  sendVideoNote._("sendVideoNote"),

  /// Send Media Group - sends a media group
  sendMediaGroup._("sendMediaGroup"),

  /// Send Location - sends a location
  sendLocation._("sendLocation"),

  /// Send Venue - sends a venue
  sendVenue._("sendVenue"),

  /// Send Contact - sends a contact
  sendContact._("sendContact"),

  /// Send Poll - sends a poll
  sendPoll._("sendPoll"),

  /// Send Dice - sends a dice
  sendDice._("sendDice"),

  /// Send Chat Action - sends a chat action
  sendChatAction._("sendChatAction"),

  /// Get User Profile Photos - gets a user's profile photos
  getUserProfilePhotos._("getUserProfilePhotos"),

  /// Get File - gets a file
  getFile._("getFile"),

  /// Kick Chat Member - kicks a chat member
  banChatMember._("banChatMember"),

  /// Unban Chat Member - unbans a chat member
  unbanChatMember._("unbanChatMember"),

  /// Restrict Chat Member - restricts a chat member
  restrictChatMember._("restrictChatMember"),

  /// Promote Chat Member - promotes a chat member
  promoteChatMember._("promoteChatMember"),

  /// Set Chat Administrator Custom Title - sets a chat administrator's custom title
  setChatAdministratorCustomTitle._("setChatAdministratorCustomTitle"),

  /// Ban Chat Sender Chat - bans a chat sender chat
  banChatSenderChat._("banChatSenderChat"),

  /// Unban Chat Sender Chat - unbans a chat sender chat
  unbanChatSenderChat._("unbanChatSenderChat"),

  /// Set Chat Permissions - sets a chat's permissions
  setChatPermissions._("setChatPermissions"),

  /// Export Chat Invite Link - exports a chat's invite link
  exportChatInviteLink._("exportChatInviteLink"),

  /// Create Chat Invite Link - creates a chat's invite link
  createChatInviteLink._("createChatInviteLink"),

  /// Edit Chat Invite Link - edits a chat's invite link
  editChatInviteLink._("editChatInviteLink"),

  /// Revoke Chat Invite Link - revokes a chat's invite link
  revokeChatInviteLink._("revokeChatInviteLink"),

  /// Approve Chat Join Request - approves a chat's join request
  approveChatJoinRequest._("approveChatJoinRequest"),

  /// Decline Chat Join Request - declines a chat's join request
  declineChatJoinRequest._("declineChatJoinRequest"),

  /// Set Chat Photo - sets a chat's photo
  setChatPhoto._("setChatPhoto"),

  /// Delete Chat Photo - deletes a chat's photo
  deleteChatPhoto._("deleteChatPhoto"),

  /// Set Chat Title - sets a chat's title
  setChatTitle._("setChatTitle"),

  /// Set Chat Description - sets a chat's description
  setChatDescription._("setChatDescription"),

  /// Pin Chat Message - pins a chat message
  pinChatMessage._("pinChatMessage"),

  /// Unpin Chat Message - unpins a chat message
  unpinChatMessage._("unpinChatMessage"),

  /// Unpin All Chat Messages - unpins all chat messages
  unpinAllChatMessages._("unpinAllChatMessages"),

  /// Leave Chat - leaves a chat
  leaveChat._("leaveChat"),

  /// Get Chat - gets a chat
  getChat._("getChat"),

  /// Get Chat Administrators - gets a chat's administrators
  getChatAdministrators._("getChatAdministrators"),

  /// Get Chat Member Count - gets a chat's member count
  getChatMemberCount._("getChatMemberCount"),

  /// Get Chat Member - gets a chat member
  getChatMember._("getChatMember"),

  /// Set Chat Sticker Set - sets a chat's sticker set
  setChatStickerSet._("setChatStickerSet"),

  /// Delete Chat Sticker Set - deletes a chat's sticker set
  deleteChatStickerSet._("deleteChatStickerSet"),

  /// Get Forum Topic Icon Stickers - gets a forum topic's icon stickers
  getForumTopicIconStickers._("getForumTopicIconStickers"),

  /// Create Forum Topic - creates a forum topic
  createForumTopic._("createForumTopic"),

  /// Edit Forum Topic - edits a forum topic
  editForumTopic._("editForumTopic"),

  /// Close Forum Topic - closes a forum topic
  closeForumTopic._("closeForumTopic"),

  /// Reopen Forum Topic - reopens a forum topic
  reopenForumTopic._("reopenForumTopic"),

  /// Delete Forum Topic - deletes a forum topic
  deleteForumTopic._("deleteForumTopic"),

  /// Unpin All Forum Topic Messages - unpins all forum topic messages
  unpinAllForumTopicMessages._("unpinAllForumTopicMessages"),

  /// Edit General Forum Topic - edits a general forum topic
  editGeneralForumTopic._("editGeneralForumTopic"),

  /// Close General Forum Topic - closes a general forum topic
  closeGeneralForumTopic._("closeGeneralForumTopic"),

  /// Reopen General Forum Topic - reopens a general forum topic
  reopenGeneralForumTopic._("reopenGeneralForumTopic"),

  /// Hide General Forum Topic - hides a general forum topic
  hideGeneralForumTopic._("hideGeneralForumTopic"),

  /// Unhide General Forum Topic - unhides a general forum topic
  unhideGeneralForumTopic._("unhideGeneralForumTopic"),

  /// Answer Callback Query - answers a callback query
  answerCallbackQuery._("answerCallbackQuery"),

  /// Set My Commands - sets a bot's commands
  setMyCommands._("setMyCommands"),

  /// Delete My Commands - deletes a bot's commands
  deleteMyCommands._("deleteMyCommands"),

  /// Get My Commands - gets a bot's commands
  getMyCommands._("getMyCommands"),

  /// Set My Name - sets a bot's name
  setMyName._("setMyName"),

  /// Get My Name - gets a bot's name
  getMyName._("getMyName"),

  /// Set My Description - sets a bot's description
  setMyDescription._("setMyDescription"),

  /// Get My Description - gets a bot's description
  getMyDescription._("getMyDescription"),

  /// Set My Short Description - sets a bot's short description
  setMyShortDescription._("setMyShortDescription"),

  /// Get My Short Description - gets a bot's short description
  getMyShortDescription._("getMyShortDescription"),

  /// Set Chat Menu Button - sets a chat's menu button
  setChatMenuButton._("setChatMenuButton"),

  /// Get Chat Menu Button - gets a chat's menu button
  getChatMenuButton._("getChatMenuButton"),

  /// Set My Default Administrator Rights - sets a bot's default administrator rights
  setMyDefaultAdministratorRights._("setMyDefaultAdministratorRights"),

  /// Get My Default Administrator Rights - gets a bot's default administrator rights
  getMyDefaultAdministratorRights._("getMyDefaultAdministratorRights"),

  /// Edit Message Text - edits a message's text
  editMessageText._("editMessageText"),

  /// Edit Message Caption - edits a message's caption
  editMessageCaption._("editMessageCaption"),

  /// Edit Message Media - edits a message's media
  editMessageMedia._("editMessageMedia"),

  /// Edit Message Live Location - edits a message's live location
  editMessageLiveLocation._("editMessageLiveLocation"),

  /// Stop Message Live Location - stops a message's live location
  stopMessageLiveLocation._("stopMessageLiveLocation"),

  /// Edit Message Reply Markup - edits a message's reply markup
  editMessageReplyMarkup._("editMessageReplyMarkup"),

  /// Stop Poll - stops a poll
  stopPoll._("stopPoll"),

  /// Delete Message - deletes a message
  deleteMessage._("deleteMessage"),

  /// Send Sticker - sends a sticker
  sendSticker._("sendSticker"),

  /// Get Sticker Set - gets a sticker set
  getStickerSet._("getStickerSet"),

  /// Get Custom Emoji Stickers - gets custom emoji stickers
  getCustomEmojiStickers._("getCustomEmojiStickers"),

  /// Upload Sticker File - uploads a sticker file
  uploadStickerFile._("uploadStickerFile"),

  /// Create New Sticker Set - creates a new sticker set
  createNewStickerSet._("createNewStickerSet"),

  /// Add Sticker To Set - adds a sticker to a set
  addStickerToSet._("addStickerToSet"),

  /// Set Sticker Position In Set - sets a sticker's position in a set
  setStickerPositionInSet._("setStickerPositionInSet"),

  /// Delete Sticker From Set - deletes a sticker from a set
  deleteStickerFromSet._("deleteStickerFromSet"),

  /// Set Sticker Emoji List - sets a sticker's emoji list
  setStickerEmojiList._("setStickerEmojiList"),

  /// Set Sticker Keywords - sets a sticker's keywords
  setStickerKeywords._("setStickerKeywords"),

  /// Set Sticker Mask Position - sets a sticker's mask position
  setStickerMaskPosition._("setStickerMaskPosition"),

  /// Set STicker Set Title - sets a sticker set's title
  setStickerSetTitle._("setStickerSetTitle"),

  /// Set Sticker Set Thumbnail - sets a sticker set's thumbnail
  setStickerSetThumbnail._("setStickerSetThumbnail"),

  /// Set Custom Emoji Sticker Set Thumbnail - sets a custom emoji sticker set's thumbnail
  setCustomEmojiStickerSetThumbnail._("setCustomEmojiStickerSetThumbnail"),

  /// Delete Sticker Set - deletes a sticker set
  deleteStickerSet._("deleteStickerSet"),

  /// Answer Inline Query - answers an inline query
  answerInlineQuery._("answerInlineQuery"),

  /// Answer Web App Query - answers a web app query
  answerWebAppQuery._("answerWebAppQuery"),

  /// Send Invoice - sends an invoice
  sendInvoice._("sendInvoice"),

  /// Create Invoice Link - creates an invoice link
  createInvoiceLink._("createInvoiceLink"),

  /// Answer Shipping Query - answers a shipping query
  answerShippingQuery._("answerShippingQuery"),

  /// Answer Pre Checkout Query - answers a pre checkout query
  answerPreCheckoutQuery._("answerPreCheckoutQuery"),

  /// Set Passport Data Errors - sets passport data errors
  setPassportDataErrors._("setPassportDataErrors"),

  /// Send Game - sends a game
  sendGame._("sendGame"),

  /// Set Game Score - sets a game's score
  setGameScore._("setGameScore"),

  /// Get Game High Scores - gets a game's high scores
  getGameHighScores._("getGameHighScores"),

  /// Set Message Reaction
  setMessageReaction._("setMessageReaction"),

  /// Delete Messages
  deleteMessages._("deleteMessages"),

  /// Forward Messages
  forwardMessages._("forwardMessages"),

  /// Copy Messages
  copyMessages._("copyMessages"),

  /// Get User Chat Boosts - gets a user's active chat boosts
  getUserChatBoosts._("getUserChatBoosts"),

  /// Get Webhook Info - returns the webhook info
  getWebhookInfo._("getWebhookInfo"),

  /// Set Inline Game Score - sets an inline game's score
  setInlineGameScore._("setInlineGameScore"),

  /// Unpin All General Forum Topic Messages - unpins all general forum topic messages
  unpinAllGeneralForumTopicMessages._("unpinAllGeneralForumTopicMessages"),

  /// Get Chat Members Count - gets a chat's member count
  getChatMembersCount._("getChatMembersCount"),

  /// To get information about the connection of the bot with a business account
  getBusinessConnection._("getBusinessConnection"),

  /// To replace an exsiting sticker in a sticker pack
  replaceStickerInSet._("replaceStickerInSet"),

  /// To refunds a successful payment in Telegram Stars.
  refundStarPayment._("refundStarPayment"),

  /// Returns the bot's Telegram Star transactions in chronological order
  getStarTransactions._("getStarTransactions"),

  /// Sends paid media
  sendPaidMedia._("sendPaidMedia"),

  /// Use this method to create a subscription invite link for a channel chat
  createChatSubscriptionInviteLink._("createChatSubscriptionInviteLink"),

  /// Use this method to edit a subscription invite link created by the bot.
  editChatSubscriptionInviteLink._("editChatSubscriptionInviteLink"),

  /// Edit user's star subscription
  editUserStarSubscription._("editUserStarSubscription"),

  /// Changes the emoji status for a given user
  setUserEmojiStatus._("setUserEmojiStatus"),

  /// Stores a message that can be sent by a user of a Mini App
  savePreparedInlineMessage._("savePreparedInlineMessage"),
  ;

  /// The name of the method.
  final String name;

  /// The method to use when making the request.
  const APIMethod._(this.name);

  /// Is exisiting method
  static bool isExistingMethod(String name) {
    return values.any((method) => method.name == name);
  }

  /// Get API Method from path
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

  @override
  String toString() => name;
}
