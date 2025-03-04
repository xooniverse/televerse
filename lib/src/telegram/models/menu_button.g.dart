// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuButtonDefaultImpl _$$MenuButtonDefaultImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuButtonDefaultImpl(
      type: $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.defaultButton,
    );

Map<String, dynamic> _$$MenuButtonDefaultImplToJson(
        _$MenuButtonDefaultImpl instance) =>
    <String, dynamic>{
      'type': _$MenuButtonTypeEnumMap[instance.type]!,
    };

const _$MenuButtonTypeEnumMap = {
  MenuButtonType.defaultButton: 'default',
  MenuButtonType.webApp: 'web_app',
  MenuButtonType.commands: 'commands',
};

_$MenuButtonWebAppImpl _$$MenuButtonWebAppImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuButtonWebAppImpl(
      type: $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.webApp,
      text: json['text'] as String,
      webApp: WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MenuButtonWebAppImplToJson(
        _$MenuButtonWebAppImpl instance) =>
    <String, dynamic>{
      'type': _$MenuButtonTypeEnumMap[instance.type]!,
      'text': instance.text,
      'web_app': instance.webApp,
    };

_$MenuButtonCommandsImpl _$$MenuButtonCommandsImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuButtonCommandsImpl(
      type: $enumDecodeNullable(_$MenuButtonTypeEnumMap, json['type']) ??
          MenuButtonType.commands,
    );

Map<String, dynamic> _$$MenuButtonCommandsImplToJson(
        _$MenuButtonCommandsImpl instance) =>
    <String, dynamic>{
      'type': _$MenuButtonTypeEnumMap[instance.type]!,
    };
