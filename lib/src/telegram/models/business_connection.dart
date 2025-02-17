import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'user.dart';

part 'business_connection.freezed.dart';
part 'business_connection.g.dart';

/// Represents the connection of the bot with a business account.
@freezed
class BusinessConnection with _$BusinessConnection implements WithUser {
  // Private constructor for exposing the getter.
  const BusinessConnection._();

  /// Constructs a new BusinessConnection instance with the provided parameters.
  const factory BusinessConnection({
    /// Unique identifier of the business connection.
    required String id,

    /// Business account user that created the business connection.
    required User user,

    /// Identifier of a private chat with the user who created the business
    /// connection. This number may have more than 32 significant bits and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a 64-bit integer or
    /// double-precision float type are safe for storing this identifier.
    @JsonKey(name: 'user_chat_id') required int userChatId,

    /// Date the connection was established in Unix time.
    required int date,

    /// Indicates whether the bot can act on behalf of the business account in
    /// chats that were active in the last 24 hours.
    @JsonKey(name: 'can_reply') required bool canReply,

    /// Indicates whether the connection is active.
    @JsonKey(name: 'is_enabled') required bool isEnabled,
  }) = _BusinessConnection;

  /// Constructs a BusinessConnection instance from a JSON map.
  factory BusinessConnection.fromJson(Map<String, dynamic> json) =>
      _$BusinessConnectionFromJson(json);

  /// Business account user that created the business connection.
  @override
  User get from => user;
}
