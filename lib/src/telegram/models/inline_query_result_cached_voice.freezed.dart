// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultCachedVoice {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Type of the result, always [InlineQueryResultType.voice]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// A valid file identifier for the voice message
  @JsonKey(name: 'voice_file_id')
  String get voiceFileId;

  /// Voice message title
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Caption, 0-1024 characters after entities parsing
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

  /// Optional. Content of the message to be sent instead of the voice message
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Create a copy of InlineQueryResultCachedVoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultCachedVoiceCopyWith<InlineQueryResultCachedVoice>
  get copyWith =>
      _$InlineQueryResultCachedVoiceCopyWithImpl<InlineQueryResultCachedVoice>(
        this as InlineQueryResultCachedVoice,
        _$identity,
      );

  /// Serializes this InlineQueryResultCachedVoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultCachedVoice(id: $id, type: $type, voiceFileId: $voiceFileId, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultCachedVoiceCopyWith<$Res> {
  factory $InlineQueryResultCachedVoiceCopyWith(
    InlineQueryResultCachedVoice value,
    $Res Function(InlineQueryResultCachedVoice) _then,
  ) = _$InlineQueryResultCachedVoiceCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'voice_file_id') String voiceFileId,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedVoiceCopyWithImpl<$Res>
    implements $InlineQueryResultCachedVoiceCopyWith<$Res> {
  _$InlineQueryResultCachedVoiceCopyWithImpl(this._self, this._then);

  final InlineQueryResultCachedVoice _self;
  final $Res Function(InlineQueryResultCachedVoice) _then;

  /// Create a copy of InlineQueryResultCachedVoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? voiceFileId = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        voiceFileId: null == voiceFileId
            ? _self.voiceFileId
            : voiceFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedVoice
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

/// Adds pattern-matching-related methods to [InlineQueryResultCachedVoice].
extension InlineQueryResultCachedVoicePatterns on InlineQueryResultCachedVoice {
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
    TResult Function(_InlineQueryResultCachedVoice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVoice() when $default != null:
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
    TResult Function(_InlineQueryResultCachedVoice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVoice():
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
    TResult? Function(_InlineQueryResultCachedVoice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultCachedVoice() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultCachedVoice implements InlineQueryResultCachedVoice {
  const _InlineQueryResultCachedVoice({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.voice,
    @JsonKey(name: 'voice_file_id') required this.voiceFileId,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultCachedVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVoiceFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// A valid file identifier for the voice message
  @override
  @JsonKey(name: 'voice_file_id')
  final String voiceFileId;

  /// Voice message title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
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

  /// Optional. Content of the message to be sent instead of the voice message
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Create a copy of InlineQueryResultCachedVoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultCachedVoiceCopyWith<_InlineQueryResultCachedVoice>
  get copyWith =>
      __$InlineQueryResultCachedVoiceCopyWithImpl<
        _InlineQueryResultCachedVoice
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultCachedVoiceToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultCachedVoice(id: $id, type: $type, voiceFileId: $voiceFileId, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultCachedVoiceCopyWith<$Res>
    implements $InlineQueryResultCachedVoiceCopyWith<$Res> {
  factory _$InlineQueryResultCachedVoiceCopyWith(
    _InlineQueryResultCachedVoice value,
    $Res Function(_InlineQueryResultCachedVoice) _then,
  ) = __$InlineQueryResultCachedVoiceCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'voice_file_id') String voiceFileId,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultCachedVoiceCopyWithImpl<$Res>
    implements _$InlineQueryResultCachedVoiceCopyWith<$Res> {
  __$InlineQueryResultCachedVoiceCopyWithImpl(this._self, this._then);

  final _InlineQueryResultCachedVoice _self;
  final $Res Function(_InlineQueryResultCachedVoice) _then;

  /// Create a copy of InlineQueryResultCachedVoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? voiceFileId = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(
      _InlineQueryResultCachedVoice(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        voiceFileId: null == voiceFileId
            ? _self.voiceFileId
            : voiceFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }

  /// Create a copy of InlineQueryResultCachedVoice
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
