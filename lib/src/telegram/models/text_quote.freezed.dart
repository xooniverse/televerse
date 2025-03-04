// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_quote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextQuote _$TextQuoteFromJson(Map<String, dynamic> json) {
  return _TextQuote.fromJson(json);
}

/// @nodoc
mixin _$TextQuote {
  /// Text of the quoted part of a message that is replied to by the given
  /// message.
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Special entities that appear in the quote. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
  /// quotes.
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities => throw _privateConstructorUsedError;

  /// Approximate quote position in the original message in UTF-16 code units
  /// as specified by the sender.
  @JsonKey(name: 'position')
  int get position => throw _privateConstructorUsedError;

  /// True, if the quote was chosen manually by the message sender. Otherwise,
  /// the quote was added automatically by the server.
  @JsonKey(name: 'is_manual')
  bool? get isManual => throw _privateConstructorUsedError;

  /// Serializes this TextQuote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextQuoteCopyWith<TextQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextQuoteCopyWith<$Res> {
  factory $TextQuoteCopyWith(TextQuote value, $Res Function(TextQuote) then) =
      _$TextQuoteCopyWithImpl<$Res, TextQuote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'is_manual') bool? isManual});
}

/// @nodoc
class _$TextQuoteCopyWithImpl<$Res, $Val extends TextQuote>
    implements $TextQuoteCopyWith<$Res> {
  _$TextQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isManual: freezed == isManual
          ? _value.isManual
          : isManual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextQuoteImplCopyWith<$Res>
    implements $TextQuoteCopyWith<$Res> {
  factory _$$TextQuoteImplCopyWith(
          _$TextQuoteImpl value, $Res Function(_$TextQuoteImpl) then) =
      __$$TextQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'position') int position,
      @JsonKey(name: 'is_manual') bool? isManual});
}

/// @nodoc
class __$$TextQuoteImplCopyWithImpl<$Res>
    extends _$TextQuoteCopyWithImpl<$Res, _$TextQuoteImpl>
    implements _$$TextQuoteImplCopyWith<$Res> {
  __$$TextQuoteImplCopyWithImpl(
      _$TextQuoteImpl _value, $Res Function(_$TextQuoteImpl) _then)
      : super(_value, _then);

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
    return _then(_$TextQuoteImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      entities: freezed == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      isManual: freezed == isManual
          ? _value.isManual
          : isManual // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextQuoteImpl implements _TextQuote {
  const _$TextQuoteImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'entities') final List<MessageEntity>? entities,
      @JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'is_manual') this.isManual})
      : _entities = entities;

  factory _$TextQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextQuoteImplFromJson(json);

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

  @override
  String toString() {
    return 'TextQuote(text: $text, entities: $entities, position: $position, isManual: $isManual)';
  }

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextQuoteImplCopyWith<_$TextQuoteImpl> get copyWith =>
      __$$TextQuoteImplCopyWithImpl<_$TextQuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextQuoteImplToJson(
      this,
    );
  }
}

abstract class _TextQuote implements TextQuote {
  const factory _TextQuote(
      {@JsonKey(name: 'text') required final String text,
      @JsonKey(name: 'entities') final List<MessageEntity>? entities,
      @JsonKey(name: 'position') required final int position,
      @JsonKey(name: 'is_manual') final bool? isManual}) = _$TextQuoteImpl;

  factory _TextQuote.fromJson(Map<String, dynamic> json) =
      _$TextQuoteImpl.fromJson;

  /// Text of the quoted part of a message that is replied to by the given
  /// message.
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Special entities that appear in the quote. Currently, only bold, italic,
  /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
  /// quotes.
  @override
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities;

  /// Approximate quote position in the original message in UTF-16 code units
  /// as specified by the sender.
  @override
  @JsonKey(name: 'position')
  int get position;

  /// True, if the quote was chosen manually by the message sender. Otherwise,
  /// the quote was added automatically by the server.
  @override
  @JsonKey(name: 'is_manual')
  bool? get isManual;

  /// Create a copy of TextQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextQuoteImplCopyWith<_$TextQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
