// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InlineKeyboardImpl _$$InlineKeyboardImplFromJson(Map<String, dynamic> json) =>
    _$InlineKeyboardImpl(
      inlineKeyboard: (json['inline_keyboard'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) =>
                      InlineKeyboardButton.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [<InlineKeyboardButton>[]],
    );

Map<String, dynamic> _$$InlineKeyboardImplToJson(
        _$InlineKeyboardImpl instance) =>
    <String, dynamic>{
      'inline_keyboard': instance.inlineKeyboard,
    };
