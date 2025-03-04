// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultArticle _$InlineQueryResultArticleFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultArticle.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultArticle {
  /// Unique identifier for this result
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Title of the result
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Content of the message to be sent
  @InputMessageContentConverter()
  InputMessageContent get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. URL of the result
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth => throw _privateConstructorUsedError;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight => throw _privateConstructorUsedError;

  /// Type of the result, always [InlineQueryResultType.article]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultArticle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultArticleCopyWith<InlineQueryResultArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultArticleCopyWith<$Res> {
  factory $InlineQueryResultArticleCopyWith(InlineQueryResultArticle value,
          $Res Function(InlineQueryResultArticle) then) =
      _$InlineQueryResultArticleCopyWithImpl<$Res, InlineQueryResultArticle>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @InputMessageContentConverter() InputMessageContent inputMessageContent,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
      @JsonKey(name: 'type') InlineQueryResultType type});

  $InputMessageContentCopyWith<$Res> get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultArticleCopyWithImpl<$Res,
        $Val extends InlineQueryResultArticle>
    implements $InlineQueryResultArticleCopyWith<$Res> {
  _$InlineQueryResultArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      inputMessageContent: null == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res> get inputMessageContent {
    return $InputMessageContentCopyWith<$Res>(_value.inputMessageContent,
        (value) {
      return _then(_value.copyWith(inputMessageContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryResultArticleImplCopyWith<$Res>
    implements $InlineQueryResultArticleCopyWith<$Res> {
  factory _$$InlineQueryResultArticleImplCopyWith(
          _$InlineQueryResultArticleImpl value,
          $Res Function(_$InlineQueryResultArticleImpl) then) =
      __$$InlineQueryResultArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @InputMessageContentConverter() InputMessageContent inputMessageContent,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
      @JsonKey(name: 'type') InlineQueryResultType type});

  @override
  $InputMessageContentCopyWith<$Res> get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultArticleImplCopyWithImpl<$Res>
    extends _$InlineQueryResultArticleCopyWithImpl<$Res,
        _$InlineQueryResultArticleImpl>
    implements _$$InlineQueryResultArticleImplCopyWith<$Res> {
  __$$InlineQueryResultArticleImplCopyWithImpl(
      _$InlineQueryResultArticleImpl _value,
      $Res Function(_$InlineQueryResultArticleImpl) _then)
      : super(_value, _then);

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
    return _then(_$InlineQueryResultArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      inputMessageContent: null == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _value.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _value.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultArticleImpl implements _InlineQueryResultArticle {
  const _$InlineQueryResultArticleImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @InputMessageContentConverter() required this.inputMessageContent,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') this.thumbnailHeight,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.article});

  factory _$InlineQueryResultArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultArticleImplFromJson(json);

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

  @override
  String toString() {
    return 'InlineQueryResultArticle(id: $id, title: $title, inputMessageContent: $inputMessageContent, replyMarkup: $replyMarkup, url: $url, description: $description, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight, type: $type)';
  }

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultArticleImplCopyWith<_$InlineQueryResultArticleImpl>
      get copyWith => __$$InlineQueryResultArticleImplCopyWithImpl<
          _$InlineQueryResultArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultArticleImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultArticle implements InlineQueryResultArticle {
  const factory _InlineQueryResultArticle(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title') required final String title,
      @InputMessageContentConverter()
      required final InputMessageContent inputMessageContent,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') final int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') final int? thumbnailHeight,
      @JsonKey(name: 'type')
      final InlineQueryResultType type}) = _$InlineQueryResultArticleImpl;

  factory _InlineQueryResultArticle.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultArticleImpl.fromJson;

  /// Unique identifier for this result
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Title of the result
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Content of the message to be sent
  @override
  @InputMessageContentConverter()
  InputMessageContent get inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. URL of the result
  @override
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Url of the thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @override
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @override
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Type of the result, always [InlineQueryResultType.article]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultArticleImplCopyWith<_$InlineQueryResultArticleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
