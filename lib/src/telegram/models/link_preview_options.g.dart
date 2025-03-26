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
      if (instance.isDisabled case final value?) 'is_disabled': value,
      if (instance.url case final value?) 'url': value,
      if (instance.preferSmallMedia case final value?)
        'prefer_small_media': value,
      if (instance.preferLargeMedia case final value?)
        'prefer_large_media': value,
      if (instance.showAboveText case final value?) 'show_above_text': value,
    };
