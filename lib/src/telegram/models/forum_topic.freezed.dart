// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumTopic _$ForumTopicFromJson(Map<String, dynamic> json) {
  return _ForumTopic.fromJson(json);
}

/// @nodoc
mixin _$ForumTopic {
  /// Unique identifier of the forum topic
  @JsonKey(name: 'message_thread_id')
  String get messageThreadId => throw _privateConstructorUsedError;

  /// Name of the topic
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Color of the topic icon in RGB format
  @JsonKey(name: 'icon_color')
  int get iconColor => throw _privateConstructorUsedError;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId => throw _privateConstructorUsedError;

  /// Serializes this ForumTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumTopicCopyWith<ForumTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumTopicCopyWith<$Res> {
  factory $ForumTopicCopyWith(
          ForumTopic value, $Res Function(ForumTopic) then) =
      _$ForumTopicCopyWithImpl<$Res, ForumTopic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_thread_id') String messageThreadId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon_color') int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class _$ForumTopicCopyWithImpl<$Res, $Val extends ForumTopic>
    implements $ForumTopicCopyWith<$Res> {
  _$ForumTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageThreadId = null,
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_value.copyWith(
      messageThreadId: null == messageThreadId
          ? _value.messageThreadId
          : messageThreadId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as int,
      iconCustomEmojiId: freezed == iconCustomEmojiId
          ? _value.iconCustomEmojiId
          : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForumTopicImplCopyWith<$Res>
    implements $ForumTopicCopyWith<$Res> {
  factory _$$ForumTopicImplCopyWith(
          _$ForumTopicImpl value, $Res Function(_$ForumTopicImpl) then) =
      __$$ForumTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_thread_id') String messageThreadId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon_color') int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class __$$ForumTopicImplCopyWithImpl<$Res>
    extends _$ForumTopicCopyWithImpl<$Res, _$ForumTopicImpl>
    implements _$$ForumTopicImplCopyWith<$Res> {
  __$$ForumTopicImplCopyWithImpl(
      _$ForumTopicImpl _value, $Res Function(_$ForumTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageThreadId = null,
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_$ForumTopicImpl(
      messageThreadId: null == messageThreadId
          ? _value.messageThreadId
          : messageThreadId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as int,
      iconCustomEmojiId: freezed == iconCustomEmojiId
          ? _value.iconCustomEmojiId
          : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForumTopicImpl implements _ForumTopic {
  const _$ForumTopicImpl(
      {@JsonKey(name: 'message_thread_id') required this.messageThreadId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'icon_color') required this.iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId});

  factory _$ForumTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumTopicImplFromJson(json);

  /// Unique identifier of the forum topic
  @override
  @JsonKey(name: 'message_thread_id')
  final String messageThreadId;

  /// Name of the topic
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Color of the topic icon in RGB format
  @override
  @JsonKey(name: 'icon_color')
  final int iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  final String? iconCustomEmojiId;

  @override
  String toString() {
    return 'ForumTopic(messageThreadId: $messageThreadId, name: $name, iconColor: $iconColor, iconCustomEmojiId: $iconCustomEmojiId)';
  }

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumTopicImplCopyWith<_$ForumTopicImpl> get copyWith =>
      __$$ForumTopicImplCopyWithImpl<_$ForumTopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumTopicImplToJson(
      this,
    );
  }
}

abstract class _ForumTopic implements ForumTopic {
  const factory _ForumTopic(
      {@JsonKey(name: 'message_thread_id')
      required final String messageThreadId,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'icon_color') required final int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id')
      final String? iconCustomEmojiId}) = _$ForumTopicImpl;

  factory _ForumTopic.fromJson(Map<String, dynamic> json) =
      _$ForumTopicImpl.fromJson;

  /// Unique identifier of the forum topic
  @override
  @JsonKey(name: 'message_thread_id')
  String get messageThreadId;

  /// Name of the topic
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Color of the topic icon in RGB format
  @override
  @JsonKey(name: 'icon_color')
  int get iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId;

  /// Create a copy of ForumTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumTopicImplCopyWith<_$ForumTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
