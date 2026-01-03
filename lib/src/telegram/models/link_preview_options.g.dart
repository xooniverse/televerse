// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_preview_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LinkPreviewOptions _$LinkPreviewOptionsFromJson(Map<String, dynamic> json) =>
    _LinkPreviewOptions(
      isDisabled: json['is_disabled'] as bool?,
      url: json['url'] as String?,
      preferSmallMedia: json['prefer_small_media'] as bool?,
      preferLargeMedia: json['prefer_large_media'] as bool?,
      showAboveText: json['show_above_text'] as bool?,
    );

Map<String, dynamic> _$LinkPreviewOptionsToJson(_LinkPreviewOptions instance) =>
    <String, dynamic>{
      'is_disabled': ?instance.isDisabled,
      'url': ?instance.url,
      'prefer_small_media': ?instance.preferSmallMedia,
      'prefer_large_media': ?instance.preferLargeMedia,
      'show_above_text': ?instance.showAboveText,
    };
