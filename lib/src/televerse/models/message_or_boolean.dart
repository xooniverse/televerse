part of televerse.models;

/// **Message or Boolean**
/// This class is used to represent a message or a boolean.
/// There are some methods in the Telegram API that can return either a message or a boolean. To represent this, we use this class.
/// For example [Televerse.editMessageLiveLocation], [Televerse.stopMessageLiveLocation] are methods that can return either a message or a boolean depending on the parameters you pass.
///
/// This class is used to represent this.
class MessageOrBoolean {
  Message? message;
  bool? boolean;

  MessageOrBoolean(this.message, this.boolean);

  MessageOrBoolean.fromJson(
    dynamic json,
    Televerse televerse,
  ) {
    if (json.runtimeType == bool) {
      boolean = json;
    } else {
      message = Message.fromJson(json);
    }
  }

  /// **Type**
  ///
  /// This getter returns the type of the [MessageOrBoolean] class.
  ///
  /// This can either be [MsgOrBool.boolean] or [MsgOrBool.message].
  ///
  /// This can be used to identify either [bool] or [Message] is returned from Telegram API.
  MsgOrBool get type {
    if (message != null) {
      return MsgOrBool.message;
    } else {
      return MsgOrBool.boolean;
    }
  }
}

/// This enum is used to identify whether the [MessageOrBoolean] class contains a message or a boolean.
/// The [MessageOrBoolean.type] getter returns this enum.
enum MsgOrBool {
  boolean,
  message,
}
