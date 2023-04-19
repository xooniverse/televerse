part of televerse.models;

/// This class is used to represent a chat id. It is a superclass of [ChatID], [ChannelID] and [SupergroupID].
///
/// When you want to send a message to a chat, you need to specify the chat id. You can use this class to represent the chat id.
abstract class ID {
  dynamic id;

  /// Creates a new [ID] object with the passed [id].
  ///
  /// The [id] can be an integer or a string.
  ID(this.id);

  /// Creates a new [ID] object with the passed [value].
  ///
  /// This method will return a [ChatID] if the passed [value] is an integer or
  /// a [SupergroupID] if the passed [value] is a string.
  ///
  /// If the passed [value] is neither an integer nor a string, this method will throw a [TeleverseException].
  static ID create(dynamic value) {
    switch (value.runtimeType) {
      case int:
        return ChatID.create(value);
      case String:
        return SupergroupID.create(value);
      default:
        throw TeleverseException(
          "The passed value is not a valid chat id. The value must be an integer or a string.",
          description: "The passed value is of type ${value.runtimeType}.",
        );
    }
  }

  /// Returns the id as a string or an integer.
  dynamic toJson() {
    return id;
  }

  /// Equality operator. Returns `true` if the passed [other] is an [ID] and the [id] of the [other] is equal to the [id] of this [ID].
  @override
  operator ==(other) {
    if (other is ID) {
      return id == other.id;
    }
    return false;
  }

  /// Returns the hash code of the [id].
  @override
  int get hashCode => id.hashCode;
}

/// This class is used to represent a chat id. It is a subclass of [ID].
///
/// When the chat id is an integer, you can use this class to represent the chat id.
class ChatID extends ID {
  /// Creates a new [ChatID] object with the passed [id] which is an integer.
  ///
  /// The [ChatID] class is a subclass of [ID] and is used to represent a chat id.
  /// When the chat id is an integer, you can use this class to represent the chat id.
  ///
  /// You can use the [ChatID.chat] getter to get the [Chat] object of the chat.  Make sure that the last instance of the [Bot] class is a member of the chat or chatted with the person.
  ///
  /// ```dart
  /// // Get the chat id of the chat.
  /// final chatID = ChatID(123456789);
  ///
  /// // Get the chat object of the chat.
  /// final chat = await chatID.chat;
  ///
  /// // Print the chat's title.
  /// print(chat.title);
  /// ```
  ChatID(int id) : super(id);

  /// Creates a new [ChatID] object with the passed [id] which is an integer.
  factory ChatID.create(int id) {
    return ChatID(id);
  }

  /// Returns the [Chat] object of the chat.
  Future<Chat> get chat => Televerse.instance.api.getChat(this);
}

/// This class is used to represent a channel id. It is a subclass of [ID].
///
/// Simply pass the channel's username to the constructor to create a channel id.
class ChannelID extends ID {
  /// Creates a new [ChannelID] object with the passed [id] which is a string.
  ChannelID(String id) : super(id);

  /// Creates a new [ChannelID] object with the passed [id] which is a string.
  factory ChannelID.create(String id) {
    return ChannelID(id);
  }
}

/// This class is used to represent a supergroup id. It is a subclass of [ID].
///
/// Simply pass the supergroup's username to the constructor to create a supergroup id.
class SupergroupID extends ID {
  /// Creates a new [SupergroupID] object with the passed [id] which is a string.
  SupergroupID(String id) : super(id);

  /// Creates a new [SupergroupID] object with the passed [id] which is a string.
  factory SupergroupID.create(String id) {
    return SupergroupID(id);
  }
}
