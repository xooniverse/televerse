import 'package:freezed_annotation/freezed_annotation.dart';

/// Represents different types of chat member statuses in a chat.
///
/// Currently, the following 6 types of chat members are supported:
/// - creator: Chat owner
/// - administrator: Member with additional privileges
/// - member: Regular chat member
/// - restricted: Member with restrictions
/// - left: Former member
/// - kicked: Banned member
@JsonEnum(fieldRename: FieldRename.snake)
enum ChatMemberStatus {
  /// Represents the chat creator (owner)
  creator,

  /// Represents an administrator with additional privileges
  administrator,

  /// Represents a regular chat member
  member,

  /// Represents a restricted member in supergroups
  restricted,

  /// Represents a user who left the chat
  left,

  /// Represents a banned user
  kicked,
  ;
}
