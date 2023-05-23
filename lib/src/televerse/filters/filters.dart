/// Filter lets you filter messages by their content. This is useful when used along with `Televerse.on` method to listen to only specific messages.
///
/// For example, if you want to listen to only messages which have text, you can use
/// [TeleverseEvent.text] filter.
///
/// ```dart
/// // This will only listen to messages which have text.
/// bot.on(TeleverseEvent.text, (ctx) {
///   // Do something with the message.
///   ctx.reply('Hello!');
/// });
/// ```
///
enum TeleverseEvent {
  /// Filters messages to allow only those which have text.
  text,

  /// Filter for messages or channel posts which have audio.
  audio,

  /// Filter for messages which have audio.
  audioMessage,

  /// Edited messages or channel posts.
  edited,

  /// Edited messages.
  /// This filter will only allow messages which have been edited.
  editedMessage,

  /// Edited channel posts.
  /// This filter will only allow channel posts which have been edited.
  editedChannelPost,

  /// Filter for messages or channel posts which have document.
  document,

  /// Filter for messages which have document.
  /// This filter will only allow messages which have document.
  documentMessage,

  /// Filter for channel posts which have document.
  /// This filter will only allow channel posts which have document.
  documentChannelPost,

  /// Filter for messages or channel posts which have photo.
  photo,

  /// Filter for messages which have photo.
  /// This filter will only allow messages which have photo.
  photoMessage,

  /// Filter for channel posts which have photo.
  /// This filter will only allow channel posts which have photo.
  photoChannelPost,

  /// Filters all messages or channel posts which is a command.
  command;
}
