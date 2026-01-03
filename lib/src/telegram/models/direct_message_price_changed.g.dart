// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_message_price_changed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectMessagePriceChanged _$DirectMessagePriceChangedFromJson(
  Map<String, dynamic> json,
) => _DirectMessagePriceChanged(
  areDirectMessagesEnabled: json['are_direct_messages_enabled'] as bool,
  directMessageStarCount: (json['direct_message_star_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$DirectMessagePriceChangedToJson(
  _DirectMessagePriceChanged instance,
) => <String, dynamic>{
  'are_direct_messages_enabled': instance.areDirectMessagesEnabled,
  'direct_message_star_count': ?instance.directMessageStarCount,
};
