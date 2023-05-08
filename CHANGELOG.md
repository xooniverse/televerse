## 1.8.5

- Added the `Deeplink` class to represent a Telegram deeplink.
- Made it easy to use Telegram deeplinks by adding `BotLink`, `GroupBotLink`, `ChannelBotLink`, `GameLink`, `SettingsLinks` and `ShareLink` classes.
- Also added `PhoneNumberLink`, `MTProxyLink`, `Socks5Link` and `UsernameLink`.

## 1.8.4

- ✨ Simplified mentions.
- Added the new `UserMention` class to represent a user mention.
- Added an extension to `User` class to convert it to a `UserMention` object.
- Added `MessageContext.from` alias to `Message.from` property.
- Added `CustomEmoji` class to represent a Telegram custom emoji.

## 1.8.3

- Added more helper methods on `Televerse` class to listen to updates.
- Added `Televerse.onURL` method to listen to messages that contain URLs.
- Added `Televerse.onHashtag` method to listen to messages that contain hashtags.
- Added `Televerse.onMention` method to listen to messages that contain mentions.
- Added `Televerse.onEmail` method to listen to messages that contain email addresses.
- Added `Televerse.onPhoneNumber` method to listen to messages that contain phone numbers.
- Improved the overall code quality.
- Added `Televerse.whenMentioned` method to listen to messages that contain mentions of the bot.

## 1.8.2

- Added `PollContext`, `PollAnswerContext` classes to represent the context of a `poll` and `poll_answer` updates.
- Added `Televerse.poll` method to listen to `poll` updates.
- Added `Televerse.pollAnswer` method to listen to `poll_answer` updates.
- Now most of the Televerse methods return a `StreamSubscription` instead of `void`.
- This is to make it easier to cancel the subscription and increase the performance.
- Added `ChosenInlineResultContext` class to represent the context of a `chosen_inline_result` update and `Televerse.chosenInlineResult` method to listen to `chosen_inline_result` updates.
- Added `ChatJoinRequestContext` class to represent the context of a `chat_join_request` update and `Televerse.chatJoinRequest` method to listen to `chat_join_request` updates.
- Added `ShippingQueryContext` class to represent the context of a `shipping_query` update and `Televerse.shippingQuery` method to listen to `shipping_query` updates.
- Added `PreCheckoutQueryContext` class to represent the context of a `pre_checkout_query` update and `Televerse.preCheckoutQuery` method to listen to `pre_checkout_query` updates.

## 1.8.1

- Added `ChatMemberUpdatedContext` class to represent the context of a `chat_member` and `my_chat_member` updates.
- Added `Televerse.chatMember` and `Televerse.myChatMember` methods to listen to `chat_member` and `my_chat_member` updates.
- Hot fix: Fixed an issue with the `Event` class that caused unexpected exceptions.

## 1.8.0

- 🎖️ Televerse now supports listening to Local Bot API Server.
- Added `Televerse.local` method to create a bot instance that listens to a local Bot API Server.
- Added `RawAPI.local` method that can be used to create `RawAPI` instance that targets a local Bot API Server.
- Added `LongPolling.allUpdates` method to listen to all updates. This is to simplify listening to all updates including the `chat_member` updates.
- Updated `/example/test_bot.dart` file to reflect the changes.

## 1.7.2

- [BREAKING] ⚠️ - The `chat` getter on the `ChatID` class is now replaced to be a method of the `ID` class, and renamed to `get()`.
- This is to avoid confusion with the `chat` parameter in the `ChatID` class.
- Also, now the `get()` method is available on all the `ID` classes - `ChatID`, `SuperGroupID` and `ChannelID`.
- Fixed an issue that caused the Long Polling to fail.
- The issue was with the `Message.fromJson` method which was not able to parse the `Message` object when a `newChatPhoto` was present.
- Thanks to [@deargosep](https://github.com/deargosep) for reporting and fixing this issue.

## 1.7.1

- [BREAKING] ⚠️ - The parameters `name` and `languageCode` are made positional in the `setMyName` method and the `getMyName` method.
- Improved documentation.

## 1.7.0

- 🤖 Bot API 6.7 is added!
- [Read more here](https://github.com/HeySreelal/televerse/issues/65).
- [BREAKING] 👨🏻‍🔧 - The `answerInlineQuery` will no longer accept `switchPmParameter` or `switchPmText` parameters.
- The example files are updated with dartdoc comments.

## 1.6.0

- ⚗️ **BREAKING** - The `allowedUpdates` parameter in the `LongPolling` object now accepts the list of `UpdateType` instead of `String`
- Added methods `requestChat` and `requestUser` in `Keyboard`
- Added equality operator (`==`) on `ID`.
- Added a test to check equality of two Chat IDs.
- Added missing implementation for `WebhookInfo.toJson` method
- Added dartdoc comments for almost every bit of the library.

## 1.5.6

- Fixed an issue with `RawAPI.copyMessage` method.
- Updated the `Televerse.command` method to accept a `String` or `RegExp` as the `command` parameter.

## 1.5.5

- Changed the `data` parameter to accept both `String` and `RegExp` using `Pattern` type on `Televerse.callbackQuery` method.
- This can simplify the code when you want to listen to a callback query with a specific data.
- The test_bot.dart file in the example folder has been updated to reflect this change.

## 1.5.4

- Added new test cases in the `/test` folder.
- There were some `thumb` parameters even though they were changed to `thumbnail` in the API documentation. Fixed that.
- Fixed an issue with sending media group using local files. More info on [#56](https://github.com/HeySreelal/televerse/issues/56)
- Completely removed the class `MessageOrBoolean` as it was not needed. All methods that return either a `Message` or a `bool` now split into two methods. One for `Message` and one for `bool`.
- Updated the `ReplyKeyboardRemove` class to reflect auto set the `remove_keyboard` parameter to `true` when the `ReplyKeyboardRemove` class is created.
- Similarly, updated the `ForceReply` class to reflect auto set the `force_reply` parameter to `true` when the `ForceReply` class is created.
- Fixed an issue with `addStickerToSet` method which caused it to fail. More info on [#57](https://github.com/HeySreelal/televerse/issues/57).
- Tested all methods related to Stickers.
- Fixed an issue with `createNewStickerSet` method which caused it to fail. More info on [#58](https://github.com/HeySreelal/televerse/issues/58).

## 1.5.3

- Fixed an issue with `RawAPI.sendAudio` method.
- Added new test files in example folder.

## 1.5.2

- More fixes around the `RawAPI` class.
- Added missing implementations for `RawAPI.getCustomEmojiStickers` method.

## 1.5.1

- Fixed an issue with the `RawAPI.sendChatAction` method.
- More fixes around the RawAPI class.

## 1.5.0

- 🤖 Bot API 6.6 (March 9, 2021) 🎉
- A bunch of changes as per the [Bot API 6.6](https://core.telegram.org/bots/api-changelog#march-9-2023)

## 1.4.7

- Added `Televerse.entity` method to listen to entities in messages.
- Improved code quality.
- Removed all the different StreamController classes and replaced them with a single `StreamController<Update>` instance.
- All the event streams are now based on the `onUpdate` stream.
- Added `Message.getEntityText` method to get the text of the entity.
- Updated the [televerse_example](./example/televerse_example.dart) file to reflect the changes.

## 1.4.6

- Added `Message.isCommand` getter to check if the message is a command.
- Added `Televerse.onError` method to listen to unexpected exceptions.

## 1.4.5

- A bunch of refactors on the `on` method.

## 1.4.4

- Added `TeleverseEvent.command` to listen to all commands.

## 1.4.3

- Added helper methods on `File` class to get the file download URL, download URI, file bytes, and finally to download the file.
- Added `File.download` method to download the file.
- Added `File.getDownloadUrl` method to get the file download URL as `String`.
- Added `File.getDownloadURI` method to get the `Uri` object of the file download URL.
- Added `File.getBytes` method to get the file bytes this returns a `Future<Uint8List>`.
- Added `File.download` method to download the file. This returns a `Future<io.File>` object.
- The working example is available at [examples/file_download.dart](./example/file_download.dart)

## 1.4.2

- Fixed an issue with the webhook configuration.
- Made it easier to set a custom fetcher. You don't have to pass the `RawAPI` instance to the `Fetcher` constructor anymore.

## 1.4.1

- Minor formatting changes.

## 1.4.0

- 🔥 This is breaking change.
- Added the `RawAPI` class to access the raw Telegram Bot API methods.
- Added a `api` getter to `Televerse` class to access the `RawAPI` class.
- Now it's even easier to access and differentiate between the Telegram Bot API methods and Televerse methods.
- Added dartdoc comments to all the classes.

## 1.3.1

- Added shorthand methods to setup listners for `/start`, `/help`, `/settings` commands.
- You can now use `Televerse.start`, `Televerse.help`, and `Televerse.settings` to listen for these commands.
- All these methods accepts a `MessageHandler` as a parameter which is a type alias for `FutureOr<void> Function(MessageContext)`.
- Added `MessageHandler`, `CallbackQueryHandler`, and `InlineQueryHandler` type aliases.

## 1.3.0

- Telegram Bot API 6.5 (February 3, 2023)
- This includes addition of classes like `KeyboardButtonRequestUser`, `KeyboardButtonRequestChat`, `UserShared` and `ChatShared`.
- Added some missing implementations for Bot API 6.4

## 1.2.6

- Added `Televerse.instance` getter to get the last instance of `Bot` created.
- Added `ChatID.chat` getter to get the `Chat` object from the `ChatID` object.
- Added optional `RegExp? regex` parameter to `Televerse.command` method.

## 1.2.5

- Added `startParameter` getter to `MessageContext` class. This will be automatically set when the bot is started by a user clicking on a deep link such as `t.me/MyBot?start=12345`.
- Added more tests.
- Whole lot of refactoring.

## 1.2.4

- New `InlineKeyboard` class is added. This can be very useful in creating `InlineKeyboardMarkup`.
- New `Keyboard` class to help with creating `ReplyKeyboardMarkup` easily and quickly.
- Updated `ReplyKeyboardMarkup` and `KeyboardButton` as per the API Documentation (some of the optional parameters were required in the previous version).
- Fixed an issue that was causing `sendMessage` to not work when used with any reply markup.

## 1.2.3

- Added documentation for all most all classes and Televerse things.

## 1.2.2

- Added `MessageMixin` to support `MessageContext`.
- Added `replyWithPhoto`, `replyWithVideo`, `replyWithAudio`, `replyWithDocument`, `replyWithVideoNote`, `replyWithVoice`, `replyWithVenue`, `replyWithContact`, `replyWithPoll`, `replyWithDice`, `replyWithChatAction`, `replyWithGame`, `replyWithAnimation`, `replyWithSticker`, `editMessageText`, and `deleteMessage` methods to `MessageContext`.
- Added `ManagementMixin` to support `MessageContext`.
- Added `banAuthor`, `banSenderChat`, `deleteChatPhoto`, `promoteAuthor`, `restrictAuthor`, `exportChatInviteLink`, `revokeChatInviteLink`, `pinChatMessage`, `unpinChatMessage`, `getChat`, `getChatAdministrators`, `getChatMember`, and `leaveChat` on `ManagementMixin`.
- Both `MessageMixin` and `ManagementMixin` are now available on `MessageContext`.
- Added `CallbackQueryMixin` to support `CallbackQueryContext`.
- `CallbackQueryContext` now has `answer` and `editMessage` methods available.
- Added `InlineQueryMixin` to support `InlineQueryContext`.
- `InlineQueryContext` now has `answer`, and `answerWithArticles` methods available.

## 1.2.1

- Fixed an issue with the `on` method that it's not getting called on any filters.
- Made official [Televerse Wiki available at the GitHub repo.](https://github.com/HeySreelal/televerse/wiki)

## 1.2.0

- Added `TeleverseEvent` enum to make it easy to listen for particular events.
- 🔥 Added `on` method accessible on `Televerse` class. This method can be used to listen for particular events as listed in `TeleverseEvent` enum.
- Edited method `Televerse.callbackQuery` to accept `RegExp? regex` as an optional parameter. This can be used to listen for callback queries that match the passed regex.
- Updated RAW API to return `Message` instead of `MessageContext`.
- Updated `Context` class to have the associated `Update` object with it.
- Update `MessageContextOrBoolean` class to be `MessageOrBoolean` in places a method sending either `Message` or `bool`, such as `editMessageLiveLocation` etc.

## 1.1.0

- Added a lot new methods to `Televerse` class:
  - `command` - Can be used to listen for Messages that contain the passed command
  - `text` - This is a very basic method, which can be used to listen to messages that contain particular text content in it
  - `callbackQuery` - Can be used to listen for callbackQuery updates.
  - `chatType` and `chatTypes` - Can be used to register callbacks for messages received on particular chat types.
  - `filter` - Filter is an advanced method that can be used to listen for messages that pass a given predicate condition.
  - `hears` - One of the best picks. Users can pass a RegEx pattern and listen for messages that contain a match.
- Added `MessageContext.id` to get the Chat ID easily
- Improved examples

## 1.0.1

- Initial release
- We're live at Bot API 6.4
- `MessageContext` class added with `reply` method

## 0.0.1

- On development release. Completely new project.
