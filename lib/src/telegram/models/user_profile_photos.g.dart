// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfilePhotos _$UserProfilePhotosFromJson(Map<String, dynamic> json) =>
    _UserProfilePhotos(
      totalCount: (json['total_count'] as num).toInt(),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$UserProfilePhotosToJson(_UserProfilePhotos instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'photos': instance.photos,
    };
