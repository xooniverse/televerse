part of 'extensions.dart';

/// Additional useful methods and properties on the [Message] class.
extension MessageExtension on Message {
  /// Getter for the [DateTime] object that represents the message sent date
  DateTime get dateTime => date.toDateTime();

  /// Getter for the [DateTime] object that represents the message edit date
  DateTime? get editDateTime => editDate?.toDateTime();

  /// Getter for the [DateTime] object that represents the message forward date
  DateTime? get forwardDateTime {
    if (forwardOrigin == null) return null;
    return forwardOrigin!.date.toDateTime();
  }

  /// Returns true if the message is a command
  bool get isCommand => entities != null && entities!.isNotEmpty
      ? entities!.first.type == MessageEntityType.botCommand &&
          entities!.first.offset == 0
      : false;

  /// Returns the text where the given [MessageEntityType] is found
  String? getEntityText(MessageEntityType type) {
    if (entities == null || entities!.isEmpty) return null;
    if ((text ?? caption) == null) return null;
    if (entities?.any((element) => element.type == type) != true) return null;
    final entity = (entities ?? captionEntities)
        ?.firstWhere((element) => element.type == type);
    if (entity == null) return null;
    String entxt =
        text!.substring(entity.offset, entity.offset + entity.length);

    switch (type) {
      case MessageEntityType.mention:
      case MessageEntityType.hashtag:
      case MessageEntityType.cashtag:
        entxt = entxt.substring(1);
        break;
      case MessageEntityType.botCommand:
        if (entxt.contains('@')) {
          entxt = entxt.substring(0, entxt.indexOf('@'));
        } else {
          entxt = entxt.substring(1);
        }
        break;
      case MessageEntityType.textMention:
      case MessageEntityType.url:
      case MessageEntityType.email:
      case MessageEntityType.phoneNumber:
      case MessageEntityType.bold:
      case MessageEntityType.italic:
      case MessageEntityType.underline:
      case MessageEntityType.strikethrough:
      case MessageEntityType.spoiler:
      case MessageEntityType.code:
      case MessageEntityType.pre:
      case MessageEntityType.textLink:
      case MessageEntityType.blockquote:
        break;
      case MessageEntityType.customEmoji:
        entxt = entity.customEmojiId!;
        break;
    }
    return entxt;
  }

  /// Flag to determine whether a message effect is added to the current message
  bool get hasEffect => effectId != null;
}
