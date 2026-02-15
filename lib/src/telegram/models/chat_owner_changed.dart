// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'chat_owner_changed.freezed.dart';
part 'chat_owner_changed.g.dart';

/// Describes a service message about the chat owner leaving the chat.
///
/// Since: Bot API 9.4
@freezed
abstract class ChatOwnerChanged with _$ChatOwnerChanged {
  /// Creates a [ChatOwnerChanged] instance
  const factory ChatOwnerChanged({
    /// The new owner of the chat.
    @JsonKey(name: 'new_owner') required User newOwner,
  }) = _ChatOwnerChanged;

  /// Creates a [ChatOwnerChanged] from a JSON map
  factory ChatOwnerChanged.fromJson(Map<String, dynamic> json) =>
      _$ChatOwnerChangedFromJson(json);
}
