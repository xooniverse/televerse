part of televerse;

/// **Filter**
///
/// Filter lets you filter messages by their content. This is useful when used along with
/// [Event.on] method to listen to only specific messages.
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

  /// Filters messages to allow only those which have audio.
  audio,
}
