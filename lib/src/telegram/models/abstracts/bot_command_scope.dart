part of models;

abstract class BotCommandScope {
  BotCommandScopeType get type;

  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
