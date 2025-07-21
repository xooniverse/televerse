// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show
        InlineKeyboardMarkup,
        InlineQueryResult,
        InlineQueryResultContact,
        InlineQueryResultType,
        InputMessageContent,
        InputMessageContentConverter;
part 'inline_query_result_contact.freezed.dart';
part 'inline_query_result_contact.g.dart';

/// Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
@freezed
abstract class InlineQueryResultContact
    with _$InlineQueryResultContact
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultContact] object
  const factory InlineQueryResultContact({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// Type of the result, always [InlineQueryResultType.contact]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.contact)
    InlineQueryResultType type,

    /// Contact's phone number
    @JsonKey(name: 'phone_number') required String phoneNumber,

    /// Contact's first name
    @JsonKey(name: 'first_name') required String firstName,

    /// Optional. Contact's last name
    @JsonKey(name: 'last_name') String? lastName,

    /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
    @JsonKey(name: 'vcard') String? vcard,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the contact
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. Url of the thumbnail for the result
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,

    /// Optional. Thumbnail width
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,

    /// Optional. Thumbnail height
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  }) = _InlineQueryResultContact;

  /// Constructs an [InlineQueryResultContact] object from a JSON map
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultContactFromJson(json);
}
