// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultCachedSticker _$InlineQueryResultCachedStickerFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultCachedSticker.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultCachedSticker {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// A valid file identifier of the sticker
  @JsonKey(name: 'sticker_file_id')
  String get stickerFileId => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the sticker
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Type of the result, always [InlineQueryResultType.sticker]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultCachedSticker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultCachedStickerCopyWith<InlineQueryResultCachedSticker>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultCachedStickerCopyWith<$Res> {
  factory $InlineQueryResultCachedStickerCopyWith(
          InlineQueryResultCachedSticker value,
          $Res Function(InlineQueryResultCachedSticker) then) =
      _$InlineQueryResultCachedStickerCopyWithImpl<$Res,
          InlineQueryResultCachedSticker>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sticker_file_id') String stickerFileId,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'type') InlineQueryResultType type});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedStickerCopyWithImpl<$Res,
        $Val extends InlineQueryResultCachedSticker>
    implements $InlineQueryResultCachedStickerCopyWith<$Res> {
  _$InlineQueryResultCachedStickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stickerFileId = null,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stickerFileId: null == stickerFileId
          ? _value.stickerFileId
          : stickerFileId // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_value.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_value.inputMessageContent!,
        (value) {
      return _then(_value.copyWith(inputMessageContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryResultCachedStickerImplCopyWith<$Res>
    implements $InlineQueryResultCachedStickerCopyWith<$Res> {
  factory _$$InlineQueryResultCachedStickerImplCopyWith(
          _$InlineQueryResultCachedStickerImpl value,
          $Res Function(_$InlineQueryResultCachedStickerImpl) then) =
      __$$InlineQueryResultCachedStickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'sticker_file_id') String stickerFileId,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'type') InlineQueryResultType type});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultCachedStickerImplCopyWithImpl<$Res>
    extends _$InlineQueryResultCachedStickerCopyWithImpl<$Res,
        _$InlineQueryResultCachedStickerImpl>
    implements _$$InlineQueryResultCachedStickerImplCopyWith<$Res> {
  __$$InlineQueryResultCachedStickerImplCopyWithImpl(
      _$InlineQueryResultCachedStickerImpl _value,
      $Res Function(_$InlineQueryResultCachedStickerImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stickerFileId = null,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? type = null,
  }) {
    return _then(_$InlineQueryResultCachedStickerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stickerFileId: null == stickerFileId
          ? _value.stickerFileId
          : stickerFileId // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultCachedStickerImpl
    implements _InlineQueryResultCachedSticker {
  const _$InlineQueryResultCachedStickerImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'sticker_file_id') required this.stickerFileId,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.sticker});

  factory _$InlineQueryResultCachedStickerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InlineQueryResultCachedStickerImplFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier of the sticker
  @override
  @JsonKey(name: 'sticker_file_id')
  final String stickerFileId;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Type of the result, always [InlineQueryResultType.sticker]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  @override
  String toString() {
    return 'InlineQueryResultCachedSticker(id: $id, stickerFileId: $stickerFileId, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, type: $type)';
  }

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultCachedStickerImplCopyWith<
          _$InlineQueryResultCachedStickerImpl>
      get copyWith => __$$InlineQueryResultCachedStickerImplCopyWithImpl<
          _$InlineQueryResultCachedStickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultCachedStickerImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultCachedSticker
    implements InlineQueryResultCachedSticker {
  const factory _InlineQueryResultCachedSticker(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'sticker_file_id') required final String stickerFileId,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'type')
      final InlineQueryResultType type}) = _$InlineQueryResultCachedStickerImpl;

  factory _InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultCachedStickerImpl.fromJson;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier of the sticker
  @override
  @JsonKey(name: 'sticker_file_id')
  String get stickerFileId;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Type of the result, always [InlineQueryResultType.sticker]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultCachedStickerImplCopyWith<
          _$InlineQueryResultCachedStickerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
