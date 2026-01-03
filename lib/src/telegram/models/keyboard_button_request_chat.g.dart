// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_request_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonRequestChat _$KeyboardButtonRequestChatFromJson(
  Map<String, dynamic> json,
) => _KeyboardButtonRequestChat(
  requestId: (json['request_id'] as num).toInt(),
  chatIsChannel: json['chat_is_channel'] as bool,
  chatIsForum: json['chat_is_forum'] as bool?,
  chatHasUsername: json['chat_has_username'] as bool?,
  chatIsCreated: json['chat_is_created'] as bool?,
  userAdministratorRights: json['user_administrator_rights'] == null
      ? null
      : ChatAdministratorRights.fromJson(
          json['user_administrator_rights'] as Map<String, dynamic>,
        ),
  botAdministratorRights: json['bot_administrator_rights'] == null
      ? null
      : ChatAdministratorRights.fromJson(
          json['bot_administrator_rights'] as Map<String, dynamic>,
        ),
  botIsMember: json['bot_is_member'] as bool?,
  requestTitle: json['request_title'] as bool?,
  requestUsername: json['request_username'] as bool?,
  requestPhoto: json['request_photo'] as bool?,
);

Map<String, dynamic> _$KeyboardButtonRequestChatToJson(
  _KeyboardButtonRequestChat instance,
) => <String, dynamic>{
  'request_id': instance.requestId,
  'chat_is_channel': instance.chatIsChannel,
  'chat_is_forum': ?instance.chatIsForum,
  'chat_has_username': ?instance.chatHasUsername,
  'chat_is_created': ?instance.chatIsCreated,
  'user_administrator_rights': ?instance.userAdministratorRights,
  'bot_administrator_rights': ?instance.botAdministratorRights,
  'bot_is_member': ?instance.botIsMember,
  'request_title': ?instance.requestTitle,
  'request_username': ?instance.requestUsername,
  'request_photo': ?instance.requestPhoto,
};
