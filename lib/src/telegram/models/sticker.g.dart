// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sticker _$StickerFromJson(Map<String, dynamic> json) => _Sticker(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      type: $enumDecode(_$StickerTypeEnumMap, json['type']),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      isAnimated: json['is_animated'] as bool,
      isVideo: json['is_video'] as bool,
      thumbnail: json['thumbnail'] == null
          ? null
          : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
      emoji: json['emoji'] as String?,
      setName: json['set_name'] as String?,
      premiumAnimation: json['premium_animation'] == null
          ? null
          : File.fromJson(json['premium_animation'] as Map<String, dynamic>),
      maskPosition: json['mask_position'] == null
          ? null
          : MaskPosition.fromJson(
              json['mask_position'] as Map<String, dynamic>),
      customEmojiId: json['custom_emoji_id'] as String?,
      fileSize: (json['file_size'] as num?)?.toInt(),
      needsRepainting: json['needs_repainting'] as bool?,
    );

Map<String, dynamic> _$StickerToJson(_Sticker instance) => <String, dynamic>{
      'file_id': instance.fileId,
      'file_unique_id': instance.fileUniqueId,
      'type': _$StickerTypeEnumMap[instance.type]!,
      'width': instance.width,
      'height': instance.height,
      'is_animated': instance.isAnimated,
      'is_video': instance.isVideo,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.emoji case final value?) 'emoji': value,
      if (instance.setName case final value?) 'set_name': value,
      if (instance.premiumAnimation case final value?)
        'premium_animation': value,
      if (instance.maskPosition case final value?) 'mask_position': value,
      if (instance.customEmojiId case final value?) 'custom_emoji_id': value,
      if (instance.fileSize case final value?) 'file_size': value,
      if (instance.needsRepainting case final value?) 'needs_repainting': value,
    };

const _$StickerTypeEnumMap = {
  StickerType.regular: 'regular',
  StickerType.mask: 'mask',
  StickerType.customEmoji: 'custom_emoji',
};
