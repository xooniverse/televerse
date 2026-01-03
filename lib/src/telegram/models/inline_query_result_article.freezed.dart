// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultArticle {
  /// Unique identifier for this result
  @JsonKey(name: 'id')
  String get id;

  /// Title of the result
  @JsonKey(name: 'title')
  String get title;

  /// Content of the message to be sent
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent get inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. URL of the result
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Type of the result, always [InlineQueryResultType.article]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultArticleCopyWith<InlineQueryResultArticle> get copyWith =>
      _$InlineQueryResultArticleCopyWithImpl<InlineQueryResultArticle>(
        this as InlineQueryResultArticle,
        _$identity,
      );

  /// Serializes this InlineQueryResultArticle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultArticle(id: $id, title: $title, inputMessageContent: $inputMessageContent, replyMarkup: $replyMarkup, url: $url, description: $description, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, type: $type)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultArticleCopyWith<$Res> {
  factory $InlineQueryResultArticleCopyWith(
    InlineQueryResultArticle value,
    $Res Function(InlineQueryResultArticle) _then,
  ) = _$InlineQueryResultArticleCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent inputMessageContent,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  $InputMessageContentCopyWith<$Res> get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultArticleCopyWithImpl<$Res>
    implements $InlineQueryResultArticleCopyWith<$Res> {
  _$InlineQueryResultArticleCopyWithImpl(this._self, this._then);

  final InlineQueryResultArticle _self;
  final $Res Function(InlineQueryResultArticle) _then;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? inputMessageContent = null,
    Object? replyMarkup = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
    Object? type = null,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        inputMessageContent: null == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
      ),
    );
  }

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res> get inputMessageContent {
    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InlineQueryResultArticle].
extension InlineQueryResultArticlePatterns on InlineQueryResultArticle {
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
    TResult Function(_InlineQueryResultArticle value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultArticle() when $default != null:
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
    TResult Function(_InlineQueryResultArticle value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultArticle():
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
    TResult? Function(_InlineQueryResultArticle value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQueryResultArticle() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultArticle implements InlineQueryResultArticle {
  const _InlineQueryResultArticle({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    required this.inputMessageContent,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'url') this.url,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') this.thumbnailHeight,
    @JsonKey(name: 'type') this.type = InlineQueryResultType.article,
  });
  factory _InlineQueryResultArticle.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultArticleFromJson(json);

  /// Unique identifier for this result
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Title of the result
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Content of the message to be sent
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. URL of the result
  @override
  @JsonKey(name: 'url')
  final String? url;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Url of the thumbnail for the result
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

  /// Type of the result, always [InlineQueryResultType.article]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultArticleCopyWith<_InlineQueryResultArticle> get copyWith =>
      __$InlineQueryResultArticleCopyWithImpl<_InlineQueryResultArticle>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultArticleToJson(this);
  }

  @override
  String toString() {
    return 'InlineQueryResultArticle(id: $id, title: $title, inputMessageContent: $inputMessageContent, replyMarkup: $replyMarkup, url: $url, description: $description, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultArticleCopyWith<$Res>
    implements $InlineQueryResultArticleCopyWith<$Res> {
  factory _$InlineQueryResultArticleCopyWith(
    _InlineQueryResultArticle value,
    $Res Function(_InlineQueryResultArticle) _then,
  ) = __$InlineQueryResultArticleCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent inputMessageContent,
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
    @JsonKey(name: 'type') InlineQueryResultType type,
  });

  @override
  $InputMessageContentCopyWith<$Res> get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultArticleCopyWithImpl<$Res>
    implements _$InlineQueryResultArticleCopyWith<$Res> {
  __$InlineQueryResultArticleCopyWithImpl(this._self, this._then);

  final _InlineQueryResultArticle _self;
  final $Res Function(_InlineQueryResultArticle) _then;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? inputMessageContent = null,
    Object? replyMarkup = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
    Object? type = null,
  }) {
    return _then(
      _InlineQueryResultArticle(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        inputMessageContent: null == inputMessageContent
            ? _self.inputMessageContent
            : inputMessageContent // ignore: cast_nullable_to_non_nullable
                  as InputMessageContent,
        replyMarkup: freezed == replyMarkup
            ? _self.replyMarkup
            : replyMarkup // ignore: cast_nullable_to_non_nullable
                  as InlineKeyboardMarkup?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InlineQueryResultType,
      ),
    );
  }

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res> get inputMessageContent {
    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent, (
      value,
    ) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
