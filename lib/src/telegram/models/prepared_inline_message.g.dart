// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_inline_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreparedInlineMessage _$PreparedInlineMessageFromJson(
        Map<String, dynamic> json) =>
    _PreparedInlineMessage(
      id: json['id'] as String,
      expirationDate: (json['expiration_date'] as num).toInt(),
    );

Map<String, dynamic> _$PreparedInlineMessageToJson(
        _PreparedInlineMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expiration_date': instance.expirationDate,
    };
