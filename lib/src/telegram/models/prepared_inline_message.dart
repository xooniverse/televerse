import 'package:freezed_annotation/freezed_annotation.dart';

part 'prepared_inline_message.freezed.dart';
part 'prepared_inline_message.g.dart';

/// Describes an inline message to be sent by a user of a Mini App.
@freezed
class PreparedInlineMessage with _$PreparedInlineMessage {
  /// Creates a [PreparedInlineMessage] object.
  const factory PreparedInlineMessage({
    /// Unique identifier of the prepared message.
    @JsonKey(name: 'id') required String id,

    /// Expiration date of the prepared message, in Unix time. Expired prepared
    /// messages can no longer be used.
    @JsonKey(name: 'expiration_date') required int expirationDate,
  }) = _PreparedInlineMessage;

  /// Creates a [PreparedInlineMessage] object from a JSON map.
  factory PreparedInlineMessage.fromJson(Map<String, dynamic> json) =>
      _$PreparedInlineMessageFromJson(json);
}
