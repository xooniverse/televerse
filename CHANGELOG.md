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
