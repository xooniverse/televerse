// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_request_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonRequestChat _$KeyboardButtonRequestChatFromJson(
        Map<String, dynamic> json) =>
    _KeyboardButtonRequestChat(
      requestId: (json['request_id'] as num).toInt(),
      chatIsChannel: json['chat_is_channel'] as bool,
      chatIsForum: json['chat_is_forum'] as bool?,
      chatHasUsername: json['chat_has_username'] as bool?,
      chatIsCreated: json['chat_is_created'] as bool?,
      userAdministratorRights: json['user_administrator_rights'] == null
          ? null
          : ChatAdministratorRights.fromJson(
              json['user_administrator_rights'] as Map<String, dynamic>),
      botAdministratorRights: json['bot_administrator_rights'] == null
          ? null
          : ChatAdministratorRights.fromJson(
              json['bot_administrator_rights'] as Map<String, dynamic>),
      botIsMember: json['bot_is_member'] as bool?,
      requestTitle: json['request_title'] as bool?,
      requestUsername: json['request_username'] as bool?,
      requestPhoto: json['request_photo'] as bool?,
    );

Map<String, dynamic> _$KeyboardButtonRequestChatToJson(
        _KeyboardButtonRequestChat instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'chat_is_channel': instance.chatIsChannel,
      if (instance.chatIsForum case final value?) 'chat_is_forum': value,
      if (instance.chatHasUsername case final value?)
        'chat_has_username': value,
      if (instance.chatIsCreated case final value?) 'chat_is_created': value,
      if (instance.userAdministratorRights case final value?)
        'user_administrator_rights': value,
      if (instance.botAdministratorRights case final value?)
        'bot_administrator_rights': value,
      if (instance.botIsMember case final value?) 'bot_is_member': value,
      if (instance.requestTitle case final value?) 'request_title': value,
      if (instance.requestUsername case final value?) 'request_username': value,
      if (instance.requestPhoto case final value?) 'request_photo': value,
    };
