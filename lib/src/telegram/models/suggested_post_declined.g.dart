// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_declined.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostDeclined _$SuggestedPostDeclinedFromJson(
  Map<String, dynamic> json,
) => _SuggestedPostDeclined(
  suggestedPostMessage: json['suggested_post_message'] == null
      ? null
      : Message.fromJson(
          json['suggested_post_message'] as Map<String, dynamic>,
        ),
  comment: json['comment'] as String?,
);

Map<String, dynamic> _$SuggestedPostDeclinedToJson(
  _SuggestedPostDeclined instance,
) => <String, dynamic>{
  'suggested_post_message': ?instance.suggestedPostMessage,
  'comment': ?instance.comment,
};
