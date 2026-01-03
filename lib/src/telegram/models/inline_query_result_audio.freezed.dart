// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultAudio {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the audio file
  @JsonKey(name: 'audio_url')
  String get audioUrl;

  /// Title
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Performer
  @JsonKey(name: 'performer')
  String? get performer;

  /// Optional. Audio duration in seconds
  @JsonKey(name: 'audio_duration')
  int? get audioDuration;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the audio
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Type of the result, always [InlineQueryResultType.audio]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultAudio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultAudioCopyWith<InlineQueryResultAudio> get copyWith =>
      _$InlineQueryResultAudioCopyWithImpl<InlineQueryResultAudio>(
        this as InlineQueryResultAudio,
        _$identity,
      );

  /// Serializes this InlineQueryResultAudio to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultAudio(id: $id, audioUrl: $audioUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, performer: $performer, audioDuration: $audioDuration, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, type: $type)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultAudioCopyWith<$Res> {
  factory $InlineQueryResultAudioCopyWith(
    InlineQueryResultAudio value,
    $Res Function(InlineQueryResultAudio) _then,
  ) = _$InlineQueryResultAudioCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'audio_url') String audioUrl,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'performer') String? performer,
    @JsonKey(name: 'audio_duration') int? audioDuration,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultAudioCopyWithImpl<$Res>
    implements $InlineQueryResultAudioCopyWith<$Res> {
  _$InlineQueryResultAudioCopyWithImpl(this._self, this._then);

  final InlineQueryResultAudio _self;
  final $Res Function(InlineQueryResultAudio) _then;

  /// Create a copy of InlineQueryResultAudio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? audioUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? performer = freezed,
    Object? audioDuration = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? type = null,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        audioUrl: null == audioUrl
            ? _self.audioUrl
            : audioUrl // ignore: cast_nullable_to_non_nullable
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
        performer: freezed == performer
            ? _self.performer
            : performer // ignore: cast_nullable_to_non_nullable
                  as String?,
        audioDuration: freezed == audioDuration
            ? _self.audioDuration
            : audioDuration // ignore: cast_nullable_to_non_nullable
                  as int?,
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
      ),
    );
  }

  /// Create a copy of InlineQueryResultAudio
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

/// Adds pattern-matching-related methods to [InlineQueryResultAudio].
extension InlineQueryResultAudioPatterns on InlineQueryResultAudio {
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
    TResult Function(_InlineQueryResultAudio value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultAudio() when $default != null:
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
    TResult Function(_InlineQueryResultAudio value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultAudio():
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
    TResult? Function(_InlineQueryResultAudio value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultAudio() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultAudio implements InlineQueryResultAudio {
  const _InlineQueryResultAudio({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'audio_url') required this.audioUrl,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'performer') this.performer,
    @JsonKey(name: 'audio_duration') this.audioDuration,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.audio,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultAudio.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultAudioFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid URL for the audio file
  @override
  @JsonKey(name: 'audio_url')
  final String audioUrl;

  /// Title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting
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

  /// Optional. Performer
  @override
  @JsonKey(name: 'performer')
  final String? performer;

  /// Optional. Audio duration in seconds
  @override
  @JsonKey(name: 'audio_duration')
  final int? audioDuration;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the audio
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Type of the result, always [InlineQueryResultType.audio]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Create a copy of InlineQueryResultAudio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultAudioCopyWith<_InlineQueryResultAudio> get copyWith =>
      __$InlineQueryResultAudioCopyWithImpl<_InlineQueryResultAudio>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultAudioToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultAudio(id: $id, audioUrl: $audioUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, performer: $performer, audioDuration: $audioDuration, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultAudioCopyWith<$Res>
    implements $InlineQueryResultAudioCopyWith<$Res> {
  factory _$InlineQueryResultAudioCopyWith(
    _InlineQueryResultAudio value,
    $Res Function(_InlineQueryResultAudio) _then,
  ) = __$InlineQueryResultAudioCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'audio_url') String audioUrl,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'performer') String? performer,
    @JsonKey(name: 'audio_duration') int? audioDuration,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultAudioCopyWithImpl<$Res>
    implements _$InlineQueryResultAudioCopyWith<$Res> {
  __$InlineQueryResultAudioCopyWithImpl(this._self, this._then);

  final _InlineQueryResultAudio _self;
  final $Res Function(_InlineQueryResultAudio) _then;

  /// Create a copy of InlineQueryResultAudio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? audioUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? performer = freezed,
    Object? audioDuration = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? type = null,
  }) {
    return _then(
      _InlineQueryResultAudio(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        audioUrl: null == audioUrl
            ? _self.audioUrl
            : audioUrl // ignore: cast_nullable_to_non_nullable
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
        performer: freezed == performer
            ? _self.performer
            : performer // ignore: cast_nullable_to_non_nullable
                  as String?,
        audioDuration: freezed == audioDuration
            ? _self.audioDuration
            : audioDuration // ignore: cast_nullable_to_non_nullable
                  as int?,
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
      ),
    );
  }

  /// Create a copy of InlineQueryResultAudio
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
