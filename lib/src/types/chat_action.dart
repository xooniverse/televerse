part of types;

enum ChatAction {
  typing._('typing'),
  uploadPhoto._('upload_photo'),
  recordVideo._('record_video'),
  uploadVideo._('upload_video'),
  recordVoice._('record_voice'),
  uploadVoice._('upload_voice'),
  uploadDocument._('upload_document'),
  chooseSticker._('choose_sticker'),
  findLocation._('find_location'),
  recordVideoNote._('record_video_note'),
  uploadVideoNote._('upload_video_note'),
  ;

  final String value;
  const ChatAction._(this.value);
}
