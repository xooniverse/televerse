part of 'models.dart';

/// Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultContact extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.contact]
  @override
  InlineQueryResultType get type => InlineQueryResultType.contact;

  /// Contact's phone number
  final String phoneNumber;

  /// Contact's first name
  final String firstName;

  /// Optional. Contact's last name
  final String? lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  final String? vcard;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
  final InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  final int? thumbnailHeight;

  /// Constructs an [InlineQueryResultContact] object
  const InlineQueryResultContact({
    required this.phoneNumber,
    required this.firstName,
    required super.id,
    this.lastName,
    this.vcard,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultContact] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'vcard': vcard,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
      'id': id,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultContact] object from a JSON map
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultContact(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      id: json['id'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}
