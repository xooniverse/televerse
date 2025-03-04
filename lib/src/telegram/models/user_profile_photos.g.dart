// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfilePhotosImpl _$$UserProfilePhotosImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfilePhotosImpl(
      totalCount: (json['total_count'] as num).toInt(),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$UserProfilePhotosImplToJson(
        _$UserProfilePhotosImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'photos': instance.photos,
    };
