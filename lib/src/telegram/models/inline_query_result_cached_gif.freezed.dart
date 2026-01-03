// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultCachedGif {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier for the GIF file
  @JsonKey(name: 'gif_file_id')
  String get gifFileId;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after
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

  /// Optional. Content of the message to be sent instead of the GIF animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultCachedGif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultCachedGifCopyWith<InlineQueryResultCachedGif>
  get copyWith =>
      _$InlineQueryResultCachedGifCopyWithImpl<InlineQueryResultCachedGif>(
        this as InlineQueryResultCachedGif,
        _$identity,
      );

  /// Serializes this InlineQueryResultCachedGif to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultCachedGif(id: $id, gifFileId: $gifFileId, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia, type: $type)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultCachedGifCopyWith<$Res> {
  factory $InlineQueryResultCachedGifCopyWith(
    InlineQueryResultCachedGif value,
    $Res Function(InlineQueryResultCachedGif) _then,
  ) = _$InlineQueryResultCachedGifCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'gif_file_id') String gifFileId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedGifCopyWithImpl<$Res>
    implements $InlineQueryResultCachedGifCopyWith<$Res> {
  _$InlineQueryResultCachedGifCopyWithImpl(this._self, this._then);

  final InlineQueryResultCachedGif _self;
  final $Res Function(InlineQueryResultCachedGif) _then;

  /// Create a copy of InlineQueryResultCachedGif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gifFileId = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? type = null,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        gifFileId: null == gifFileId
            ? _self.gifFileId
            : gifFileId // ignore: cast_nullable_to_non_nullable
                  as String,
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
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedGif
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

/// Adds pattern-matching-related methods to [InlineQueryResultCachedGif].
extension InlineQueryResultCachedGifPatterns on InlineQueryResultCachedGif {
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
    TResult Function(_InlineQueryResultCachedGif value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedGif() when $default != null:
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
    TResult Function(_InlineQueryResultCachedGif value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedGif():
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
    TResult? Function(_InlineQueryResultCachedGif value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedGif() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultCachedGif implements InlineQueryResultCachedGif {
  const _InlineQueryResultCachedGif({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'gif_file_id') required this.gifFileId,
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
    @JsonKey(name: 'type') this.type = InlineQueryResultType.gif,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultCachedGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedGifFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier for the GIF file
  @override
  @JsonKey(name: 'gif_file_id')
  final String gifFileId;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after
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

  /// Optional. Content of the message to be sent instead of the GIF animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Create a copy of InlineQueryResultCachedGif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultCachedGifCopyWith<_InlineQueryResultCachedGif>
  get copyWith =>
      __$InlineQueryResultCachedGifCopyWithImpl<_InlineQueryResultCachedGif>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultCachedGifToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultCachedGif(id: $id, gifFileId: $gifFileId, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultCachedGifCopyWith<$Res>
    implements $InlineQueryResultCachedGifCopyWith<$Res> {
  factory _$InlineQueryResultCachedGifCopyWith(
    _InlineQueryResultCachedGif value,
    $Res Function(_InlineQueryResultCachedGif) _then,
  ) = __$InlineQueryResultCachedGifCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'gif_file_id') String gifFileId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultCachedGifCopyWithImpl<$Res>
    implements _$InlineQueryResultCachedGifCopyWith<$Res> {
  __$InlineQueryResultCachedGifCopyWithImpl(this._self, this._then);

  final _InlineQueryResultCachedGif _self;
  final $Res Function(_InlineQueryResultCachedGif) _then;

  /// Create a copy of InlineQueryResultCachedGif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? gifFileId = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? type = null,
  }) {
    return _then(
      _InlineQueryResultCachedGif(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        gifFileId: null == gifFileId
            ? _self.gifFileId
            : gifFileId // ignore: cast_nullable_to_non_nullable
                  as String,
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
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedGif
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
