// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuButtonDefault _$MenuButtonDefaultFromJson(Map<String, dynamic> json) =>
    MenuButtonDefault(
      type:
          $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.defaultButton,
    );

Map<String, dynamic> _$MenuButtonDefaultToJson(MenuButtonDefault instance) =>
    <String, dynamic>{'type': _$MenuButtonTypeEnumMap[instance.type]!};

const _$MenuButtonTypeEnumMap = {
  MenuButtonType.defaultButton: 'default',
  MenuButtonType.webApp: 'web_app',
  MenuButtonType.commands: 'commands',
};

MenuButtonWebApp _$MenuButtonWebAppFromJson(Map<String, dynamic> json) =>
    MenuButtonWebApp(
      type:
          $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.webApp,
      text: json['text'] as String,
      webApp: WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuButtonWebAppToJson(MenuButtonWebApp instance) =>
    <String, dynamic>{
      'type': _$MenuButtonTypeEnumMap[instance.type]!,
      'text': instance.text,
      'web_app': instance.webApp,
    };

MenuButtonCommands _$MenuButtonCommandsFromJson(Map<String, dynamic> json) =>
    MenuButtonCommands(
      type:
          $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.commands,
    );

Map<String, dynamic> _$MenuButtonCommandsToJson(MenuButtonCommands instance) =>
    <String, dynamic>{'type': _$MenuButtonTypeEnumMap[instance.type]!};
