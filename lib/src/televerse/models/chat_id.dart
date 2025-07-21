part of 'models.dart';

/// This class is used to represent a chat id. It is a superclass of [ChatID], [ChannelID] and [SupergroupID].
///
/// When you want to send a message to a chat, you need to specify the chat id. You can use this class to represent the chat id.
abstract class ID {
  /// The id of the chat. It can be an integer or a string.
  final dynamic id;

  /// Creates a new [ID] object with the passed [id].
  ///
  /// The [id] can be an integer or a string.
  const ID(this.id);

  /// Creates a new [ID] object with the passed [value].
  ///
  /// ---
  ///
  /// Easter Egg! 🥚 You've found the only place where Televerse uses `dynamic` type on public interface. We highly encourage you to rely on `ChatID` or `ChannelID` classes to
  /// create instance of `ID` but yeah, this can be quite an easy one.
  ///
  /// ---
  ///
  /// This method will return:
  /// - a [ChatID] if the passed [value] is an integer or a string that can be parsed to an integer value
  /// - a [ChannelID] if the passed [value] is a string that cannot be parsed to int.
  ///
  /// If the passed [value] is neither an integer nor a string, this method will throw a [TeleverseException].
  factory ID.create(dynamic value) {
    if (value is int) {
      return ChatID.create(value);
    }

    if (value is String) {
      final parsed = int.tryParse(value);
      if (parsed != null) return ChatID(parsed);
      return ChannelID.create(value);
    }

    throw TeleverseException(
      "The passed value is not a valid chat id. The value must be an integer or a string.",
      description: "The passed value is of type ${value.runtimeType}.",
      type: TeleverseExceptionType.invalidParameter,
    );
  }

  /// Creates the ID object from JSON map.
  ///
  /// Telegram only always returns chat_id as int, so this will always create `ChatID` instance
  factory ID.fromJson(Map<String, dynamic> json) {
    return ChatID(json['chat_id']);
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
  const ChatID(int super.id);

  /// The ID getter, returns the actual integer value
  @override
  int get id => super.id;

  /// Creates a new [ChatID] object with the passed [id] which is an integer.
  factory ChatID.create(int id) {
    return ChatID(id);
  }
}

/// This class is used to represent a channel id. It is a subclass of [ID].
///
/// Simply pass the channel's username to the constructor to create a channel id.
class ChannelID extends ID {
  /// Creates a new [ChannelID] object with the passed [id] which is a string.
  const ChannelID(String super.id);

  /// Creates a new [ChannelID] object with the passed [id] which is a string.
  factory ChannelID.create(String id) {
    return ChannelID(id);
  }

  /// The ID getter, returns the actual String value
  @override
  String get id => super.id;
}

/// This class is used to represent a supergroup id. It is a subclass of [ID].
///
/// Simply pass the supergroup's username to the constructor to create a supergroup id.
class SupergroupID extends ID {
  /// Creates a new [SupergroupID] object with the passed [id] which is a string.
  const SupergroupID(String super.id);

  /// Creates a new [SupergroupID] object with the passed [id] which is a string.
  factory SupergroupID.create(String id) {
    return SupergroupID(id);
  }

  /// The ID getter, returns the actual String value
  @override
  String get id => super.id;
}

/// Converts the ID to JSON
class IDConverter implements JsonConverter<ID, dynamic> {
  /// Creates the instance of the converter
  const IDConverter();

  /// Creates ID from the passed JSON
  @override
  ID fromJson(dynamic json) {
    if (json is Map && json['chat_id'] != null) {
      return ChatID(json['chat_id']);
    }
    if (json is int) return ChatID(json);
    if (json is String) return ChannelID(json);

    throw Exception("Could not read Chat ID");
  }

  /// Converts the ID into its underlying value
  @override
  toJson(ID data) => data.toJson();
}
