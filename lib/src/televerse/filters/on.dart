part of '../../../televerse.dart';

/// The On event. Attaches handlers for specific events.
extension On on Bot {
  /// Registers a callback for particular filter types.
  ///
  /// The call back will be only be executed on specific update types. You can
  /// use the [TeleverseEvent] object to specify which update you want to listen to.
  void on(TeleverseEvent type, Handler callback) {
    final scope = HandlerScope(
      handler: callback,
      types: type.types,
      predicate: (ctx) {
        final isMessage = ctx.update.message != null;
        final isChannelPost = ctx.update.channelPost != null;
        final isEditedMessage = ctx.update.editedMessage != null;
        final isEditedChannelPost = ctx.update.editedChannelPost != null;

        final isMessageEvent = isMessage || isEditedMessage;
        final isChannelPostEvent = isChannelPost || isEditedChannelPost;

        final isPrivateMessage =
            isMessageEvent && ctx.update.message?.chat.type == ChatType.private;

        Message? message;
        if (isMessage) {
          message = ctx.update.message;
        } else if (isChannelPost) {
          message = ctx.update.channelPost;
        } else if (isEditedMessage) {
          message = ctx.update.editedMessage;
        } else if (isEditedChannelPost) {
          message = ctx.update.editedChannelPost;
        }

        final isCommand = message?.entities?.any(
              (entity) =>
                  entity.type == MessageEntityType.botCommand &&
                  entity.offset == 0,
            ) ??
            false;

        final isTextMessage = message?.text != null && !isCommand;
        final isAudio = message?.audio != null;
        final isAudioMessage = ctx.update.message?.audio != null ||
            ctx.update.editedMessage?.audio != null;

        final isEdited = isEditedMessage || isEditedChannelPost;

        final hasDocument = message?.document != null;
        final hasPhoto = message?.photo != null;

        if (type == TeleverseEvent.command && isCommand) {
          return true;
        }

        if (type == TeleverseEvent.text && isTextMessage) {
          return true;
        }

        if (type == TeleverseEvent.audio && isAudio) {
          return true;
        }

        if (type == TeleverseEvent.audio && isAudioMessage) {
          return true;
        }

        if (type == TeleverseEvent.edited && isEdited) {
          return true;
        }

        if (type == TeleverseEvent.editedMessage && isEditedMessage) {
          return true;
        }

        if (type == TeleverseEvent.editedChannelPost && isEditedChannelPost) {
          return true;
        }

        if (type == TeleverseEvent.document && hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.documentMessage &&
            isMessageEvent &&
            hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.documentChannelPost &&
            isChannelPostEvent &&
            hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.photo && hasPhoto) {
          return true;
        }

        if (type == TeleverseEvent.photoMessage && isMessageEvent && hasPhoto) {
          return true;
        }

        if (type == TeleverseEvent.photoChannelPost &&
            isChannelPostEvent &&
            hasPhoto) {
          return true;
        }

        if (type == TeleverseEvent.privateMessage && isPrivateMessage) {
          return true;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }
}
