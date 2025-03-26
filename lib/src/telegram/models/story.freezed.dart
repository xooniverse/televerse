// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Story {
  /// Chat that posted the story
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique identifier for the story in the chat
  @JsonKey(name: 'id')
  int get id;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryCopyWith<Story> get copyWith =>
      _$StoryCopyWithImpl<Story>(this as Story, _$identity);

  /// Serializes this Story to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Story(chat: $chat, id: $id)';
  }
}

/// @nodoc
abstract mixin class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) _then) =
      _$StoryCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'chat') Chat chat, @JsonKey(name: 'id') int id});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._self, this._then);

  final Story _self;
  final $Res Function(Story) _then;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Story implements Story {
  const _Story(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'id') required this.id});
  factory _Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  /// Chat that posted the story
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique identifier for the story in the chat
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoryCopyWith<_Story> get copyWith =>
      __$StoryCopyWithImpl<_Story>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Story(chat: $chat, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) _then) =
      __$StoryCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'chat') Chat chat, @JsonKey(name: 'id') int id});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$StoryCopyWithImpl<$Res> implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(this._self, this._then);

  final _Story _self;
  final $Res Function(_Story) _then;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? id = null,
  }) {
    return _then(_Story(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
