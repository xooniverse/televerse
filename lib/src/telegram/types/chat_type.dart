import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents type of a chat. Currently, the following 5 types are supported:
/// - [ChatType.private] : For a private chat with a user
/// - [ChatType.group] : For a group chat
/// - [ChatType.supergroup] : For a supergroup chat
/// - [ChatType.channel] : For a channel chat
/// - [ChatType.sender] : For a private chat with the inline query sender
@JsonEnum()
enum ChatType {
  /// For a private chat with a user
  @JsonValue("private")
  private,

  /// For a group chat
  @JsonValue("group")
  group,

  /// For a supergroup chat
  @JsonValue("supergroup")
  supergroup,

  /// For a channel chat
  @JsonValue("channel")
  channel,

  /// For a private chat with the inline query sender
  ///
  /// Note: Only For Inline Query
  @JsonValue("sender")
  sender,
}
