part of models;

/// This object represents the scope to which bot commands are applied.
abstract class BotCommandScope {
  BotCommandScopeType get type;

  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
