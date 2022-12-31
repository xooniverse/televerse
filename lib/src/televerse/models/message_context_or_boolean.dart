part of televerse.models;

class MessageContextOrBoolean {
  MessageContext? messageContext;
  bool? boolean;

  MessageContextOrBoolean(this.messageContext, this.boolean);

  MessageContextOrBoolean.fromJson(
    dynamic json,
    Televerse televerse,
  ) {
    if (json.runtimeType == bool) {
      boolean = json;
    } else {
      messageContext = MessageContext(televerse, Message.fromJson(json));
    }
  }

  CtxOrBool get type {
    if (messageContext != null) {
      return CtxOrBool.messageContext;
    } else {
      return CtxOrBool.boolean;
    }
  }
}

enum CtxOrBool {
  boolean,
  messageContext,
}
