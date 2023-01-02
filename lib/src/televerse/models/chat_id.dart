part of televerse.models;

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

class ChatID extends ID {
  ChatID(int id) : super(id);

  factory ChatID.create(int id) {
    return ChatID(id);
  }
}

class ChannelID extends ID {
  ChannelID(String id) : super(id);

  factory ChannelID.create(String id) {
    return ChannelID(id);
  }
}

class SupergroupID extends ID {
  SupergroupID(String id) : super(id);

  factory SupergroupID.create(String id) {
    return SupergroupID(id);
  }
}
