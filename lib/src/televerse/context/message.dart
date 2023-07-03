part of televerse.context;

/// This class is used to represent a message context. This class provides information about the current incoming message and contains a bunch of context aware methods.
///
/// `MessageContext` will be passed to the callback functions of any methods that listen to messages. For example, if you use `Televerse.text` to listen to text messages, the callback function will be called with a `MessageContext` object as parameter.
class MessageContext extends Context with MessageMixin, ManagementMixin {
  /// The incoming message.
  final Message message;

  /// Constructs a new [MessageContext].
  MessageContext(
    super._bot,
    this.message, {
    required Update update,
  }) : super(update: update);

  /// Chat of the message.
  Chat get chat => message.chat;

  /// **Regular expression matches**
  ///
  /// Contains the matches of the regular expression.
  ///
  /// This will be automatically set when you use the [Televerse.hears] method.
  List<RegExpMatch>? matches;

  /// **Chat ID**
  ///
  /// This is a shortcut for `ChatID(message.chat.id)`. So you can simply use `ctx.id` instead of repeating `ChatID(message.chat.id)`.
  ///
  /// This is useful when you want to call methods from the [Context.api] getter.
  ///
  /// Example:
  /// ```dart
  /// ctx.api.sendMessage(ctx.id, "Hello World!");
  /// ```
  ///
  /// This is the same as:
  /// ```dart
  /// ctx.api.sendMessage(ChatID(ctx.message.chat.id), "Hello World!");
  /// ```
  ///
  /// Easy right? :)
  @override
  ID get id => ChatID(message.chat.id);

  /// User who sent the message.
  /// This will be `null` if the message is sent if the message is sent on a channel or an anonymous admin.
  User? get from => message.from;

  /// If the message is a command, the list will be filled with the command arguments.
  /// e.g. /hello @mom @dad will have a ctx.args like this: ['@mom', '@dad'].
  /// This will be empty if the message is not a command or if the message doesn't contain text
  /// NOTE: This is obviously also used for the deeplink start parameters.
  List<String> get args {
    if (!(message.text?.startsWith('/') ?? false)) return [];

    return message.text!.split(' ').sublist(1);
  }
}
