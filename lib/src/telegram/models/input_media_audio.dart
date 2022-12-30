import 'package:televerse/src/telegram/models/abstracts/input_media.dart';
import 'package:televerse/src/televerse/televerse.dart';
import 'package:televerse/src/types/input_media_type.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'message_entity.dart';

/// Represents an audio file to be treated as music to be sent.
class InputMediaAudio extends InputMedia {
  @override
  InputMediaType get type => InputMediaType.audio;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumb;

  /// Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Duration of the audio in seconds
  final int? duration;

  /// Optional. Performer of the audio
  final String? performer;

  /// Optional. Title of the audio
  final String? title;

  InputMediaAudio({
    required super.media,
    this.thumb,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.duration,
    this.performer,
    this.title,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media,
      'thumb': thumb?.toJson(),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'duration': duration,
      'performer': performer,
      'title': title,
    };
  }

  factory InputMediaAudio.fromJson(Map<String, dynamic> json) {
    return InputMediaAudio(
      media: json['media'],
      caption: json['caption'],
      parseMode: json['parse_mode'] != null
          ? ParseMode.fromJson(json['parse_mode'])
          : null,
      captionEntities: json['caption_entities'] != null
          ? (json['caption_entities'] as List)
              .map((i) => MessageEntity.fromJson(i))
              .toList()
          : null,
      duration: json['duration'],
      performer: json['performer'],
      title: json['title'],
    );
  }
}
