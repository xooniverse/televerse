// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultVoice _$InlineQueryResultVoiceFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultVoice.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultVoice {
  /// Type of the result, always [InlineQueryResultType.voice]
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// A valid URL for the voice recording
  @JsonKey(name: 'voice_url')
  String get voiceUrl => throw _privateConstructorUsedError;

  /// Recording title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the voice message caption. See
  /// formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode => throw _privateConstructorUsedError;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities =>
      throw _privateConstructorUsedError;

  /// Optional. Recording duration in seconds
  @JsonKey(name: 'voice_duration')
  int? get voiceDuration => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the voice
  /// recording
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultVoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultVoiceCopyWith<InlineQueryResultVoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultVoiceCopyWith<$Res> {
  factory $InlineQueryResultVoiceCopyWith(InlineQueryResultVoice value,
          $Res Function(InlineQueryResultVoice) then) =
      _$InlineQueryResultVoiceCopyWithImpl<$Res, InlineQueryResultVoice>;
  @useResult
  $Res call(
      {InlineQueryResultType type,
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
class _$InlineQueryResultVoiceCopyWithImpl<$Res,
        $Val extends InlineQueryResultVoice>
    implements $InlineQueryResultVoiceCopyWith<$Res> {
  _$InlineQueryResultVoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voiceUrl: null == voiceUrl
          ? _value.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value.captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      voiceDuration: freezed == voiceDuration
          ? _value.voiceDuration
          : voiceDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultVoice
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
abstract class _$$InlineQueryResultVoiceImplCopyWith<$Res>
    implements $InlineQueryResultVoiceCopyWith<$Res> {
  factory _$$InlineQueryResultVoiceImplCopyWith(
          _$InlineQueryResultVoiceImpl value,
          $Res Function(_$InlineQueryResultVoiceImpl) then) =
      __$$InlineQueryResultVoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InlineQueryResultType type,
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
class __$$InlineQueryResultVoiceImplCopyWithImpl<$Res>
    extends _$InlineQueryResultVoiceCopyWithImpl<$Res,
        _$InlineQueryResultVoiceImpl>
    implements _$$InlineQueryResultVoiceImplCopyWith<$Res> {
  __$$InlineQueryResultVoiceImplCopyWithImpl(
      _$InlineQueryResultVoiceImpl _value,
      $Res Function(_$InlineQueryResultVoiceImpl) _then)
      : super(_value, _then);

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
    return _then(_$InlineQueryResultVoiceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      voiceUrl: null == voiceUrl
          ? _value.voiceUrl
          : voiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      voiceDuration: freezed == voiceDuration
          ? _value.voiceDuration
          : voiceDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultVoiceImpl implements _InlineQueryResultVoice {
  const _$InlineQueryResultVoiceImpl(
      {this.type = InlineQueryResultType.voice,
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

  factory _$InlineQueryResultVoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultVoiceImplFromJson(json);

  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  @JsonKey()
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

  @override
  String toString() {
    return 'InlineQueryResultVoice(type: $type, id: $id, voiceUrl: $voiceUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, voiceDuration: $voiceDuration, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultVoiceImplCopyWith<_$InlineQueryResultVoiceImpl>
      get copyWith => __$$InlineQueryResultVoiceImplCopyWithImpl<
          _$InlineQueryResultVoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultVoiceImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultVoice implements InlineQueryResultVoice {
  const factory _InlineQueryResultVoice(
      {final InlineQueryResultType type,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'voice_url') required final String voiceUrl,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'voice_duration') final int? voiceDuration,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent?
          inputMessageContent}) = _$InlineQueryResultVoiceImpl;

  factory _InlineQueryResultVoice.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultVoiceImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the voice recording
  @override
  @JsonKey(name: 'voice_url')
  String get voiceUrl;

  /// Recording title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  @override
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the voice message caption. See
  /// formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Recording duration in seconds
  @override
  @JsonKey(name: 'voice_duration')
  int? get voiceDuration;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice
  /// recording
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Create a copy of InlineQueryResultVoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultVoiceImplCopyWith<_$InlineQueryResultVoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
