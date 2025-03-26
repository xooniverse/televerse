// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_command.freezed.dart';
part 'bot_command.g.dart';

/// This object represents a bot command.
@freezed
abstract class BotCommand with _$BotCommand {
  /// Constructs a [BotCommand] object.
  const factory BotCommand({
    /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
    @JsonKey(name: 'command') required String command,

    /// Description of the command, 3-256 characters.
    @JsonKey(name: 'description') required String description,
  }) = _BotCommand;

  /// Creates a [BotCommand] object from JSON object.
  factory BotCommand.fromJson(Map<String, dynamic> json) =>
      _$BotCommandFromJson(json);
}
