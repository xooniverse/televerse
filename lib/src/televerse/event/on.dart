part of televerse.event;

/// A mixin that adds the [on] method to the [Event] class.
///
/// This mixin is used to register callbacks for specific update types. This mixin is used internally by the [Televerse] class.
mixin OnEvent on Event {
  /// Registers a callback for particular filter types.
  ///
  /// The call back will be only be executed on specific update types. You can
  /// use the [TeleverseEvent] object to specify which update you want to listen to.
  void on(TeleverseEvent type, void Function(Context ctx) callback) {
    onUpdate.listen((update) {
      if (_televerse == null) return;
      RawAPI api = _televerse!.api;

      bool isMessage = update.message != null;
      bool isChannelPost = update.channelPost != null;
      bool isEditedMessage = update.editedMessage != null;
      bool isEditedChannelPost = update.editedChannelPost != null;

      bool isMessageEvent = isMessage || isEditedMessage;
      bool isChannelPostEvent = isChannelPost || isEditedChannelPost;

      Message? message;
      if (isMessage) {
        message = update.message;
      } else if (isChannelPost) {
        message = update.channelPost;
      } else if (isEditedMessage) {
        message = update.editedMessage;
      } else if (isEditedChannelPost) {
        message = update.editedChannelPost;
      }

      bool isCommand = message?.entities?.any(
            (entity) =>
                entity.type == MessageEntityType.botCommand &&
                entity.offset == 0,
          ) ??
          false;

      bool isTextMessage = message?.text != null &&
          (message?.entities?.every(
                  (entity) => entity.type != MessageEntityType.botCommand) ??
              false);
      bool isAudio = message?.audio != null;
      bool isAudioMessage =
          update.message?.audio != null || update.editedMessage?.audio != null;

      bool isEdited = isEditedMessage || isEditedChannelPost;

      bool hasDocument = message?.document != null;
      bool hasPhoto = message?.photo != null;

      if (type == TeleverseEvent.command && isCommand) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.text && isTextMessage) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.audio && isAudio) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.audio && isAudioMessage) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.edited && isEdited) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.editedMessage && isEditedMessage) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.editedChannelPost && isEditedChannelPost) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.document && hasDocument) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.documentMessage &&
          isMessageEvent &&
          hasDocument) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.documentChannelPost &&
          isChannelPostEvent &&
          hasDocument) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.photo && hasPhoto) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.photoMessage && isMessageEvent && hasPhoto) {
        callback(MessageContext(api, message!, update: update));
      }

      if (type == TeleverseEvent.photoChannelPost &&
          isChannelPostEvent &&
          hasPhoto) {
        callback(MessageContext(api, message!, update: update));
      }
    });
  }
}
