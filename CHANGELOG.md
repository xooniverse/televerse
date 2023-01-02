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
