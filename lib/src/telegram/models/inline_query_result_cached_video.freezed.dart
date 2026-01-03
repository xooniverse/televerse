// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultCachedVideo {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier for the video file
  @JsonKey(name: 'video_file_id')
  String get videoFileId;

  /// Title for the result
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
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
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.video]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultCachedVideoCopyWith<InlineQueryResultCachedVideo>
  get copyWith =>
      _$InlineQueryResultCachedVideoCopyWithImpl<InlineQueryResultCachedVideo>(
        this as InlineQueryResultCachedVideo,
        _$identity,
      );

  /// Serializes this InlineQueryResultCachedVideo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultCachedVideo(id: $id, videoFileId: $videoFileId, title: $title, description: $description, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia, type: $type)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultCachedVideoCopyWith<$Res> {
  factory $InlineQueryResultCachedVideoCopyWith(
    InlineQueryResultCachedVideo value,
    $Res Function(InlineQueryResultCachedVideo) _then,
  ) = _$InlineQueryResultCachedVideoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'video_file_id') String videoFileId,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
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
class _$InlineQueryResultCachedVideoCopyWithImpl<$Res>
    implements $InlineQueryResultCachedVideoCopyWith<$Res> {
  _$InlineQueryResultCachedVideoCopyWithImpl(this._self, this._then);

  final InlineQueryResultCachedVideo _self;
  final $Res Function(InlineQueryResultCachedVideo) _then;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videoFileId = null,
    Object? title = null,
    Object? description = freezed,
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
        videoFileId: null == videoFileId
            ? _self.videoFileId
            : videoFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InlineQueryResultCachedVideo
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

/// Adds pattern-matching-related methods to [InlineQueryResultCachedVideo].
extension InlineQueryResultCachedVideoPatterns on InlineQueryResultCachedVideo {
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
    TResult Function(_InlineQueryResultCachedVideo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVideo() when $default != null:
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
    TResult Function(_InlineQueryResultCachedVideo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVideo():
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
    TResult? Function(_InlineQueryResultCachedVideo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVideo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultCachedVideo implements InlineQueryResultCachedVideo {
  const _InlineQueryResultCachedVideo({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'video_file_id') required this.videoFileId,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
    @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.video,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVideoFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier for the video file
  @override
  @JsonKey(name: 'video_file_id')
  final String videoFileId;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
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
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultCachedVideoCopyWith<_InlineQueryResultCachedVideo>
  get copyWith =>
      __$InlineQueryResultCachedVideoCopyWithImpl<
        _InlineQueryResultCachedVideo
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultCachedVideoToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultCachedVideo(id: $id, videoFileId: $videoFileId, title: $title, description: $description, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultCachedVideoCopyWith<$Res>
    implements $InlineQueryResultCachedVideoCopyWith<$Res> {
  factory _$InlineQueryResultCachedVideoCopyWith(
    _InlineQueryResultCachedVideo value,
    $Res Function(_InlineQueryResultCachedVideo) _then,
  ) = __$InlineQueryResultCachedVideoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'video_file_id') String videoFileId,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
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
class __$InlineQueryResultCachedVideoCopyWithImpl<$Res>
    implements _$InlineQueryResultCachedVideoCopyWith<$Res> {
  __$InlineQueryResultCachedVideoCopyWithImpl(this._self, this._then);

  final _InlineQueryResultCachedVideo _self;
  final $Res Function(_InlineQueryResultCachedVideo) _then;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? videoFileId = null,
    Object? title = null,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? type = null,
  }) {
    return _then(
      _InlineQueryResultCachedVideo(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        videoFileId: null == videoFileId
            ? _self.videoFileId
            : videoFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InlineQueryResultCachedVideo
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
