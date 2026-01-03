// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StickerSet _$StickerSetFromJson(Map<String, dynamic> json) => _StickerSet(
  name: json['name'] as String,
  title: json['title'] as String,
  stickerType: $enumDecode(_$StickerTypeEnumMap, json['sticker_type']),
  stickers: (json['stickers'] as List<dynamic>)
      .map((e) => Sticker.fromJson(e as Map<String, dynamic>))
      .toList(),
  thumbnail: json['thumbnail'] == null
      ? null
      : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StickerSetToJson(_StickerSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'sticker_type': _$StickerTypeEnumMap[instance.stickerType]!,
      'stickers': instance.stickers,
      'thumbnail': ?instance.thumbnail,
    };

const _$StickerTypeEnumMap = {
  StickerType.regular: 'regular',
  StickerType.mask: 'mask',
  StickerType.customEmoji: 'custom_emoji',
};
