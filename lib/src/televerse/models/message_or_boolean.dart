part of televerse.models;

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

  MsgOrBool get type {
    if (message != null) {
      return MsgOrBool.message;
    } else {
      return MsgOrBool.boolean;
    }
  }
}

enum MsgOrBool {
  boolean,
  message,
}
