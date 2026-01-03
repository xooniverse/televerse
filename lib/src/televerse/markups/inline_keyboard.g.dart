// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_keyboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InlineKeyboard _$InlineKeyboardFromJson(Map<String, dynamic> json) =>
    _InlineKeyboard(
      inlineKeyboard:
          (json['inline_keyboard'] as List<dynamic>?)
              ?.map(
                (e) => (e as List<dynamic>)
                    .map(
                      (e) => InlineKeyboardButton.fromJson(
                        e as Map<String, dynamic>,
                      ),
                    )
                    .toList(),
              )
              .toList() ??
          const [<InlineKeyboardButton>[]],
    );

Map<String, dynamic> _$InlineKeyboardToJson(_InlineKeyboard instance) =>
    <String, dynamic>{'inline_keyboard': instance.inlineKeyboard};
