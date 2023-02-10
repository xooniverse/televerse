part of televerse.models;

/// This class is used to represent a chat id. It is a superclass of [ChatID], [ChannelID] and [SupergroupID].
///
/// When you want to send a message to a chat, you need to specify the chat id. You can use this class to represent the chat id.
abstract class ID {
  dynamic id;

  ID(this.id);

  static ID create(dynamic value) {
    switch (value.runtimeType) {
      case int:
        return ChatID.create(value);
      case String:
        return SupergroupID.create(value);
      default:
        return SupergroupID.create(value);
    }
  }

  dynamic toJson() {
    return id;
  }
}

/// This class is used to represent a chat id. It is a subclass of [ID].
///
/// When the chat id is an integer, you can use this class to represent the chat id.
class ChatID extends ID {
  ChatID(int id) : super(id);

  factory ChatID.create(int id) {
    return ChatID(id);
  }

  Future<Chat> get chat => Televerse.instance.getChat(this);
}

/// This class is used to represent a channel id. It is a subclass of [ID].
///
/// Simply pass the channel's username to the constructor to create a channel id.
class ChannelID extends ID {
  ChannelID(String id) : super(id);

  factory ChannelID.create(String id) {
    return ChannelID(id);
  }
}

/// This class is used to represent a supergroup id. It is a subclass of [ID].
///
/// Simply pass the supergroup's username to the constructor to create a supergroup id.
class SupergroupID extends ID {
  SupergroupID(String id) : super(id);

  factory SupergroupID.create(String id) {
    return SupergroupID(id);
  }
}
