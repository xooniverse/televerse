// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextQuote {
  /// Text of the quoted part of a message that is replied to by the given
  /// message.
  @JsonKey(name: 'text')
  String get text;

  /// Special entities that appear in the quote. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
  /// quotes.
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities;

  /// Approximate quote position in the original message in UTF-16 code units
  /// as specified by the sender.
  @JsonKey(name: 'position')
  int get position;

  /// True, if the quote was chosen manually by the message sender. Otherwise,
  /// the quote was added automatically by the server.
  @JsonKey(name: 'is_manual')
  bool? get isManual;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextQuoteCopyWith<TextQuote> get copyWith =>
      _$TextQuoteCopyWithImpl<TextQuote>(this as TextQuote, _$identity);

  /// Serializes this TextQuote to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'TextQuote(text: $text, entities: $entities, position: $position, isManual: $isManual)';
  }
}

/// @nodoc
abstract mixin class $TextQuoteCopyWith<$Res> {
  factory $TextQuoteCopyWith(TextQuote value, $Res Function(TextQuote) _then) =
      _$TextQuoteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'is_manual') bool? isManual});
}

/// @nodoc
class _$TextQuoteCopyWithImpl<$Res> implements $TextQuoteCopyWith<$Res> {
  _$TextQuoteCopyWithImpl(this._self, this._then);

  final TextQuote _self;
  final $Res Function(TextQuote) _then;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? entities = freezed,
    Object? position = null,
    Object? isManual = freezed,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _self.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isManual: freezed == isManual
          ? _self.isManual
          : isManual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TextQuote implements TextQuote {
  const _TextQuote(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'entities') final List<MessageEntity>? entities,
      @JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'is_manual') this.isManual})
      : _entities = entities;
  factory _TextQuote.fromJson(Map<String, dynamic> json) =>
      _$TextQuoteFromJson(json);

  /// Text of the quoted part of a message that is replied to by the given
  /// message.
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Special entities that appear in the quote. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
  /// quotes.
  final List<MessageEntity>? _entities;

  /// Special entities that appear in the quote. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
  /// quotes.
  @override
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Approximate quote position in the original message in UTF-16 code units
  /// as specified by the sender.
  @override
  @JsonKey(name: 'position')
  final int position;

  /// True, if the quote was chosen manually by the message sender. Otherwise,
  /// the quote was added automatically by the server.
  @override
  @JsonKey(name: 'is_manual')
  final bool? isManual;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TextQuoteCopyWith<_TextQuote> get copyWith =>
      __$TextQuoteCopyWithImpl<_TextQuote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextQuoteToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'TextQuote(text: $text, entities: $entities, position: $position, isManual: $isManual)';
  }
}

/// @nodoc
abstract mixin class _$TextQuoteCopyWith<$Res>
    implements $TextQuoteCopyWith<$Res> {
  factory _$TextQuoteCopyWith(
          _TextQuote value, $Res Function(_TextQuote) _then) =
      __$TextQuoteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'is_manual') bool? isManual});
}

/// @nodoc
class __$TextQuoteCopyWithImpl<$Res> implements _$TextQuoteCopyWith<$Res> {
  __$TextQuoteCopyWithImpl(this._self, this._then);

  final _TextQuote _self;
  final $Res Function(_TextQuote) _then;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? entities = freezed,
    Object? position = null,
    Object? isManual = freezed,
  }) {
    return _then(_TextQuote(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _self._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isManual: freezed == isManual
          ? _self.isManual
          : isManual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
