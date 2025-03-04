// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic_edited.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumTopicEdited _$ForumTopicEditedFromJson(Map<String, dynamic> json) {
  return _ForumTopicEdited.fromJson(json);
}

/// @nodoc
mixin _$ForumTopicEdited {
  /// Optional. New name of the topic, if it was edited
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Optional. New identifier of the custom emoji shown as the topic icon,
  /// if it was edited; an empty string if the icon was removed
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId => throw _privateConstructorUsedError;

  /// Serializes this ForumTopicEdited to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumTopicEditedCopyWith<ForumTopicEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumTopicEditedCopyWith<$Res> {
  factory $ForumTopicEditedCopyWith(
          ForumTopicEdited value, $Res Function(ForumTopicEdited) then) =
      _$ForumTopicEditedCopyWithImpl<$Res, ForumTopicEdited>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class _$ForumTopicEditedCopyWithImpl<$Res, $Val extends ForumTopicEdited>
    implements $ForumTopicEditedCopyWith<$Res> {
  _$ForumTopicEditedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconCustomEmojiId: freezed == iconCustomEmojiId
          ? _value.iconCustomEmojiId
          : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForumTopicEditedImplCopyWith<$Res>
    implements $ForumTopicEditedCopyWith<$Res> {
  factory _$$ForumTopicEditedImplCopyWith(_$ForumTopicEditedImpl value,
          $Res Function(_$ForumTopicEditedImpl) then) =
      __$$ForumTopicEditedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId});
}

/// @nodoc
class __$$ForumTopicEditedImplCopyWithImpl<$Res>
    extends _$ForumTopicEditedCopyWithImpl<$Res, _$ForumTopicEditedImpl>
    implements _$$ForumTopicEditedImplCopyWith<$Res> {
  __$$ForumTopicEditedImplCopyWithImpl(_$ForumTopicEditedImpl _value,
      $Res Function(_$ForumTopicEditedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? iconCustomEmojiId = freezed,
  }) {
    return _then(_$ForumTopicEditedImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconCustomEmojiId: freezed == iconCustomEmojiId
          ? _value.iconCustomEmojiId
          : iconCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForumTopicEditedImpl implements _ForumTopicEdited {
  const _$ForumTopicEditedImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'icon_custom_emoji_id') this.iconCustomEmojiId});

  factory _$ForumTopicEditedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumTopicEditedImplFromJson(json);

  /// Optional. New name of the topic, if it was edited
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Optional. New identifier of the custom emoji shown as the topic icon,
  /// if it was edited; an empty string if the icon was removed
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  final String? iconCustomEmojiId;

  @override
  String toString() {
    return 'ForumTopicEdited(name: $name, iconCustomEmojiId: $iconCustomEmojiId)';
  }

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumTopicEditedImplCopyWith<_$ForumTopicEditedImpl> get copyWith =>
      __$$ForumTopicEditedImplCopyWithImpl<_$ForumTopicEditedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumTopicEditedImplToJson(
      this,
    );
  }
}

abstract class _ForumTopicEdited implements ForumTopicEdited {
  const factory _ForumTopicEdited(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'icon_custom_emoji_id')
      final String? iconCustomEmojiId}) = _$ForumTopicEditedImpl;

  factory _ForumTopicEdited.fromJson(Map<String, dynamic> json) =
      _$ForumTopicEditedImpl.fromJson;

  /// Optional. New name of the topic, if it was edited
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Optional. New identifier of the custom emoji shown as the topic icon,
  /// if it was edited; an empty string if the icon was removed
  @override
  @JsonKey(name: 'icon_custom_emoji_id')
  String? get iconCustomEmojiId;

  /// Create a copy of ForumTopicEdited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumTopicEditedImplCopyWith<_$ForumTopicEditedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
