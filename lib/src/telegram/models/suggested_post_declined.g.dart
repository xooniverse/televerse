// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_declined.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostDeclined _$SuggestedPostDeclinedFromJson(
        Map<String, dynamic> json) =>
    _SuggestedPostDeclined(
      suggestedPostMessage: json['suggested_post_message'] == null
          ? null
          : Message.fromJson(
              json['suggested_post_message'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$SuggestedPostDeclinedToJson(
        _SuggestedPostDeclined instance) =>
    <String, dynamic>{
      if (instance.suggestedPostMessage case final value?)
        'suggested_post_message': value,
      if (instance.comment case final value?) 'comment': value,
    };
