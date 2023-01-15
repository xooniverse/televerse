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
