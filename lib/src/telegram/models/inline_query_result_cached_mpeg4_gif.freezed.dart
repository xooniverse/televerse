// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_mpeg4_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultCachedMpeg4Gif {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier for the MPEG4 file
  @JsonKey(name: 'mpeg4_file_id')
  String get mpeg4FileId;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the caption. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  /// animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultCachedMpeg4GifCopyWith<InlineQueryResultCachedMpeg4Gif>
  get copyWith =>
      _$InlineQueryResultCachedMpeg4GifCopyWithImpl<
        InlineQueryResultCachedMpeg4Gif
      >(this as InlineQueryResultCachedMpeg4Gif, _$identity);

  /// Serializes this InlineQueryResultCachedMpeg4Gif to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultCachedMpeg4Gif(id: $id, mpeg4FileId: $mpeg4FileId, type: $type, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  factory $InlineQueryResultCachedMpeg4GifCopyWith(
    InlineQueryResultCachedMpeg4Gif value,
    $Res Function(InlineQueryResultCachedMpeg4Gif) _then,
  ) = _$InlineQueryResultCachedMpeg4GifCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'mpeg4_file_id') String mpeg4FileId,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedMpeg4GifCopyWithImpl<$Res>
    implements $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  _$InlineQueryResultCachedMpeg4GifCopyWithImpl(this._self, this._then);

  final InlineQueryResultCachedMpeg4Gif _self;
  final $Res Function(InlineQueryResultCachedMpeg4Gif) _then;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mpeg4FileId = null,
    Object? type = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        mpeg4FileId: null == mpeg4FileId
            ? _self.mpeg4FileId
            : mpeg4FileId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as String?,
        parseMode: freezed == parseMode
            ? _self.parseMode
            : parseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        captionEntities: freezed == captionEntities
            ? _self.captionEntities
            : captionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        showCaptionAboveMedia: freezed == showCaptionAboveMedia
            ? _self.showCaptionAboveMedia
            : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InlineQueryResultCachedMpeg4Gif].
extension InlineQueryResultCachedMpeg4GifPatterns
    on InlineQueryResultCachedMpeg4Gif {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InlineQueryResultCachedMpeg4Gif value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedMpeg4Gif() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InlineQueryResultCachedMpeg4Gif value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedMpeg4Gif():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InlineQueryResultCachedMpeg4Gif value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedMpeg4Gif() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultCachedMpeg4Gif
    implements InlineQueryResultCachedMpeg4Gif {
  const _InlineQueryResultCachedMpeg4Gif({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'mpeg4_file_id') required this.mpeg4FileId,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.mpeg4Gif,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultCachedMpeg4Gif.fromJson(
    Map<String, dynamic> json,
  ) => _$InlineQueryResultCachedMpeg4GifFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier for the MPEG4 file
  @override
  @JsonKey(name: 'mpeg4_file_id')
  final String mpeg4FileId;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  /// animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultCachedMpeg4GifCopyWith<_InlineQueryResultCachedMpeg4Gif>
  get copyWith =>
      __$InlineQueryResultCachedMpeg4GifCopyWithImpl<
        _InlineQueryResultCachedMpeg4Gif
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultCachedMpeg4GifToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultCachedMpeg4Gif(id: $id, mpeg4FileId: $mpeg4FileId, type: $type, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultCachedMpeg4GifCopyWith<$Res>
    implements $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  factory _$InlineQueryResultCachedMpeg4GifCopyWith(
    _InlineQueryResultCachedMpeg4Gif value,
    $Res Function(_InlineQueryResultCachedMpeg4Gif) _then,
  ) = __$InlineQueryResultCachedMpeg4GifCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'mpeg4_file_id') String mpeg4FileId,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultCachedMpeg4GifCopyWithImpl<$Res>
    implements _$InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  __$InlineQueryResultCachedMpeg4GifCopyWithImpl(this._self, this._then);

  final _InlineQueryResultCachedMpeg4Gif _self;
  final $Res Function(_InlineQueryResultCachedMpeg4Gif) _then;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? mpeg4FileId = null,
    Object? type = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(
      _InlineQueryResultCachedMpeg4Gif(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        mpeg4FileId: null == mpeg4FileId
            ? _self.mpeg4FileId
            : mpeg4FileId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        caption: freezed == caption
            ? _self.caption
            : caption // ignore: cast_nullable_to_non_nullable
                  as String?,
        parseMode: freezed == parseMode
            ? _self.parseMode
            : parseMode // ignore: cast_nullable_to_non_nullable
                  as ParseMode?,
        captionEntities: freezed == captionEntities
            ? _self._captionEntities
            : captionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        showCaptionAboveMedia: freezed == showCaptionAboveMedia
            ? _self.showCaptionAboveMedia
            : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
