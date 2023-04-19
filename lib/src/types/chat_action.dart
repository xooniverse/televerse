part of types;

/// This object represents a chat action.
enum ChatAction {
  /// Typing
  typing._('typing'),

  /// Upload photo
  uploadPhoto._('upload_photo'),

  /// Record video
  recordVideo._('record_video'),

  /// Upload video
  uploadVideo._('upload_video'),

  /// Record audio
  recordVoice._('record_voice'),

  /// Upload audio
  uploadVoice._('upload_voice'),

  /// Upload document
  uploadDocument._('upload_document'),

  /// Find location
  chooseSticker._('choose_sticker'),

  /// Find location
  findLocation._('find_location'),

  /// Record video note
  recordVideoNote._('record_video_note'),

  /// Upload video note
  uploadVideoNote._('upload_video_note'),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [ChatAction].
  const ChatAction._(this.value);
}
