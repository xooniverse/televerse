// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  /// Title of the game
  String get title => throw _privateConstructorUsedError;

  /// Description of the game
  String get description => throw _privateConstructorUsedError;

  /// Photo that will be displayed in the game message in chats.
  List<PhotoSize> get photo => throw _privateConstructorUsedError;

  /// Optional. Brief description of the game or high scores included in the game message.
  String? get text => throw _privateConstructorUsedError;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities => throw _privateConstructorUsedError;

  /// Optional. Animation that will be displayed in the game message in chats.
  Animation? get animation => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<PhotoSize> photo,
      String? text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      Animation? animation});

  $AnimationCopyWith<$Res>? get animation;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textEntities: freezed == textEntities
          ? _value.textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      animation: freezed == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
    ) as $Val);
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_value.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_value.animation!, (value) {
      return _then(_value.copyWith(animation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<PhotoSize> photo,
      String? text,
      @JsonKey(name: 'text_entities') List<MessageEntity>? textEntities,
      Animation? animation});

  @override
  $AnimationCopyWith<$Res>? get animation;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

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
    return _then(_$GameImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textEntities: freezed == textEntities
          ? _value._textEntities
          : textEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      animation: freezed == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.title,
      required this.description,
      required final List<PhotoSize> photo,
      this.text,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
      this.animation})
      : _photo = photo,
        _textEntities = textEntities;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  /// Title of the game
  @override
  final String title;

  /// Description of the game
  @override
  final String description;

  /// Photo that will be displayed in the game message in chats.
  final List<PhotoSize> _photo;

  /// Photo that will be displayed in the game message in chats.
  @override
  List<PhotoSize> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  /// Optional. Brief description of the game or high scores included in the game message.
  @override
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
  final Animation? animation;

  @override
  String toString() {
    return 'Game(title: $title, description: $description, photo: $photo, text: $text, textEntities: $textEntities, animation: $animation)';
  }

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String title,
      required final String description,
      required final List<PhotoSize> photo,
      final String? text,
      @JsonKey(name: 'text_entities') final List<MessageEntity>? textEntities,
      final Animation? animation}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  /// Title of the game
  @override
  String get title;

  /// Description of the game
  @override
  String get description;

  /// Photo that will be displayed in the game message in chats.
  @override
  List<PhotoSize> get photo;

  /// Optional. Brief description of the game or high scores included in the game message.
  @override
  String? get text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  @override
  @JsonKey(name: 'text_entities')
  List<MessageEntity>? get textEntities;

  /// Optional. Animation that will be displayed in the game message in chats.
  @override
  Animation? get animation;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
