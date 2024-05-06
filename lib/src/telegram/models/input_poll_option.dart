part of 'models.dart';

/// Represents an input poll option.
class InputPollOption {
  /// Option text, 1-100 characters.
  final String text;

  /// Optional. Mode for parsing entities in the text.
  final ParseMode? textParseMode;

  /// Optional. A list of special entities that appear in the poll option text.
  final List<MessageEntity>? textEntities;

  /// Creates an [InputPollOption] object.
  const InputPollOption({
    required this.text,
    this.textParseMode,
    this.textEntities,
  });

  /// Creates an [InputPollOption] object from a JSON map.
  factory InputPollOption.fromJson(Map<String, dynamic> json) {
    return InputPollOption(
      text: json['text'],
      textParseMode: json['text_parse_mode'],
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((entity) => MessageEntity.fromJson(entity))
          .toList(),
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'text_parse_mode': textParseMode?.value,
      'text_entities': textEntities?.map((entity) => entity.toJson()).toList(),
    };
  }
}
