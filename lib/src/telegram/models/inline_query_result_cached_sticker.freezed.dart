// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultCachedSticker {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier of the sticker
  @JsonKey(name: 'sticker_file_id')
  String get stickerFileId;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Type of the result, always [InlineQueryResultType.sticker]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultCachedStickerCopyWith<InlineQueryResultCachedSticker>
      get copyWith => _$InlineQueryResultCachedStickerCopyWithImpl<
              InlineQueryResultCachedSticker>(
          this as InlineQueryResultCachedSticker, _$identity);

  /// Serializes this InlineQueryResultCachedSticker to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultCachedSticker(id: $id, stickerFileId: $stickerFileId, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, type: $type)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultCachedStickerCopyWith<$Res> {
  factory $InlineQueryResultCachedStickerCopyWith(
          InlineQueryResultCachedSticker value,
          $Res Function(InlineQueryResultCachedSticker) _then) =
      _$InlineQueryResultCachedStickerCopyWithImpl;
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
class _$InlineQueryResultCachedStickerCopyWithImpl<$Res>
    implements $InlineQueryResultCachedStickerCopyWith<$Res> {
  _$InlineQueryResultCachedStickerCopyWithImpl(this._self, this._then);

  final InlineQueryResultCachedSticker _self;
  final $Res Function(InlineQueryResultCachedSticker) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stickerFileId: null == stickerFileId
          ? _self.stickerFileId
          : stickerFileId // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ));
  }

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultCachedSticker
    implements InlineQueryResultCachedSticker {
  const _InlineQueryResultCachedSticker(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'sticker_file_id') required this.stickerFileId,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.sticker});
  factory _InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedStickerFromJson(json);

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

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultCachedStickerCopyWith<_InlineQueryResultCachedSticker>
      get copyWith => __$InlineQueryResultCachedStickerCopyWithImpl<
          _InlineQueryResultCachedSticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultCachedStickerToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultCachedSticker(id: $id, stickerFileId: $stickerFileId, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultCachedStickerCopyWith<$Res>
    implements $InlineQueryResultCachedStickerCopyWith<$Res> {
  factory _$InlineQueryResultCachedStickerCopyWith(
          _InlineQueryResultCachedSticker value,
          $Res Function(_InlineQueryResultCachedSticker) _then) =
      __$InlineQueryResultCachedStickerCopyWithImpl;
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
class __$InlineQueryResultCachedStickerCopyWithImpl<$Res>
    implements _$InlineQueryResultCachedStickerCopyWith<$Res> {
  __$InlineQueryResultCachedStickerCopyWithImpl(this._self, this._then);

  final _InlineQueryResultCachedSticker _self;
  final $Res Function(_InlineQueryResultCachedSticker) _then;

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? stickerFileId = null,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? type = null,
  }) {
    return _then(_InlineQueryResultCachedSticker(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stickerFileId: null == stickerFileId
          ? _self.stickerFileId
          : stickerFileId // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ));
  }

  /// Create a copy of InlineQueryResultCachedSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
