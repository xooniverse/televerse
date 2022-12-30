import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';

/// Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultContact extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.contact;

  /// Contact's phone number
  String phoneNumber;

  /// Contact's first name
  String firstName;

  /// Optional. Contact's last name
  String? lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  String? vcard;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbUrl;

  /// Optional. Thumbnail width
  int? thumbWidth;

  /// Optional. Thumbnail height
  int? thumbHeight;

  InlineQueryResultContact({
    required this.phoneNumber,
    required this.firstName,
    required String id,
    this.lastName,
    this.vcard,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(id: id);

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
      'thumb_url': thumbUrl,
      'thumb_width': thumbWidth,
      'thumb_height': thumbHeight,
    };
  }

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
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>),
      thumbUrl: json['thumb_url'] as String?,
      thumbWidth: json['thumb_width'] as int?,
      thumbHeight: json['thumb_height'] as int?,
    );
  }
}
