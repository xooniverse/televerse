// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic_created.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumTopicCreated _$ForumTopicCreatedFromJson(Map<String, dynamic> json) {
  return _ForumTopicCreated.fromJson(json);
}

/// @nodoc
mixin _$ForumTopicCreated {
  /// Name of the topic
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Color of the topic icon in RGB format
  @JsonKey(name: 'icon_color')
  int get iconColor => throw _privateConstructorUsedError;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId => throw _privateConstructorUsedError;

  /// Serializes this ForumTopicCreated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForumTopicCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumTopicCreatedCopyWith<ForumTopicCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumTopicCreatedCopyWith<$Res> {
  factory $ForumTopicCreatedCopyWith(
          ForumTopicCreated value, $Res Function(ForumTopicCreated) then) =
      _$ForumTopicCreatedCopyWithImpl<$Res, ForumTopicCreated>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon_color') int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class _$ForumTopicCreatedCopyWithImpl<$Res, $Val extends ForumTopicCreated>
    implements $ForumTopicCreatedCopyWith<$Res> {
  _$ForumTopicCreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumTopicCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$ForumTopicCreatedImplCopyWith<$Res>
    implements $ForumTopicCreatedCopyWith<$Res> {
  factory _$$ForumTopicCreatedImplCopyWith(_$ForumTopicCreatedImpl value,
          $Res Function(_$ForumTopicCreatedImpl) then) =
      __$$ForumTopicCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon_color') int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class __$$ForumTopicCreatedImplCopyWithImpl<$Res>
    extends _$ForumTopicCreatedCopyWithImpl<$Res, _$ForumTopicCreatedImpl>
    implements _$$ForumTopicCreatedImplCopyWith<$Res> {
  __$$ForumTopicCreatedImplCopyWithImpl(_$ForumTopicCreatedImpl _value,
      $Res Function(_$ForumTopicCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumTopicCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconColor = null,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_$ForumTopicCreatedImpl(
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
class _$ForumTopicCreatedImpl implements _ForumTopicCreated {
  const _$ForumTopicCreatedImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'icon_color') required this.iconColor,
      @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId});

  factory _$ForumTopicCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumTopicCreatedImplFromJson(json);

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
    return 'ForumTopicCreated(name: $name, iconColor: $iconColor, iconCustomEmojiId: $iconCustomEmojiId)';
  }

  /// Create a copy of ForumTopicCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumTopicCreatedImplCopyWith<_$ForumTopicCreatedImpl> get copyWith =>
      __$$ForumTopicCreatedImplCopyWithImpl<_$ForumTopicCreatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumTopicCreatedImplToJson(
      this,
    );
  }
}

abstract class _ForumTopicCreated implements ForumTopicCreated {
  const factory _ForumTopicCreated(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'icon_color') required final int iconColor,
      @JsonKey(name: 'icon_custom_emoji_id')
      final String? iconCustomEmojiId}) = _$ForumTopicCreatedImpl;

  factory _ForumTopicCreated.fromJson(Map<String, dynamic> json) =
      _$ForumTopicCreatedImpl.fromJson;

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

  /// Create a copy of ForumTopicCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumTopicCreatedImplCopyWith<_$ForumTopicCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
