// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Game _$GameFromJson(Map<String, dynamic> json) => _Game(
  title: json['title'] as String,
  description: json['description'] as String,
  photo: (json['photo'] as List<dynamic>)
      .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  text: json['text'] as String?,
  textEntities: (json['text_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  animation: json['animation'] == null
      ? null
      : Animation.fromJson(json['animation'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GameToJson(_Game instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'photo': instance.photo,
  'text': ?instance.text,
  'text_entities': ?instance.textEntities,
  'animation': ?instance.animation,
};
