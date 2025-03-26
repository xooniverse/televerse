// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultVoice {
  /// Type of the result, always [InlineQueryResultType.voice]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the voice recording
  @JsonKey(name: 'voice_url')
  String get voiceUrl;

  /// Recording title
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the voice message caption. See
  /// formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Recording duration in seconds
  @JsonKey(name: 'voice_duration')
  int? get voiceDuration;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice
  /// recording
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultVoiceCopyWith<InlineQueryResultVoice> get copyWith =>
      _$InlineQueryResultVoiceCopyWithImpl<InlineQueryResultVoice>(
          this as InlineQueryResultVoice, _$identity);

  /// Serializes this InlineQueryResultVoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultVoice(type: $type, id: $id, voiceUrl: $voiceUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, voiceDuration: $voiceDuration, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultVoiceCopyWith<$Res> {
  factory $InlineQueryResultVoiceCopyWith(InlineQueryResultVoice value,
          $Res Function(InlineQueryResultVoice) _then) =
      _$InlineQueryResultVoiceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'voice_url') String voiceUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'voice_duration') int? voiceDuration,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultVoiceCopyWithImpl<$Res>
    implements $InlineQueryResultVoiceCopyWith<$Res> {
  _$InlineQueryResultVoiceCopyWithImpl(this._self, this._then);

  final InlineQueryResultVoice _self;
  final $Res Function(InlineQueryResultVoice) _then;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? voiceUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? voiceDuration = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voiceUrl: null == voiceUrl
          ? _self.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
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
      voiceDuration: freezed == voiceDuration
          ? _self.voiceDuration
          : voiceDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
    ));
  }

  /// Create a copy of InlineQueryResultVoice
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
class _InlineQueryResultVoice implements InlineQueryResultVoice {
  const _InlineQueryResultVoice(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.voice,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'voice_url') required this.voiceUrl,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'voice_duration') this.voiceDuration,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent})
      : _captionEntities = captionEntities;
  factory _InlineQueryResultVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVoiceFromJson(json);

  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid URL for the voice recording
  @override
  @JsonKey(name: 'voice_url')
  final String voiceUrl;

  /// Recording title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the voice message caption. See
  /// formatting options for more details.
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

  /// Optional. Recording duration in seconds
  @override
  @JsonKey(name: 'voice_duration')
  final int? voiceDuration;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice
  /// recording
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultVoiceCopyWith<_InlineQueryResultVoice> get copyWith =>
      __$InlineQueryResultVoiceCopyWithImpl<_InlineQueryResultVoice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultVoiceToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultVoice(type: $type, id: $id, voiceUrl: $voiceUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, voiceDuration: $voiceDuration, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultVoiceCopyWith<$Res>
    implements $InlineQueryResultVoiceCopyWith<$Res> {
  factory _$InlineQueryResultVoiceCopyWith(_InlineQueryResultVoice value,
          $Res Function(_InlineQueryResultVoice) _then) =
      __$InlineQueryResultVoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'voice_url') String voiceUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'voice_duration') int? voiceDuration,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultVoiceCopyWithImpl<$Res>
    implements _$InlineQueryResultVoiceCopyWith<$Res> {
  __$InlineQueryResultVoiceCopyWithImpl(this._self, this._then);

  final _InlineQueryResultVoice _self;
  final $Res Function(_InlineQueryResultVoice) _then;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? voiceUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? voiceDuration = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(_InlineQueryResultVoice(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voiceUrl: null == voiceUrl
          ? _self.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
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
      voiceDuration: freezed == voiceDuration
          ? _self.voiceDuration
          : voiceDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
    ));
  }

  /// Create a copy of InlineQueryResultVoice
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
