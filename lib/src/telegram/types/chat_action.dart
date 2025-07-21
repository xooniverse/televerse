import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_action.g.dart';

/// This object represents a chat action.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum ChatAction {
  /// Typing
  @JsonValue('typing')
  typing,

  /// Upload photo
  @JsonValue('upload_photo')
  uploadPhoto,

  /// Record video
  @JsonValue('record_video')
  recordVideo,

  /// Upload video
  @JsonValue('upload_video')
  uploadVideo,

  /// Record audio
  @JsonValue('record_voice')
  recordVoice,

  /// Upload audio
  @JsonValue('upload_voice')
  uploadVoice,

  /// Upload document
  @JsonValue('upload_document')
  uploadDocument,

  /// Find location
  @JsonValue('choose_sticker')
  chooseSticker,

  /// Find location
  @JsonValue('find_location')
  findLocation,

  /// Record video note
  @JsonValue('record_video_note')
  recordVideoNote,

  /// Upload video note
  @JsonValue('upload_video_note')
  uploadVideoNote;

  /// Converts the [ChatAction] to its corresponding JSON value.
  String toJson() => _$ChatActionEnumMap[this]!;
}
