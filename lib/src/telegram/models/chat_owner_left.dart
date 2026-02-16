// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'chat_owner_left.freezed.dart';
part 'chat_owner_left.g.dart';

/// Describes a service message about the chat owner leaving the chat.
///
/// Since: Bot API 9.4
@freezed
abstract class ChatOwnerLeft with _$ChatOwnerLeft {
  /// Creates a [ChatOwnerLeft] instance
  const factory ChatOwnerLeft({
    /// Optional. The user which will be the new owner of the chat if the
    /// previous owner does not return to the chat.
    @JsonKey(name: 'new_owner') User? newOwner,
  }) = _ChatOwnerLeft;

  /// Creates a [ChatOwnerLeft] from a JSON map
  factory ChatOwnerLeft.fromJson(Map<String, dynamic> json) =>
      _$ChatOwnerLeftFromJson(json);
}
