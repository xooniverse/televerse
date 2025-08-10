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
      if (instance.maskPosition case final value?) 'mask_position': value,
      if (instance.keywords case final value?) 'keywords': value,
    };

const _$InputStickerFormatEnumMap = {
  InputStickerFormat.static: 'static',
  InputStickerFormat.animated: 'animated',
  InputStickerFormat.video: 'video',
};
