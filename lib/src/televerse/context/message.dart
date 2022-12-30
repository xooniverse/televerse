part of televerse.context;

class MessageContext extends Context {
  /// The incoming message.
  Message message;

  MessageContext(Televerse t, this.message) : super(t);

  /// Chat of the message.
  Chat get chat => message.chat;
}
