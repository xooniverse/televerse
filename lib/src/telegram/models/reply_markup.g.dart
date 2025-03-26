// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_markup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForceReply _$ForceReplyFromJson(Map<String, dynamic> json) => ForceReply(
      forceReply: json['force_reply'] as bool? ?? true,
      inputFieldPlaceholder: json['input_field_placeholder'] as String?,
      selective: json['selective'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ForceReplyToJson(ForceReply instance) =>
    <String, dynamic>{
      'force_reply': instance.forceReply,
      if (instance.inputFieldPlaceholder case final value?)
        'input_field_placeholder': value,
      if (instance.selective case final value?) 'selective': value,
      'runtimeType': instance.$type,
    };

InlineKeyboardMarkup _$InlineKeyboardMarkupFromJson(
        Map<String, dynamic> json) =>
    InlineKeyboardMarkup(
      inlineKeyboard: (json['inline_keyboard'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) =>
                      InlineKeyboardButton.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [<InlineKeyboardButton>[]],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$InlineKeyboardMarkupToJson(
        InlineKeyboardMarkup instance) =>
    <String, dynamic>{
      'inline_keyboard': instance.inlineKeyboard,
      'runtimeType': instance.$type,
    };

ReplyKeyboardMarkup _$ReplyKeyboardMarkupFromJson(Map<String, dynamic> json) =>
    ReplyKeyboardMarkup(
      keyboard: (json['keyboard'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => KeyboardButton.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      resizeKeyboard: json['resize_keyboard'] as bool?,
      oneTimeKeyboard: json['one_time_keyboard'] as bool?,
      inputFieldPlaceholder: json['input_field_placeholder'] as String?,
      selective: json['selective'] as bool?,
      isPersistent: json['is_persistent'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ReplyKeyboardMarkupToJson(
        ReplyKeyboardMarkup instance) =>
    <String, dynamic>{
      'keyboard': instance.keyboard,
      if (instance.resizeKeyboard case final value?) 'resize_keyboard': value,
      if (instance.oneTimeKeyboard case final value?)
        'one_time_keyboard': value,
      if (instance.inputFieldPlaceholder case final value?)
        'input_field_placeholder': value,
      if (instance.selective case final value?) 'selective': value,
      if (instance.isPersistent case final value?) 'is_persistent': value,
      'runtimeType': instance.$type,
    };

ReplyKeyboardRemove _$ReplyKeyboardRemoveFromJson(Map<String, dynamic> json) =>
    ReplyKeyboardRemove(
      removeKeyboard: json['remove_keyboard'] as bool? ?? true,
      selective: json['selective'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ReplyKeyboardRemoveToJson(
        ReplyKeyboardRemove instance) =>
    <String, dynamic>{
      'remove_keyboard': instance.removeKeyboard,
      if (instance.selective case final value?) 'selective': value,
      'runtimeType': instance.$type,
    };
