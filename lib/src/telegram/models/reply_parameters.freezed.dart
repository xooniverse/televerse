// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyParameters _$ReplyParametersFromJson(Map<String, dynamic> json) {
  return _ReplyParameters.fromJson(json);
}

/// @nodoc
mixin _$ReplyParameters {
  /// Identifier of the message that will be replied to in the current chat,
  /// or in the chat chat_id if it is specified.
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;

  /// If the message to be replied to is from a different chat, unique
  /// identifier for the chat or username of the channel (in the format
  /// @channelusername).
  @IDConverter()
  @JsonKey(name: 'chat_id')
  ID? get chatId => throw _privateConstructorUsedError;

  /// Pass True if the message should be sent even if the specified message to
  /// be replied to is not found; can be used only for replies in the same
  /// chat and forum topic.
  @JsonKey(name: 'allow_sending_without_reply')
  bool? get allowSendingWithoutReply => throw _privateConstructorUsedError;

  /// Quoted part of the message to be replied to; 0-1024 characters after
  /// entities parsing. The quote must be an exact substring of the message to
  /// be replied to, including bold, italic, underline, strikethrough,
  /// spoiler, and custom_emoji entities. The message will fail to send if the
  /// quote isn't found in the original message.
  String? get quote => throw _privateConstructorUsedError;

  /// Mode for parsing entities in the quote. See formatting options for more
  /// details.
  @JsonKey(name: 'quote_parse_mode')
  String? get quoteParseMode => throw _privateConstructorUsedError;

  /// A JSON-serialized list of special entities that appear in the quote. It
  /// can be specified instead of quote_parse_mode.
  @JsonKey(name: 'quote_entities')
  List<MessageEntity>? get quoteEntities => throw _privateConstructorUsedError;

  /// Position of the quote in the original message in UTF-16 code units.
  @JsonKey(name: 'quote_position')
  int? get quotePosition => throw _privateConstructorUsedError;

  /// Serializes this ReplyParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyParametersCopyWith<ReplyParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyParametersCopyWith<$Res> {
  factory $ReplyParametersCopyWith(
          ReplyParameters value, $Res Function(ReplyParameters) then) =
      _$ReplyParametersCopyWithImpl<$Res, ReplyParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @IDConverter() @JsonKey(name: 'chat_id') ID? chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      bool? allowSendingWithoutReply,
      String? quote,
      @JsonKey(name: 'quote_parse_mode') String? quoteParseMode,
      @JsonKey(name: 'quote_entities') List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') int? quotePosition});
}

/// @nodoc
class _$ReplyParametersCopyWithImpl<$Res, $Val extends ReplyParameters>
    implements $ReplyParametersCopyWith<$Res> {
  _$ReplyParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? chatId = freezed,
    Object? allowSendingWithoutReply = freezed,
    Object? quote = freezed,
    Object? quoteParseMode = freezed,
    Object? quoteEntities = freezed,
    Object? quotePosition = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID?,
      allowSendingWithoutReply: freezed == allowSendingWithoutReply
          ? _value.allowSendingWithoutReply
          : allowSendingWithoutReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteParseMode: freezed == quoteParseMode
          ? _value.quoteParseMode
          : quoteParseMode // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteEntities: freezed == quoteEntities
          ? _value.quoteEntities
          : quoteEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      quotePosition: freezed == quotePosition
          ? _value.quotePosition
          : quotePosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyParametersImplCopyWith<$Res>
    implements $ReplyParametersCopyWith<$Res> {
  factory _$$ReplyParametersImplCopyWith(_$ReplyParametersImpl value,
          $Res Function(_$ReplyParametersImpl) then) =
      __$$ReplyParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @IDConverter() @JsonKey(name: 'chat_id') ID? chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      bool? allowSendingWithoutReply,
      String? quote,
      @JsonKey(name: 'quote_parse_mode') String? quoteParseMode,
      @JsonKey(name: 'quote_entities') List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') int? quotePosition});
}

/// @nodoc
class __$$ReplyParametersImplCopyWithImpl<$Res>
    extends _$ReplyParametersCopyWithImpl<$Res, _$ReplyParametersImpl>
    implements _$$ReplyParametersImplCopyWith<$Res> {
  __$$ReplyParametersImplCopyWithImpl(
      _$ReplyParametersImpl _value, $Res Function(_$ReplyParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? chatId = freezed,
    Object? allowSendingWithoutReply = freezed,
    Object? quote = freezed,
    Object? quoteParseMode = freezed,
    Object? quoteEntities = freezed,
    Object? quotePosition = freezed,
  }) {
    return _then(_$ReplyParametersImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID?,
      allowSendingWithoutReply: freezed == allowSendingWithoutReply
          ? _value.allowSendingWithoutReply
          : allowSendingWithoutReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      quote: freezed == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteParseMode: freezed == quoteParseMode
          ? _value.quoteParseMode
          : quoteParseMode // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteEntities: freezed == quoteEntities
          ? _value._quoteEntities
          : quoteEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      quotePosition: freezed == quotePosition
          ? _value.quotePosition
          : quotePosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyParametersImpl implements _ReplyParameters {
  const _$ReplyParametersImpl(
      {@JsonKey(name: 'message_id') required this.messageId,
      @IDConverter() @JsonKey(name: 'chat_id') this.chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      this.allowSendingWithoutReply,
      this.quote,
      @JsonKey(name: 'quote_parse_mode') this.quoteParseMode,
      @JsonKey(name: 'quote_entities') final List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') this.quotePosition})
      : _quoteEntities = quoteEntities;

  factory _$ReplyParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyParametersImplFromJson(json);

  /// Identifier of the message that will be replied to in the current chat,
  /// or in the chat chat_id if it is specified.
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// If the message to be replied to is from a different chat, unique
  /// identifier for the chat or username of the channel (in the format
  /// @channelusername).
  @override
  @IDConverter()
  @JsonKey(name: 'chat_id')
  final ID? chatId;

  /// Pass True if the message should be sent even if the specified message to
  /// be replied to is not found; can be used only for replies in the same
  /// chat and forum topic.
  @override
  @JsonKey(name: 'allow_sending_without_reply')
  final bool? allowSendingWithoutReply;

  /// Quoted part of the message to be replied to; 0-1024 characters after
  /// entities parsing. The quote must be an exact substring of the message to
  /// be replied to, including bold, italic, underline, strikethrough,
  /// spoiler, and custom_emoji entities. The message will fail to send if the
  /// quote isn't found in the original message.
  @override
  final String? quote;

  /// Mode for parsing entities in the quote. See formatting options for more
  /// details.
  @override
  @JsonKey(name: 'quote_parse_mode')
  final String? quoteParseMode;

  /// A JSON-serialized list of special entities that appear in the quote. It
  /// can be specified instead of quote_parse_mode.
  final List<MessageEntity>? _quoteEntities;

  /// A JSON-serialized list of special entities that appear in the quote. It
  /// can be specified instead of quote_parse_mode.
  @override
  @JsonKey(name: 'quote_entities')
  List<MessageEntity>? get quoteEntities {
    final value = _quoteEntities;
    if (value == null) return null;
    if (_quoteEntities is EqualUnmodifiableListView) return _quoteEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Position of the quote in the original message in UTF-16 code units.
  @override
  @JsonKey(name: 'quote_position')
  final int? quotePosition;

  @override
  String toString() {
    return 'ReplyParameters(messageId: $messageId, chatId: $chatId, allowSendingWithoutReply: $allowSendingWithoutReply, quote: $quote, quoteParseMode: $quoteParseMode, quoteEntities: $quoteEntities, quotePosition: $quotePosition)';
  }

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyParametersImplCopyWith<_$ReplyParametersImpl> get copyWith =>
      __$$ReplyParametersImplCopyWithImpl<_$ReplyParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyParametersImplToJson(
      this,
    );
  }
}

abstract class _ReplyParameters implements ReplyParameters {
  const factory _ReplyParameters(
      {@JsonKey(name: 'message_id') required final int messageId,
      @IDConverter() @JsonKey(name: 'chat_id') final ID? chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      final bool? allowSendingWithoutReply,
      final String? quote,
      @JsonKey(name: 'quote_parse_mode') final String? quoteParseMode,
      @JsonKey(name: 'quote_entities') final List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position')
      final int? quotePosition}) = _$ReplyParametersImpl;

  factory _ReplyParameters.fromJson(Map<String, dynamic> json) =
      _$ReplyParametersImpl.fromJson;

  /// Identifier of the message that will be replied to in the current chat,
  /// or in the chat chat_id if it is specified.
  @override
  @JsonKey(name: 'message_id')
  int get messageId;

  /// If the message to be replied to is from a different chat, unique
  /// identifier for the chat or username of the channel (in the format
  /// @channelusername).
  @override
  @IDConverter()
  @JsonKey(name: 'chat_id')
  ID? get chatId;

  /// Pass True if the message should be sent even if the specified message to
  /// be replied to is not found; can be used only for replies in the same
  /// chat and forum topic.
  @override
  @JsonKey(name: 'allow_sending_without_reply')
  bool? get allowSendingWithoutReply;

  /// Quoted part of the message to be replied to; 0-1024 characters after
  /// entities parsing. The quote must be an exact substring of the message to
  /// be replied to, including bold, italic, underline, strikethrough,
  /// spoiler, and custom_emoji entities. The message will fail to send if the
  /// quote isn't found in the original message.
  @override
  String? get quote;

  /// Mode for parsing entities in the quote. See formatting options for more
  /// details.
  @override
  @JsonKey(name: 'quote_parse_mode')
  String? get quoteParseMode;

  /// A JSON-serialized list of special entities that appear in the quote. It
  /// can be specified instead of quote_parse_mode.
  @override
  @JsonKey(name: 'quote_entities')
  List<MessageEntity>? get quoteEntities;

  /// Position of the quote in the original message in UTF-16 code units.
  @override
  @JsonKey(name: 'quote_position')
  int? get quotePosition;

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyParametersImplCopyWith<_$ReplyParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
