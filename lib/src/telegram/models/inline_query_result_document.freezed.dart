// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultDocument {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Type of the result, always [InlineQueryResultType.document]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Title for the result
  @JsonKey(name: 'title')
  String get title;

  /// A valid URL for the file
  @JsonKey(name: 'document_url')
  String get documentUrl;

  /// MIME type of the content of the file, either "application/pdf" or
  /// "application/zip"
  @JsonKey(name: 'mime_type')
  String get mimeType;

  /// Optional. Caption of the document to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the document caption. See
  /// formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. URL of the thumbnail (JPEG only) for the file
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Create a copy of InlineQueryResultDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultDocumentCopyWith<InlineQueryResultDocument> get copyWith =>
      _$InlineQueryResultDocumentCopyWithImpl<InlineQueryResultDocument>(
        this as InlineQueryResultDocument,
        _$identity,
      );

  /// Serializes this InlineQueryResultDocument to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultDocument(id: $id, type: $type, title: $title, documentUrl: $documentUrl, mimeType: $mimeType, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, description: $description, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultDocumentCopyWith<$Res> {
  factory $InlineQueryResultDocumentCopyWith(
    InlineQueryResultDocument value,
    $Res Function(InlineQueryResultDocument) _then,
  ) = _$InlineQueryResultDocumentCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'document_url') String documentUrl,
    @JsonKey(name: 'mime_type') String mimeType,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  });

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultDocumentCopyWithImpl<$Res>
    implements $InlineQueryResultDocumentCopyWith<$Res> {
  _$InlineQueryResultDocumentCopyWithImpl(this._self, this._then);

  final InlineQueryResultDocument _self;
  final $Res Function(InlineQueryResultDocument) _then;

  /// Create a copy of InlineQueryResultDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? documentUrl = null,
    Object? mimeType = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? description = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
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
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        documentUrl: null == documentUrl
            ? _self.documentUrl
            : documentUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        mimeType: null == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
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
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _self.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailWidth: freezed == thumbnailWidth
            ? _self.thumbnailWidth
            : thumbnailWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        thumbnailHeight: freezed == thumbnailHeight
            ? _self.thumbnailHeight
            : thumbnailHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultDocument
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

/// Adds pattern-matching-related methods to [InlineQueryResultDocument].
extension InlineQueryResultDocumentPatterns on InlineQueryResultDocument {
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
    TResult Function(_InlineQueryResultDocument value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultDocument() when $default != null:
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
    TResult Function(_InlineQueryResultDocument value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultDocument():
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
    TResult? Function(_InlineQueryResultDocument value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultDocument() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultDocument implements InlineQueryResultDocument {
  const _InlineQueryResultDocument({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.document,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'document_url') required this.documentUrl,
    @JsonKey(name: 'mime_type') required this.mimeType,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'parse_mode') this.parseMode,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    this.inputMessageContent,
    @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') this.thumbnailHeight,
  }) : _captionEntities = captionEntities;
  factory _InlineQueryResultDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultDocumentFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Type of the result, always [InlineQueryResultType.document]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  final String title;

  /// A valid URL for the file
  @override
  @JsonKey(name: 'document_url')
  final String documentUrl;

  /// MIME type of the content of the file, either "application/pdf" or
  /// "application/zip"
  @override
  @JsonKey(name: 'mime_type')
  final String mimeType;

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

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. URL of the thumbnail (JPEG only) for the file
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  @override
  @JsonKey(name: 'thumbnail_width')
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  @override
  @JsonKey(name: 'thumbnail_height')
  final int? thumbnailHeight;

  /// Create a copy of InlineQueryResultDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultDocumentCopyWith<_InlineQueryResultDocument>
  get copyWith =>
      __$InlineQueryResultDocumentCopyWithImpl<_InlineQueryResultDocument>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultDocumentToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultDocument(id: $id, type: $type, title: $title, documentUrl: $documentUrl, mimeType: $mimeType, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, description: $description, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultDocumentCopyWith<$Res>
    implements $InlineQueryResultDocumentCopyWith<$Res> {
  factory _$InlineQueryResultDocumentCopyWith(
    _InlineQueryResultDocument value,
    $Res Function(_InlineQueryResultDocument) _then,
  ) = __$InlineQueryResultDocumentCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'type') InlineQueryResultType type,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'document_url') String documentUrl,
    @JsonKey(name: 'mime_type') String mimeType,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  });

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultDocumentCopyWithImpl<$Res>
    implements _$InlineQueryResultDocumentCopyWith<$Res> {
  __$InlineQueryResultDocumentCopyWithImpl(this._self, this._then);

  final _InlineQueryResultDocument _self;
  final $Res Function(_InlineQueryResultDocument) _then;

  /// Create a copy of InlineQueryResultDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? documentUrl = null,
    Object? mimeType = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? description = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(
      _InlineQueryResultDocument(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        documentUrl: null == documentUrl
            ? _self.documentUrl
            : documentUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        mimeType: null == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
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
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        inputMessageContent: freezed == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _self.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailWidth: freezed == thumbnailWidth
            ? _self.thumbnailWidth
            : thumbnailWidth // ignore: cast_nullable_to_non_nullable
                  as int?,
        thumbnailHeight: freezed == thumbnailHeight
            ? _self.thumbnailHeight
            : thumbnailHeight // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of InlineQueryResultDocument
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
