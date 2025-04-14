// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_story_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputStoryContentPhoto _$InputStoryContentPhotoFromJson(
        Map<String, dynamic> json) =>
    InputStoryContentPhoto(
      type: json['type'] as String? ?? 'photo',
      photo: const InputFileConverter().fromJson(json['photo'] as String),
    );

Map<String, dynamic> _$InputStoryContentPhotoToJson(
        InputStoryContentPhoto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'photo': const InputFileConverter().toJson(instance.photo),
    };

InputStoryContentVideo _$InputStoryContentVideoFromJson(
        Map<String, dynamic> json) =>
    InputStoryContentVideo(
      type: json['type'] as String? ?? 'video',
      video: const InputFileConverter().fromJson(json['video'] as String),
      duration: (json['duration'] as num?)?.toDouble(),
      coverFrameTimestamp: (json['cover_frame_timestamp'] as num?)?.toDouble(),
      isAnimation: json['is_animation'] as bool?,
    );

Map<String, dynamic> _$InputStoryContentVideoToJson(
        InputStoryContentVideo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'video': const InputFileConverter().toJson(instance.video),
      if (instance.duration case final value?) 'duration': value,
      if (instance.coverFrameTimestamp case final value?)
        'cover_frame_timestamp': value,
      if (instance.isAnimation case final value?) 'is_animation': value,
    };
