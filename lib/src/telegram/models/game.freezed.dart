// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Game {
  /// Title of the game
  @JsonKey(name: 'title')
  String get title;

  /// Description of the game
  @JsonKey(name: 'description')
  String get description;

  /// Photo that will be displayed in the game message in chats.
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo;

  /// Optional. Brief description of the game or high scores included in the game message.
  @JsonKey(name: 'text')
  String? get text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Optional. Animation that will be displayed in the game message in chats.
  @JsonKey(name: 'animation')
  Animation? get animation;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameCopyWith<Game> get copyWith =>
      _$GameCopyWithImpl<Game>(this as Game, _$identity);

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Game(title: $title, description: $description, photo: $photo, text: $text, textEntities: $textEntities, animation: $animation)';
  }
}

/// @nodoc
abstract mixin class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) =
      _$GameCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'photo') List<PhotoSize> photo,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      @JsonKey(name: 'animation') Animation? animation});

  $AnimationCopyWith<$Res>? get animation;
}

/// @nodoc
class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? photo = null,
    Object? text = freezed,
    Object? textEntities = freezed,
    Object? animation = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textEntities: freezed == textEntities
          ? _self.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      animation: freezed == animation
          ? _self.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
    ));
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_self.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_self.animation!, (value) {
      return _then(_self.copyWith(animation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Game implements Game {
  const _Game(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'photo') required final List<PhotoSize> photo,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
      @JsonKey(name: 'animation') this.animation})
      : _photo = photo,
        _textEntities = textEntities;
  factory _Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  /// Title of the game
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Description of the game
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Photo that will be displayed in the game message in chats.
  final List<PhotoSize> _photo;

  /// Photo that will be displayed in the game message in chats.
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  /// Optional. Brief description of the game or high scores included in the game message.
  @override
  @JsonKey(name: 'text')
  final String? text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  final List<MessageEntity>? _textEntities;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities {
    final value = _textEntities;
    if (value == null) return null;
    if (_textEntities is EqualUnmodifiableListView) return _textEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Animation that will be displayed in the game message in chats.
  @override
  @JsonKey(name: 'animation')
  final Animation? animation;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Game(title: $title, description: $description, photo: $photo, text: $text, textEntities: $textEntities, animation: $animation)';
  }
}

/// @nodoc
abstract mixin class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) _then) =
      __$GameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'photo') List<PhotoSize> photo,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      @JsonKey(name: 'animation') Animation? animation});

  @override
  $AnimationCopyWith<$Res>? get animation;
}

/// @nodoc
class __$GameCopyWithImpl<$Res> implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(this._self, this._then);

  final _Game _self;
  final $Res Function(_Game) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? photo = null,
    Object? text = freezed,
    Object? textEntities = freezed,
    Object? animation = freezed,
  }) {
    return _then(_Game(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _self._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textEntities: freezed == textEntities
          ? _self._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      animation: freezed == animation
          ? _self.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
    ));
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_self.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_self.animation!, (value) {
      return _then(_self.copyWith(animation: value));
    });
  }
}
