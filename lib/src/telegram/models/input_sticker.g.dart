// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$InputStickerToJson(_InputSticker instance) =>
    <String, dynamic>{
      'sticker': const InputFileConverter().toJson(instance.sticker),
      'format': _$InputStickerFormatEnumMap[instance.format]!,
      'emoji_list': instance.emojiList,
      'mask_position': ?instance.maskPosition,
      'keywords': ?instance.keywords,
    };

const _$InputStickerFormatEnumMap = {
  InputStickerFormat.static: 'static',
  InputStickerFormat.animated: 'animated',
  InputStickerFormat.video: 'video',
};
