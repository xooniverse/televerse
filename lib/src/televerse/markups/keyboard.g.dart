// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Keyboard _$KeyboardFromJson(Map<String, dynamic> json) => _Keyboard(
      keyboard: (json['keyboard'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map(
                      (e) => KeyboardButton.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [<KeyboardButton>[]],
      resizeKeyboard: json['resize_keyboard'] as bool?,
      oneTimeKeyboard: json['one_time_keyboard'] as bool?,
      inputFieldPlaceholder: json['input_field_placeholder'] as String?,
      selective: json['selective'] as bool?,
      isPersistent: json['is_persistent'] as bool?,
    );

Map<String, dynamic> _$KeyboardToJson(_Keyboard instance) => <String, dynamic>{
      'keyboard': instance.keyboard,
      if (instance.resizeKeyboard case final value?) 'resize_keyboard': value,
      if (instance.oneTimeKeyboard case final value?)
        'one_time_keyboard': value,
      if (instance.inputFieldPlaceholder case final value?)
        'input_field_placeholder': value,
      if (instance.selective case final value?) 'selective': value,
      if (instance.isPersistent case final value?) 'is_persistent': value,
    };
