// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepared_inline_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreparedInlineMessageImpl _$$PreparedInlineMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$PreparedInlineMessageImpl(
      id: json['id'] as String,
      expirationDate: (json['expiration_date'] as num).toInt(),
    );

Map<String, dynamic> _$$PreparedInlineMessageImplToJson(
        _$PreparedInlineMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expiration_date': instance.expirationDate,
    };
