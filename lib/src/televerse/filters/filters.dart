part of '../../../televerse.dart';

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
  /// Filter for all messages - includes both Update.message and Update.channelPost.
  text([UpdateType.message, UpdateType.channelPost]),

  /// Private messages.
  /// This filter will only allow private messages.
  privateMessage([UpdateType.message]),

  /// Filter for messages or channel posts which have audio.
  audio([UpdateType.message, UpdateType.channelPost]),

  /// Filter for messages which have audio.
  audioMessage([UpdateType.message]),

  /// Edited messages or channel posts.
  edited([UpdateType.editedMessage, UpdateType.editedChannelPost]),

  /// Edited messages.
  /// This filter will only allow messages which have been edited.
  editedMessage([UpdateType.editedMessage]),

  /// Edited channel posts.
  /// This filter will only allow channel posts which have been edited.
  editedChannelPost([UpdateType.editedChannelPost]),

  /// Filter for messages or channel posts which have document.
  document([UpdateType.message, UpdateType.channelPost]),

  /// Filter for messages which have document.
  /// This filter will only allow messages which have document.
  documentMessage([UpdateType.message]),

  /// Filter for channel posts which have document.
  /// This filter will only allow channel posts which have document.
  documentChannelPost([UpdateType.channelPost]),

  /// Filter for messages or channel posts which have photo.
  photo([UpdateType.message, UpdateType.channelPost]),

  /// Filter for messages which have photo.
  /// This filter will only allow messages which have photo.
  photoMessage([UpdateType.message]),

  /// Filter for channel posts which have photo.
  /// This filter will only allow channel posts which have photo.
  photoChannelPost([UpdateType.channelPost]),

  /// Filters all messages or channel posts which is a command.
  command([UpdateType.message, UpdateType.channelPost]),
  ;

  /// List of update types which this filter allows.
  final List<UpdateType> types;

  /// Creates a new filter.
  const TeleverseEvent(this.types);
}
