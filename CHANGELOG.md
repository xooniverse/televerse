# 1.25.0

- 🤖 Bot API 7.10
- Added `Bot.onPaidMediaPurchase` for listening to [PaidMediaPurchased](https://core.telegram.org/bots/api#paidmediapurchased) updates.
- Added much more helper methods on `Context`

# 1.24.0

- 🤖 Bot API 7.9
- Added new methods
- Published Televerse Documentation website (https://televerse.xooniverse.com)

# 1.23.1

- Exposed couple of more properties in Context
- Added `Bot.additionalInfo`
- Documentation website is up.

# 1.23.0

- 🤖 Bot API 7.8
- Added `User.hasMainWebApp`
- Support for managing pinned messages on behalf of user (Business Bots)

# 1.22.5

- Just a re-release to move the repo to [@Xooniverse](https://github.com/xooniverse)

# 1.22.4

- Retracted :)

# 1.22.3

- Fixes [#281](https://github.com/xooniverse/televerse/issues/281) (Thanks to [@IsD4n73](https://github.com/IsD4n73) for raising the issue)
- Updated the `Bot.start` and `Bot.stop` logic
- Added `LongPolling.allExcept`

# 1.22.2

- Retracted

# 1.22.1

- Fixed an issue with the `InlineQueryResultGif` class
- Made the bot initalization method public with `Bot.init` method.
- Updated the examples page

# 1.22.0

- 🤖 Bot API 7.7
- Added the `RefundedPayment` class and the `Message.refundedPayment` property
- Initalizes fetcher on the constructor
- Moved the inital `getMe` call to be made from hte `Bot.start` method
- Remoed Pending Calls (which caused some troubles in the handler scopes order)
- Removed forked handlers, - well who knew it was there?
- All thanks to [@im-trisha](https://github.com/im-trisha)
- Fixed an issue that caused Bot to listen to the official Bot API even though
  created with `Bot.local` -
  [#275](https://github.com/xooniverse/televerse/issues/275) (Thanks to
  [@devdocs](https://github.com/devsdocs) for reporting)
- Fixed [#274](https://github.com/xooniverse/televerse/issues/274)
- Fix [#277](https://github.com/xooniverse/televerse/issues/277)
- Fix [#104](https://github.com/xooniverse/televerse/issues/104)
- Fixed more typing issues.
- `Bot.start` now accepts zero parameters.
- Added `Context.maybeId` a nullable ID instance

# 1.21.1

- `Webhook` now accepts a `shouldSetWebhook` flag which indicates whether the
  `setWebhook` call to be made implicitly or not.
- Made the `url` property optional in Webhook.
- Minor tweaks

# 1.21.0

- 🤖 Bot API 7.6
- Added methods to register callbacks for handling paid media in bot messages:
  - `Bot.onPaidMedia`: Registers a callback for whenever any type of paid media
    is received in messages.
  - `Bot.onPaidMediaVideo`: Registers a callback for whenever paid media videos
    are received in messages.
  - `Bot.onPaidMediaPhoto`: Registers a callback for whenever paid media photos
    are received in messages.
- New method `RawAPI.sendPaidMedia` is added to send paid media.

# 1.20.0

- 🥳 Support for Custom Context
- Added detailed
  [usage documentation for custom context here](https://televerse.xooniverse.com/advanced/custom-context.html).
- The custom context feature allows you to extend the base functionality of your
  bot by using your own custom context classes.
- Added `Bot.contextBuilder` method
- Refactors across the library to cope with `<CTX extends Context>`
  - Refactored `Bot`, `Handler`, `Fetcher`, `Menu`, `BotError`, `Conversation`
    etc.
- Fixed an issue in `KeyboardMenu` that caused some features not to work.
- Added documentation on almost all new classes and typedefs.

# 1.19.5

- 🧑🏻‍🔧 Fix in `InlineQueryResultBuilder` methods `voice` and `video`.
- Improved `Webhook` implementation. Works perfect now!
- Added example for building bot with `Webhook` fetcher in
  [Examples Repo](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/webhook_example.dart)
- Added detailed documentation for `InlineQueryResultBuilder` and `Webhook`
  classes.

# 1.19.4

- Minor README fix
- Fixes in documentation comments

# 1.19.3

- Changed return type of the `Transformer.transform` from
  `FutureOr<Map<String, dynamic>>` to `Future<Map<String, dynamic>>` because
  it'll always have to return a Future.
- Minor type adjustment on the `typedef PayloadFiles`.
- ✨ Two new plugins are released for Televerse:
  [auto_chat_action](https://pub.dev/packages/auto_chat_action) and
  [parse_mode_setter](https://pub.dev/packages/parse_mode_setter)

# 1.19.2

- ⚠️ Changed the `Transformer.transform` method definition.
- Improved the `Transformer` class
- Added new class `Payload` to accept payload to the API calls
- Added typedef `APICaller` for the method which actually invokes the API
  endpoinds.

# 1.19.1

- 🆕 Support for Middlewares & Transformers
- Middlewares lets you attach handlers that are run before your main handler is
  executed.
- Added `Middleware` class to create a middleware.
- Added `Transformer` class to create a transformer.
- A Transformer can be attached to the `RawAPI` which then can alter the request
  payload.
- Added `use` method on `Bot`, `Context` and `RawAPI` to attach middlewares.
- Added default error handler method. Now, bot will crash with a pretty message.
- Added `Context.middlewareStorage` as a `Map<String, dynamic>` to store any
  output from middleware functions.
- ✍️ `Bot.onStop` method can now be asynchronous.
  [#257](https://github.com/xooniverse/televerse/pull/257) (Thanks to @devsdocs)
- ⚠️ Type of `Webhook.certificate` is changed to InputFile as described by the
  official documentation.
- Added examples for
  [Middleware](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/middleware_example.dart)
  and
  [Transformer](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/transformer_example.dart)
  usage in Examples repo.

# 1.19.0

- [Retracted]

# 1.18.0

- 🤖 Bot API 7.5
- Improved context aware methods
- Added `WithID` abstraction

# 1.17.2

- Added `considerCaption` parameter in `Bot.command` mehtod to match commands in
  the caption of video/photo messages.
- 🐞 Fixed: JSON parsing bug in `UsersShared` causing the `users` field to be
  null and resulting in crashes.

# 1.17.1

- ‼️ Strict typing for `ctx.editMessageMedia` and `ctx.editMessageReplyMarkup`
- Fix: `ChatID` constuctor accepted `dynamic`

# 1.17.0

- 🤖 Bot API 7.4 (May 28, 2024)
- Refactors and formatting improvements

# 1.16.0

- 🤖 Bot API 7.3 (May 6, 2024)
- Added `Keyboard.remove` method to remove Keyboard.
- Refactors and improvements

# 1.15.14

- Removed unnecessary print in the callback setter.
- Fixed `BotLink` link generation.

# 1.15.13

- Removed usage of `dart:mirrors`
- Updated README

# 1.15.12

- Fix: Forked Handlers caused crash.

# 1.15.11

- Minor fix in update processing
- Added `businessConnectionId` to Context aware methods.

# 1.15.10

- Added `Bot.fromAPI` constructor for creating Bot instance from `RawAPI`
  instance.
- `Bot.command`, `Bot.text`, `Bot.hears`, and many more methods now listens to
  all Message types (Message, Channel Posts, and edited messages of both)
- ⚠️ Added `chatId` parameter to `Bot.shippingQuery` and `Bot.preCheckoutQuery`.
- Refactored code for quality and better readability and added docs.
- Added `ScopeOptions` class that can contain additional info for handler scope.
- `ScopeOptions.forked` to create forked handlers. Forked handlers are run
  without conditions.
- `ScopeOptions.customPredicate` can be used to set a middleware to check if the
  update should be processed or skipped.
- Migrated to `Dart 3.0.0`
- `Bot.removeScope` can be used to remove already set handlers.
- Accepts `ScopeOption` on both menus as well.

# 1.15.9

- Improved efficiency by removing redundant `getMe` calls while registering
  `command` handlers and `whenMentioned` handlers.
- Made `LongPolling.allowedUpdates` nullable, and removed the constant empty
  list initialization.
- Updated the README.

# 1.15.8

- Introducing `TGException` enum which is a collection of different possible
  Telegram exceptions binded with their reasons and possible solutions.
- Added `LoggerOptions.only` method to turn on logging for ONLY specified
  actions.
- Prints resposne data if any on exception with Logger.
- Prints `StackTrace` along with uncaught `TelegramException` errors.

# 1.15.7

- `Context.args` will no longer return null.
- ⚠️ Updated `RawAPI` constructor
- Updated DartDoc comments for the `Bot.command` method.
- Added new methods to `Keyboard` for simplicity.

# 1.15.6

- Added missing methods in the `InlineKeyboard`

# 1.15.5

- Completes the helper class `MessageContentGenerator` for ease of use to create
  `InputMessageContent`.
- All types of InputMessageContent can be now generated with the new
  `MessageContentGenerator` methods `text`, `location`, `venue`, `contact` and
  `invoice`.
- Updated README, and added an example for handling inline queries.

# 1.15.4

- 🆕 `InlineQueryResultBuilder` utility class is added
- The `InlineQueryResultBuilder` can be used to build Inline Query Results in a
  better and easier way.
- Made `callback_data` required for `InlineMenu.text`
- 👨🏻‍🔧 Fix `createNewStickerSet` (Thanks to @defuera for pointing out the
  issue.)
- Removed unnecessary JSON encodings
- Improved `LoggerOptions` and logging the requests and responses.
- Refactors around `ForceReply`, `ChatMember`, etc.

# 1.15.3

- Fix `InputSticker` conversion to json 🤦 (thx @defuera)

# 1.15.2

- Add missing field `InputStickerFormat` to `InputSticker` class. (Thanks to
  @defuera)
- Generic typing removed for `HandlerScope` (This doesn't affect anything on the
  public API)

# 1.15.1

- Fix an issue with the `RawAPI.banChatMember` (Thanks to @Sominemo for
  [#223](https://github.com/xooniverse/televerse/pull/223))

# 1.15.0

- 🤖 Bot API 7.2!
- All changes from the Bot API 7.2 is added to this release.
- Added the methods `Bot.onBusinessConnection`, `Bot.onBusinessMessage`,
  `Bot.onBusinessMessageEdited`, `Bot.onBusinessMessageDeleted` to handle
  business messages and connection related updates.
- Added `Context.businessConnection`, `Context.businessMessage`,
  `Context.editedBusinessMessage`, `Context.businessMessageDelete` getters to
  get the business connection, business message, edited business message, and
  business message delete updates respectively.

# 1.14.0

- 🆕 Whole new version of `TeleverseMenu`
- Both `InlineMenu` and `KeyboardMenu` are now can be used to create menus with
  all available button types.
- ‼️ **BREAKING**: Removed the `Session`, `SessionManager`, and all Televerse
  Session related methods and properties.
- Refactored the Unix Time to DateTime conversion.

# 1.13.4

- Added a new property `timeout` to `Bot` and `RawAPI` classes to set the
  timeout for the API requests.
- The timeout does not affect the long polling (getUpdates) requests.
- Added `TeleverseExceptionType` to categorize the exceptions that can be thrown
  from the Televerse library.
- The `TeleverseException` class now has a `type` property to represent the type
  of the exception.
- Added `RawAPI.closeClient` method to close the HTTP client.
- Removed the `HttpClient` export.

# 1.13.3

- Fix [#212](https://github.com/xooniverse/televerse/issues/212) -
  `setChatMenuButton` required `ID` instance where it should be optional.
- Thanks to [@Sominemo](https://github.com/Sominemo) for raising this issue.

# 1.13.2

- 🤖 Bot API 7.1 is here.
- [Refer to official changelog here.](https://core.telegram.org/bots/api-changelog#february-16-2024)

# 1.13.1

- Improved the `Conversation` API to make it easier and more efficient to use.
- Added the parameter `clearUnfulfilled` (true by default) to all `waitFor`
  methods in Conversation which will clear the unfulfilled Conversation
  listeners when new one is attached.
- Added `Conversation.clear` and `Conversation.clearAll` methods to clear
  attached listeners.
- All conversation method now return nullable `Context` object, this is because
  when clearing the unfulfilled listeners, the method will return `null`.
- Added `ConversationException` class to represent the exceptions that can be
  thrown from the `Conversation` class. For now, the only exception that can
  possibly be thrown is the Timeout Exception.

# 1.13.0

- All Televerse listeners are now based on the single `Context` class.
- Removed all the different `Context` subclasses, such as `MessageContext`,
  `InlineQueryContext`, `CallbackQueryContext` etc.
- Added context-aware methods for almost all the methods in the `RawAPI` class.
- `Conversation.waitFor` methods no longer accepts generic type. All the methods
  return the `Context` class.

# 1.12.7

- Now Televerse uses `APIMethod` instead of hard coded strings to call API
  endpoints.
- Cleared missing `APIMethod` implementations and typos.
- Cleaned up the code.

# 1.12.6

- Updated Example File

# 1.12.5

- Added `ID` parameter to `toJson` of many `InlineQueryResult` classes.

# 1.12.4

- Implemented `MessageOrigin.fromJson` which was part of the Bot API 7.0

# 1.12.3

- Made almost all models to have const constructors
- `Bot.inlineQuery` method is updated to accept `Pattern query` to listen to
  inline queries that match the passed pattern. It had an unintended behavior
  before.
- Updated `toString` on `InlineQueryResultType` enum for it to work with
  `RawAPI.answerInlineQuery`

# 1.12.2

- Fixed an issue with the `InlineKeyboardButton` class that caused a crash when
  `webAppInfo` parameter is set.
  ([#190](https://github.com/xooniverse/televerse/issues/190))

# 1.12.0

- Bot API 7.0 (December 29, 2023)

## Reactions! 🎉

- New Context objects, `MessageReactionContext` &
  `MessageReactionCountUpdatedContext` to represent `message_reaction` and
  `message_reaction_count` updates respectively.
- Added `Televerse.onMessageReaction` and `Televerse.onMessageReactionCount`
  methods to listen to `message_reaction` and `message_reaction_count` updates
  respectively.
- 🆕 Added methods `MessageContext.react` and `MessageContext.reactMultiple` to
  react to a message.
- 🆕 Added `Televerse.whenReacted` method to listen to particular reactions on a
  message.

## Replies 2.0 🗯

- ⚠️ BREAKING: Replaced all usages of `replyToMessageId` and
  `allowSendingWithoutReply` parameters with `replyParameters` of Type
  `ReplyParameters`.
- ⚠️ Affected methods on `RawAPI`: `copyMessage`, `sendMessage`, `sendPhoto`,
  `sendVideo`, `sendAnimation`, `sendAudio`, `sendDocument`, `sendSticker`,
  `sendVideoNote`, `sendVoice`, `sendLocation`, `sendVenue`, `sendContact`,
  `sendPoll`, `sendDice`, `sendInvoice`, `sendGame`, and `sendMediaGroup`.
- ⚠️ Affected methods on `MessageContext`: `reply`, `replyWithPhoto`,
  `replyWithAudio`, `replyWithDocument`, `replyWithVideo`, `replyWithVideoNote`,
  `replyWithVoice`, `replyWithMediaGroup`, `replyWithLocation`,
  `replyWithVenue`, `replyWithContact`, `replyWithPoll`, `replyWithDice`,
  `replyWithGame`, `replyWithAnimation`, `replyWithSticker`.

## Link Preview Customization 📎

- ⚠️ BREAKING: Replaced the parameter `disableWebPagePreview` with
  `linkPreviewOptions` in the methods `RawAPI.sendMessage` and
  `RawAPI.editMessageText`.
- ⚠️ Affected methods on Televerse: `ChatJoinRequestContext.replyToUser`,
  `ChatMemberUpdatedContext.replyToUser`, `CallbackQueryContext.editMessage`,
  `MessageContext.reply`, and `MessageContext.editMessageText`.
- ⚠️ BREAKING: `InputTextMessageContent.disableWebPagePreview` is now renamed to
  `InputTextMessageContent.linkPreviewOptions` and the type is changed to
  `LinkPreviewOptions`.

## Multiple Message Actions 📨

- Added `deleteMessages`, `forwardMessages`, and `copyMessages`

## Request for multiple users 🙋‍♂️

- ⚠️ BREAKING: `KeyboardButton.requestUser` is now renamed as
  `KeyboardButton.requestUsers` and the type is changed to
  `KeyboardButtonRequestUsers`.
- Renamed the class KeyboardButtonRequestUser to KeyboardButtonRequestUsers and
  added the field max_quantity to it.
- Renamed the field `request_user` in the class KeyboardButton to
  `request_users`.
- Added the class `UsersShared`.
- Replaced the field `user_shared` in the class Message with the field
  `users_shared`.

## Chat Boosts 🚀

- 🆕 New methods to listen the `ChatBoostUpdated` and `ChatBoostRemoved`
  updates, respectively `Televerse.onChatBoosted`,
  `Televerse.onChatBoostRemoved` are added.
- 🆕 New context objects `ChatBoostUpdatedContext` and `ChatBoostRemovedContext`
  are added.

## Other Changes 🎉

- Updated `Chat` model to reflect the changes in the API.
- ⚠️ BREAKING: Added the class `MessageOrigin` and replaced the fields
  `forward_from`, `forward_from_chat`, `forward_from_message_id`,
  `forward_signature`, `forward_sender_name`, and `forward_date` with the field
  `forwardOrigin` of type `MessageOrigin` in the class `Message`.
- ⚠️ BREAKING: `CallbackQuery.message` is now of the type
  `MaybeInaccessibleMessage` instead of `Message`.

# 1.11.5

- Made the parameters inside `OrderInfo` class nullable as per the
  documentation.
- Thanks to [@Defuera](https://github.com/Defuera) for the contribution.

# 1.11.4

- Refactored the code to make it easier to maintain.
- Added `lints` as a dev dependency.

# 1.11.3

- Added [Televerse.onSuccessfulPayment] method to listen to successful payments
  service messages [#158](https://github.com/xooniverse/televerse/issues/158`)`,
  thanks to [@Defuera](https://github.com/Defuera) for the suggestion and
  [@GiuseppeFn](github.com/GiuseppeFn) for the contribution.

# 1.11.2

- Fixed an issue with the `InlineKeyboardButton` class that caused a crash when
  `webAppInfo` parameter is set.
- Moved all Telegram Models into one file. This will make it easier to maintain
  the code.

# 1.11.1

- 🤖
  [Telegram Bot API 6.9 (September 22, 2023)](https://core.telegram.org/bots/api-changelog#september-22-2023)
- Examples are now moved to the Examples Repo
- Updated Example files.

# 1.11.0

- 🤖
  [Telegram Bot API 6.8 (August 18, 2023)](https://core.telegram.org/bots/api-changelog#august-18-2023)
- Possibly breaking: The `PollAnswer.user` property is now returns a nullable
  `User` object.

# 1.10.12

- Using `LoggerOptions` unknowingly caused the bot to crash. This is now fixed.
- Thanks to [@iamcosmin](https://github.com/iamcosmin) for raising
  [#148](https://github.com/xooniverse/televerse/issues/148).
- Fixed an issue with the Http client that caused the bot to crash when an
  exception is received from the Telegram Bot API.
- Thanks to [@OttomanDeveloper](https://github.com/OttomanDeveloper) for raising
  [#151](https://github.com/xooniverse/televerse/issues/151).
- Added `Televerse.onCommand` method to listen to all commands -
  [#150](https://github.com/xooniverse/televerse/issues/150) by
  [@Defuera](https://github.com/Defuera).

# 1.10.10

- Added `LoggerOptions` class to configure the logger.
- Now the `Televerse` class accepts a `LoggerOptions` object to setup logging
  requests and responses to and from the Telegram Bot API.
- Added the `APIMethod` enum to represent the Telegram Bot API methods.
- You can pass the List of `APIMethod` to the `LoggerOptions` class to log only
  the specified methods. By default all methods will be logged.

# 1.10.9

- Added `Televerse.setNextStep` method which can be used to set next step
  handler.
- Catches `DioExceptions` and throws meaningful exceptions.

# 1.10.8

- ⚠️ BREAKING CHANGES
- Added `BotError` class that will be passed to the `Televerse.onError` handler
- ⚠️ `Televerse.onError` will now only accept one parameter which is instance of
  `BotError`
- ⚠️ Made the `InputFile` constructor private. Use `InputFile.fromFile` or
  `InputFile.fromBytes` or `InputFile.fromUrl` or `InputFile.fromFileId` to
  create an `InputFile` instance.
- 🆕 Added the `InputFile.fromBytes` constructor to create an `InputFile`
  instance from a `Uint8List` object.
- ⚙️ Migrated to `dio` instead of `http` package.
- Refactors & tets

# 1.10.7

- Fixed a minor formatting issue

# 1.10.6

- Fix [#135](https://github.com/xooniverse/televerse/issues/135) - Methods in
  `MessageContext` failed to work when message is in a General Topic of a Forum.
- Improved error handling.
- All exceptions thrown inside handler methods will now be caught and passed to
  the `onError` method.
- That is no more unexpected crashes even if you don't handle the exceptions
  inside the handler methods.
- Removed some unnecessary code.
- Updated long polling error handling.

# 1.10.4

- Fix [#130](https://github.com/xooniverse/televerse/issues/130) -
  `RawAPI.editMessageMedia` method now works as expected.
- Added callback data to `InlineMenu` -
  [#129](https://github.com/xooniverse/televerse/pull/129) (Thanks to
  [@devsdocs](https://github.com/devsdocs)).
- Now all `RawAPI` methods uses HTTP `POST` / `Multipart POST` requests instead
  of `GET` requests.

# 1.10.3

- Introducing `Televerse Menu`.
- Added `InlineMenu` and `KeyboardMenu` classes to represent an inline menu and
  a keyboard menu respectively.
- Added `bot.attachMenu` method to attach a menu to the bot.
- Added `bot.removeMenu` method to remove a menu listeners from from the bot.
- Usage of `Televerse Menu` is demonstrated in
  [/example/menu_bot.dart](./example/menu_bot.dart).
- Fixed an issue with the `MessageContext` and `MessageMixin`-
  [#124](https://github.com/xooniverse/televerse/issues/124)
- Improved code quality.
- Fixed the incorrect type of `messagThreadId` parameter in multiple methods.
- Updated `ChatMemberUpdatedContext` class to support both `chat_member` and
  `my_chat_member` updates.
- Added `bot.me` getter to get the information about the bot. (Thanks to
  [@GiuseppeFn](https://github.com/GiuseppeFn))
- Added `bot.getMe` method to get the information about the bot and set it to
  the `bot.me` getter.

# 1.10.2

- Fixed issue that might cause a crash when `LongPolling.allUpdates` is used.
- Rectified the `MessageContext.args` getter. Thanks to
  [@devsdocs](https://github.com/devsdocs) for
  [PR #121](https://github.com/xooniverse/televerse/pull/121).
- More code improvements. Thanks to [@aaxxios](https://github.com/aaxxios) for
  [PR #122](https://github.com/xooniverse/televerse/pull/122)

# 1.10.1

- Fixed an issue with the `command` method that crashed the bot when setting up
  the listener.
- Thanks to [@GiuseppeFn](https://github.com/GiuseppeFn) for reporting this
  issue.
- Refactored code for better performance.

# 1.10.0

- Introducing the `Televerse Conversation`! 🎉
- The conversation API lets you create straight forward conversations with the
  users.
- Added `Conversation` class to represent a conversation.
- Added `waitForTextMessage`, `waitForPhotoMessage`, `waitForVideoMessage`,
  `waitForVoiceMessage`, `waitForDocumentMessage`, `waitForContactMessage`,
  `waitForLocationMessage`, `waitForVenueMessage`, `waitForPollMessage`,
  `waitForDiceMessage`, `waitForGameMessage`, `waitForStickerMessage`,
  `waitForVideoNoteMessage`, `waitToStartVideoChat`, `waitToEndVideoChat` &
  `waitForCallbackQuery` methods to `Conversation` class.
- Added an example to demonstrate the usage of Televerse conversations in
  [/example/conversation_example.dart](./example/conversation_example.dart).
- Added `MessageContext.args` getter to get the arguments passed to the command.
  Thanks to [@GiuseppeFn](https://github.com/GiuseppeFn) for the contribution.
  [#115](https://github.com/xooniverse/televerse/pull/115)
- Removed `MessageContext.startParameter` getter as it's no longer needed.
- Refactored examples to make it easier to understand.

# 1.9.14

- Fixed a critical issue that caused bots to crash when an exception other than
  `TelegramException` is thrown.
- The weird thing was that the `onError` method was able to catch the exception
  but it rethrows it again.
- This is now fixed and the `onError` method will not rethrow the exception.
- Thanks to [@GiuseppeFn](https://github.com/GiuseppeFn) for raising this.

# 1.9.13

- Added a whole bunch of helper methods to listen to updates.
- Namely added: `onAudio`, `onDocument`, `onPhoto`, `onSticker`, `onVideo`,
  `onVideoNote`, `onVoice`, `onContact`, `onDice`, `onGame`, `onPollMessage`,
  `onVenue`, `onLocation`, `onLiveLocation`, `onNewChatTitle`, `onNewChatPhoto`,
  `onDeleteChatPhoto`, `onPinnedMessage`, `onUsrShared`, `onChatShared`,
  `whenVideoChatScheduled`, `whenVideoChatStarted`, `whenVideoChatEnded`,
  `onVideoChatParticipantsInvited`, `onForumTopicCreated`, `onForumTopicEdited`,
  `onForumTopicClosed`, `onForumTopicReopened`, `onWebAppData`, `onAnimation`,
  `onText`, `onCaption`
- All of these methods are available on `Televerse` class and can make it easier
  to listen to various `Message` updates.

# 1.9.12

- Fixes the issue which caused the crash of bots when a `ChatJoinRequest` update
  is received.
- Thanks to @iamcosmin for taking effort to fix this issue.
  [#109](https://github.com/xooniverse/televerse/pull/109)
- The `messageThreadId` parameter noww be defaulted to the `messageThreadId`
  parameter in the incoming `Context` object on `reply` method.
- This is to make it easier to reply to a message when the discussion is on a
  Forum Topic. (Fixes
  [#110](https://github.com/xooniverse/televerse/issues/110))

# 1.9.11

- Fixes an issue that caused none of `onEditedMessage`, `onChannelPost`,
  `onEditedChannelPost`, and `myChatMember` to work.
- Thanks to [@GiuseppeFn] for rasing
  [#107](https://github.com/xooniverse/televerse/pull/106)
- Merged [#106](https://github.com/xooniverse/televerse/pull/106)

# 1.9.10

- Fix [#104](https://github.com/xooniverse/televerse/issues/104)
- When `onMessage` listener is attached it stopped all other listeners from
  working. This is now fixed.
- Updated README (some typos).

# 1.9.9

- Fix [#102](https://github.com/xooniverse/televerse/issues/102)
- Commands that tagged with `@botname` will now be matched.
- Minor changes on README & Session example.

# 1.9.8

- Televerse now can support handling updates passed to it as JSON data (without
  using a fetcher).
- This can be useful when you want to run bot on a serverless environment like
  AWS Lambda or Google Cloud Functions.
- Thanks to [@rohitsangwan01](https://github.com/rohitsangwan01) for the
  contribution. [#99](https://github.com/xooniverse/televerse/pull/99)
- `onError` can now catch errors on the Long Polling.
- Replaced all `Exception` with `TelegramException` in the library.
- Replaced the `Televerse.on` logic to an extension on `Televerse` class.

# 1.9.7

- Fix around `onError` method.

# 1.9.6

- Added `Televerse.onStop` to listen when the bot is stopped. (Fix
  [#95](https://github.com/xooniverse/televerse/issues/95))
- Added `delayDuration` parameter to `LongPolling` class to set the delay
  duration between each long polling request.
- Moved all methods in `SessionFileExtension` and `SessionsSaver` to `Session`
  and `SessionsManager` classes respectively.
- This is to simplify the API and to make it easier to use.
- Updated `http` dependency to `^1.0.0`.

# 1.9.4

- Added `SessionFileExtension` class to represent a file extension.
- Added `SessionsSaver` extension on `SessionsManager` class to save all
  sessions to a directory.
- Updated [/example/session_bot.dart](./example/session_bot.dart) file to
  reflect the changes.
- Minor breaking change: the initializer function now should accept a `int` as
  parameter.

# 1.9.3

- Fixed an issue with sessions that caused crash when not initialized.

# 1.9.2

- Introducing the `Televerse Session`! 🎉
- Televerse sessions are used to store data for chats.
- This can be used to store data for chats and to make the bot more interactive.
- Added an example to demonstrate the usage of Televerse sessions in
  `/example/session_bot.dart`.
- You should use the `Televerse.initSession` method to initialize the session.

# 1.9.1

- Added the `Televerse.on` method! 🎉
- Removed the deprecation warning from the `Televerse.on` method.

# 1.9.0

- BREAKING CHANGES! ⚠️
- Whole new `HandlerScope` class is added to make it efficient handle updates.
- All the methods in the `Televerse` class now uses the `HandlerScope` class to
  register handlers.
- This is to fix the issue
  [#84](https://github.com/xooniverse/televerse/issues/84) and to make it
  efficient to handle updates.
- Completely removed the `Event` class and related methods and getters.
- The `on` method is now Deprecated. Use the other methods in the library to
  listen for updates.
- All the getters in the `Event` class is now added to the `Televerse` class as
  methods.
- Televerse now relies only on the `onUpdate` stream to listen for updates.
- And all the errors can now be handled using the `onError` method.

# 1.8.6

- Added `UserLink` class to represent a Telegram user link.
- Added `LinkText` class. This can be used to send a link with a custom text on
  chats.
- Fixed an issue with the `Televerse.command` that caused to match unexpected
  commands.
  - This was because the `Televerse.command` method used `String.startsWith` to
    match the command.
  - Thanks to [GiuseppeFn](https://github.com/GiuseppeFn) for raising the
    [Issue #85](https://github.com/xooniverse/televerse/issues/85)
- The `HttpException` class is now renamed to `TelegramException`.
- This is to include the `ResponseParameters` object in the exception hence to
  make it easier to handle and retry if needed.
- When an exception happens in the long polling, if the error handler is set
  using `Televerse.onError` method this will now pauses the long polling till
  the `onError` handler completes its execution.

# 1.8.5

- Added the `Deeplink` class to represent a Telegram deeplink.
- Made it easy to use Telegram deeplinks by adding `BotLink`, `GroupBotLink`,
  `ChannelBotLink`, `GameLink`, `SettingsLinks` and `ShareLink` classes.
- Also added `PhoneNumberLink`, `MTProxyLink`, `Socks5Link` and `UsernameLink`.

# 1.8.4

- ✨ Simplified mentions.
- Added the new `UserMention` class to represent a user mention.
- Added an extension to `User` class to convert it to a `UserMention` object.
- Added `MessageContext.from` alias to `Message.from` property.
- Added `CustomEmoji` class to represent a Telegram custom emoji.

# 1.8.3

- Added more helper methods on `Televerse` class to listen to updates.
- Added `Televerse.onURL` method to listen to messages that contain URLs.
- Added `Televerse.onHashtag` method to listen to messages that contain
  hashtags.
- Added `Televerse.onMention` method to listen to messages that contain
  mentions.
- Added `Televerse.onEmail` method to listen to messages that contain email
  addresses.
- Added `Televerse.onPhoneNumber` method to listen to messages that contain
  phone numbers.
- Improved the overall code quality.
- Added `Televerse.whenMentioned` method to listen to messages that contain
  mentions of the bot.

# 1.8.2

- Added `PollContext`, `PollAnswerContext` classes to represent the context of a
  `poll` and `poll_answer` updates.
- Added `Televerse.poll` method to listen to `poll` updates.
- Added `Televerse.pollAnswer` method to listen to `poll_answer` updates.
- Now most of the Televerse methods return a `StreamSubscription` instead of
  `void`.
- This is to make it easier to cancel the subscription and increase the
  performance.
- Added `ChosenInlineResultContext` class to represent the context of a
  `chosen_inline_result` update and `Televerse.chosenInlineResult` method to
  listen to `chosen_inline_result` updates.
- Added `ChatJoinRequestContext` class to represent the context of a
  `chat_join_request` update and `Televerse.chatJoinRequest` method to listen to
  `chat_join_request` updates.
- Added `ShippingQueryContext` class to represent the context of a
  `shipping_query` update and `Televerse.shippingQuery` method to listen to
  `shipping_query` updates.
- Added `PreCheckoutQueryContext` class to represent the context of a
  `pre_checkout_query` update and `Televerse.preCheckoutQuery` method to listen
  to `pre_checkout_query` updates.

# 1.8.1

- Added `ChatMemberUpdatedContext` class to represent the context of a
  `chat_member` and `my_chat_member` updates.
- Added `Televerse.chatMember` and `Televerse.myChatMember` methods to listen to
  `chat_member` and `my_chat_member` updates.
- Hot fix: Fixed an issue with the `Event` class that caused unexpected
  exceptions.

# 1.8.0

- 🎖️ Televerse now supports listening to Local Bot API Server.
- Added `Televerse.local` method to create a bot instance that listens to a
  local Bot API Server.
- Added `RawAPI.local` method that can be used to create `RawAPI` instance that
  targets a local Bot API Server.
- Added `LongPolling.allUpdates` method to listen to all updates. This is to
  simplify listening to all updates including the `chat_member` updates.
- Updated `/example/test_bot.dart` file to reflect the changes.

# 1.7.2

- [BREAKING] ⚠️ - The `chat` getter on the `ChatID` class is now replaced to be a
  method of the `ID` class, and renamed to `get()`.
- This is to avoid confusion with the `chat` parameter in the `ChatID` class.
- Also, now the `get()` method is available on all the `ID` classes - `ChatID`,
  `SuperGroupID` and `ChannelID`.
- Fixed an issue that caused the Long Polling to fail.
- The issue was with the `Message.fromJson` method which was not able to parse
  the `Message` object when a `newChatPhoto` was present.
- Thanks to [@deargosep](https://github.com/deargosep) for reporting and fixing
  this issue.

# 1.7.1

- [BREAKING] ⚠️ - The parameters `name` and `languageCode` are made positional in
  the `setMyName` method and the `getMyName` method.
- Improved documentation.

# 1.7.0

- 🤖 Bot API 6.7 is added!
- [Read more here](https://github.com/xooniverse/televerse/issues/65).
- [BREAKING] 👨🏻‍🔧 - The `answerInlineQuery` will no longer accept
  `switchPmParameter` or `switchPmText` parameters.
- The example files are updated with dartdoc comments.

# 1.6.0

- ⚗️ **BREAKING** - The `allowedUpdates` parameter in the `LongPolling` object
  now accepts the list of `UpdateType` instead of `String`
- Added methods `requestChat` and `requestUser` in `Keyboard`
- Added equality operator (`==`) on `ID`.
- Added a test to check equality of two Chat IDs.
- Added missing implementation for `WebhookInfo.toJson` method
- Added dartdoc comments for almost every bit of the library.

# 1.5.6

- Fixed an issue with `RawAPI.copyMessage` method.
- Updated the `Televerse.command` method to accept a `String` or `RegExp` as the
  `command` parameter.

# 1.5.5

- Changed the `data` parameter to accept both `String` and `RegExp` using
  `Pattern` type on `Televerse.callbackQuery` method.
- This can simplify the code when you want to listen to a callback query with a
  specific data.
- The test_bot.dart file in the example folder has been updated to reflect this
  change.

# 1.5.4

- Added new test cases in the `/test` folder.
- There were some `thumb` parameters even though they were changed to
  `thumbnail` in the API documentation. Fixed that.
- Fixed an issue with sending media group using local files. More info on
  [#56](https://github.com/xooniverse/televerse/issues/56)
- Completely removed the class `MessageOrBoolean` as it was not needed. All
  methods that return either a `Message` or a `bool` now split into two methods.
  One for `Message` and one for `bool`.
- Updated the `ReplyKeyboardRemove` class to reflect auto set the
  `remove_keyboard` parameter to `true` when the `ReplyKeyboardRemove` class is
  created.
- Similarly, updated the `ForceReply` class to reflect auto set the
  `force_reply` parameter to `true` when the `ForceReply` class is created.
- Fixed an issue with `addStickerToSet` method which caused it to fail. More
  info on [#57](https://github.com/xooniverse/televerse/issues/57).
- Tested all methods related to Stickers.
- Fixed an issue with `createNewStickerSet` method which caused it to fail. More
  info on [#58](https://github.com/xooniverse/televerse/issues/58).

# 1.5.3

- Fixed an issue with `RawAPI.sendAudio` method.
- Added new test files in example folder.

# 1.5.2

- More fixes around the `RawAPI` class.
- Added missing implementations for `RawAPI.getCustomEmojiStickers` method.

# 1.5.1

- Fixed an issue with the `RawAPI.sendChatAction` method.
- More fixes around the RawAPI class.

# 1.5.0

- 🤖 Bot API 6.6 (March 9, 2021) 🎉
- A bunch of changes as per the
  [Bot API 6.6](https://core.telegram.org/bots/api-changelog#march-9-2023)

# 1.4.7

- Added `Televerse.entity` method to listen to entities in messages.
- Improved code quality.
- Removed all the different StreamController classes and replaced them with a
  single `StreamController<Update>` instance.
- All the event streams are now based on the `onUpdate` stream.
- Added `Message.getEntityText` method to get the text of the entity.
- Updated the [televerse_example](./example/televerse_example.dart) file to
  reflect the changes.

# 1.4.6

- Added `Message.isCommand` getter to check if the message is a command.
- Added `Televerse.onError` method to listen to unexpected exceptions.

# 1.4.5

- A bunch of refactors on the `on` method.

# 1.4.4

- Added `TeleverseEvent.command` to listen to all commands.

# 1.4.3

- Added helper methods on `File` class to get the file download URL, download
  URI, file bytes, and finally to download the file.
- Added `File.download` method to download the file.
- Added `File.getDownloadUrl` method to get the file download URL as `String`.
- Added `File.getDownloadURI` method to get the `Uri` object of the file
  download URL.
- Added `File.getBytes` method to get the file bytes this returns a
  `Future<Uint8List>`.
- Added `File.download` method to download the file. This returns a
  `Future<io.File>` object.
- The working example is available at
  [examples/file_download.dart](./example/file_download.dart)

# 1.4.2

- Fixed an issue with the webhook configuration.
- Made it easier to set a custom fetcher. You don't have to pass the `RawAPI`
  instance to the `Fetcher` constructor anymore.

# 1.4.1

- Minor formatting changes.

# 1.4.0

- 🔥 This is breaking change.
- Added the `RawAPI` class to access the raw Telegram Bot API methods.
- Added a `api` getter to `Televerse` class to access the `RawAPI` class.
- Now it's even easier to access and differentiate between the Telegram Bot API
  methods and Televerse methods.
- Added dartdoc comments to all the classes.

# 1.3.1

- Added shorthand methods to setup listners for `/start`, `/help`, `/settings`
  commands.
- You can now use `Televerse.start`, `Televerse.help`, and `Televerse.settings`
  to listen for these commands.
- All these methods accepts a `MessageHandler` as a parameter which is a type
  alias for `FutureOr<void> Function(MessageContext)`.
- Added `MessageHandler`, `CallbackQueryHandler`, and `InlineQueryHandler` type
  aliases.

# 1.3.0

- Telegram Bot API 6.5 (February 3, 2023)
- This includes addition of classes like `KeyboardButtonRequestUser`,
  `KeyboardButtonRequestChat`, `UserShared` and `ChatShared`.
- Added some missing implementations for Bot API 6.4

# 1.2.6

- Added `Televerse.instance` getter to get the last instance of `Bot` created.
- Added `ChatID.chat` getter to get the `Chat` object from the `ChatID` object.
- Added optional `RegExp? regex` parameter to `Televerse.command` method.

# 1.2.5

- Added `startParameter` getter to `MessageContext` class. This will be
  automatically set when the bot is started by a user clicking on a deep link
  such as `t.me/MyBot?start=12345`.
- Added more tests.
- Whole lot of refactoring.

# 1.2.4

- New `InlineKeyboard` class is added. This can be very useful in creating
  `InlineKeyboardMarkup`.
- New `Keyboard` class to help with creating `ReplyKeyboardMarkup` easily and
  quickly.
- Updated `ReplyKeyboardMarkup` and `KeyboardButton` as per the API
  Documentation (some of the optional parameters were required in the previous
  version).
- Fixed an issue that was causing `sendMessage` to not work when used with any
  reply markup.

# 1.2.3

- Added documentation for all most all classes and Televerse things.

# 1.2.2

- Added `MessageMixin` to support `MessageContext`.
- Added `replyWithPhoto`, `replyWithVideo`, `replyWithAudio`,
  `replyWithDocument`, `replyWithVideoNote`, `replyWithVoice`, `replyWithVenue`,
  `replyWithContact`, `replyWithPoll`, `replyWithDice`, `replyWithChatAction`,
  `replyWithGame`, `replyWithAnimation`, `replyWithSticker`, `editMessageText`,
  and `deleteMessage` methods to `MessageContext`.
- Added `ManagementMixin` to support `MessageContext`.
- Added `banAuthor`, `banSenderChat`, `deleteChatPhoto`, `promoteAuthor`,
  `restrictAuthor`, `exportChatInviteLink`, `revokeChatInviteLink`,
  `pinChatMessage`, `unpinChatMessage`, `getChat`, `getChatAdministrators`,
  `getChatMember`, and `leaveChat` on `ManagementMixin`.
- Both `MessageMixin` and `ManagementMixin` are now available on
  `MessageContext`.
- Added `CallbackQueryMixin` to support `CallbackQueryContext`.
- `CallbackQueryContext` now has `answer` and `editMessage` methods available.
- Added `InlineQueryMixin` to support `InlineQueryContext`.
- `InlineQueryContext` now has `answer`, and `answerWithArticles` methods
  available.

# 1.2.1

- Fixed an issue with the `on` method that it's not getting called on any
  filters.
- Made official
  [Televerse Wiki available at the GitHub repo.](https://github.com/xooniverse/televerse/wiki)

# 1.2.0

- Added `TeleverseEvent` enum to make it easy to listen for particular events.
- 🔥 Added `on` method accessible on `Televerse` class. This method can be used
  to listen for particular events as listed in `TeleverseEvent` enum.
- Edited method `Televerse.callbackQuery` to accept `RegExp? regex` as an
  optional parameter. This can be used to listen for callback queries that match
  the passed regex.
- Updated RAW API to return `Message` instead of `MessageContext`.
- Updated `Context` class to have the associated `Update` object with it.
- Update `MessageContextOrBoolean` class to be `MessageOrBoolean` in places a
  method sending either `Message` or `bool`, such as `editMessageLiveLocation`
  etc.

# 1.1.0

- Added a lot new methods to `Televerse` class:
  - `command` - Can be used to listen for Messages that contain the passed
    command
  - `text` - This is a very basic method, which can be used to listen to
    messages that contain particular text content in it
  - `callbackQuery` - Can be used to listen for callbackQuery updates.
  - `chatType` and `chatTypes` - Can be used to register callbacks for messages
    received on particular chat types.
  - `filter` - Filter is an advanced method that can be used to listen for
    messages that pass a given predicate condition.
  - `hears` - One of the best picks. Users can pass a RegEx pattern and listen
    for messages that contain a match.
- Added `MessageContext.id` to get the Chat ID easily
- Improved examples

# 1.0.1

- Initial release
- We're live at Bot API 6.4
- `MessageContext` class added with `reply` method

# 0.0.1

- On development release. Completely new project.
