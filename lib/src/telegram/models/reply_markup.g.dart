// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_markup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForceReplyImpl _$$ForceReplyImplFromJson(Map<String, dynamic> json) =>
    _$ForceReplyImpl(
      forceReply: json['force_reply'] as bool? ?? true,
      inputFieldPlaceholder: json['input_field_placeholder'] as String?,
      selective: json['selective'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ForceReplyImplToJson(_$ForceReplyImpl instance) =>
    <String, dynamic>{
      'force_reply': instance.forceReply,
      if (instance.inputFieldPlaceholder case final value?)
        'input_field_placeholder': value,
      if (instance.selective case final value?) 'selective': value,
      'runtimeType': instance.$type,
    };

_$InlineKeyboardMarkupImpl _$$InlineKeyboardMarkupImplFromJson(
        Map<String, dynamic> json) =>
    _$InlineKeyboardMarkupImpl(
      inlineKeyboard: (json['inline_keyboard'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) =>
                      InlineKeyboardButton.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [<InlineKeyboardButton>[]],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InlineKeyboardMarkupImplToJson(
        _$InlineKeyboardMarkupImpl instance) =>
    <String, dynamic>{
      'inline_keyboard': instance.inlineKeyboard,
      'runtimeType': instance.$type,
    };

_$ReplyKeyboardMarkupImpl _$$ReplyKeyboardMarkupImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyKeyboardMarkupImpl(
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

Map<String, dynamic> _$$ReplyKeyboardMarkupImplToJson(
        _$ReplyKeyboardMarkupImpl instance) =>
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

_$ReplyKeyboardRemoveImpl _$$ReplyKeyboardRemoveImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyKeyboardRemoveImpl(
      removeKeyboard: json['remove_keyboard'] as bool? ?? true,
      selective: json['selective'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReplyKeyboardRemoveImplToJson(
        _$ReplyKeyboardRemoveImpl instance) =>
    <String, dynamic>{
      'remove_keyboard': instance.removeKeyboard,
      if (instance.selective case final value?) 'selective': value,
      'runtimeType': instance.$type,
    };
