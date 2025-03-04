// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultCachedDocument _$InlineQueryResultCachedDocumentFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultCachedDocument.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultCachedDocument {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Type of the result, always [InlineQueryResultType.document]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// A valid file identifier for the file
  @JsonKey(name: 'document_file_id')
  String get documentFileId => throw _privateConstructorUsedError;

  /// Title for the result
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Optional. Caption of the document to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the document caption. See
  /// formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode => throw _privateConstructorUsedError;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities =>
      throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the file
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultCachedDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultCachedDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultCachedDocumentCopyWith<InlineQueryResultCachedDocument>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultCachedDocumentCopyWith<$Res> {
  factory $InlineQueryResultCachedDocumentCopyWith(
          InlineQueryResultCachedDocument value,
          $Res Function(InlineQueryResultCachedDocument) then) =
      _$InlineQueryResultCachedDocumentCopyWithImpl<$Res,
          InlineQueryResultCachedDocument>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'document_file_id') String documentFileId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedDocumentCopyWithImpl<$Res,
        $Val extends InlineQueryResultCachedDocument>
    implements $InlineQueryResultCachedDocumentCopyWith<$Res> {
  _$InlineQueryResultCachedDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultCachedDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? documentFileId = null,
    Object? title = null,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      documentFileId: null == documentFileId
          ? _value.documentFileId
          : documentFileId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of InlineQueryResultCachedDocument
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
abstract class _$$InlineQueryResultCachedDocumentImplCopyWith<$Res>
    implements $InlineQueryResultCachedDocumentCopyWith<$Res> {
  factory _$$InlineQueryResultCachedDocumentImplCopyWith(
          _$InlineQueryResultCachedDocumentImpl value,
          $Res Function(_$InlineQueryResultCachedDocumentImpl) then) =
      __$$InlineQueryResultCachedDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'document_file_id') String documentFileId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultCachedDocumentImplCopyWithImpl<$Res>
    extends _$InlineQueryResultCachedDocumentCopyWithImpl<$Res,
        _$InlineQueryResultCachedDocumentImpl>
    implements _$$InlineQueryResultCachedDocumentImplCopyWith<$Res> {
  __$$InlineQueryResultCachedDocumentImplCopyWithImpl(
      _$InlineQueryResultCachedDocumentImpl _value,
      $Res Function(_$InlineQueryResultCachedDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultCachedDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? documentFileId = null,
    Object? title = null,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
  }) {
    return _then(_$InlineQueryResultCachedDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      documentFileId: null == documentFileId
          ? _value.documentFileId
          : documentFileId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$InlineQueryResultCachedDocumentImpl
    implements _InlineQueryResultCachedDocument {
  const _$InlineQueryResultCachedDocumentImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.document,
      @JsonKey(name: 'document_file_id') required this.documentFileId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent})
      : _captionEntities = captionEntities;

  factory _$InlineQueryResultCachedDocumentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InlineQueryResultCachedDocumentImplFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Type of the result, always [InlineQueryResultType.document]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// A valid file identifier for the file
  @override
  @JsonKey(name: 'document_file_id')
  final String documentFileId;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Caption of the document to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  @override
  String toString() {
    return 'InlineQueryResultCachedDocument(id: $id, type: $type, documentFileId: $documentFileId, title: $title, description: $description, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent)';
  }

  /// Create a copy of InlineQueryResultCachedDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultCachedDocumentImplCopyWith<
          _$InlineQueryResultCachedDocumentImpl>
      get copyWith => __$$InlineQueryResultCachedDocumentImplCopyWithImpl<
          _$InlineQueryResultCachedDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultCachedDocumentImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultCachedDocument
    implements InlineQueryResultCachedDocument {
  const factory _InlineQueryResultCachedDocument(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'type') final InlineQueryResultType type,
      @JsonKey(name: 'document_file_id') required final String documentFileId,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent?
          inputMessageContent}) = _$InlineQueryResultCachedDocumentImpl;

  factory _InlineQueryResultCachedDocument.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultCachedDocumentImpl.fromJson;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Type of the result, always [InlineQueryResultType.document]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// A valid file identifier for the file
  @override
  @JsonKey(name: 'document_file_id')
  String get documentFileId;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Caption of the document to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the document caption. See
  /// formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Create a copy of InlineQueryResultCachedDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultCachedDocumentImplCopyWith<
          _$InlineQueryResultCachedDocumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
