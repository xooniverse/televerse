// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReplyParameters {
  /// Identifier of the message that will be replied to in the current chat,
  /// or in the chat chat_id if it is specified.
  @JsonKey(name: 'message_id')
  int get messageId;

  /// If the message to be replied to is from a different chat, unique
  /// identifier for the chat or username of the channel (in the format
  /// @channelusername).
  @IDConverter()
  @JsonKey(name: 'chat_id')
  ID? get chatId;

  /// Pass True if the message should be sent even if the specified message to
  /// be replied to is not found; can be used only for replies in the same
  /// chat and forum topic.
  @JsonKey(name: 'allow_sending_without_reply')
  bool? get allowSendingWithoutReply;

  /// Quoted part of the message to be replied to; 0-1024 characters after
  /// entities parsing. The quote must be an exact substring of the message to
  /// be replied to, including bold, italic, underline, strikethrough,
  /// spoiler, and custom_emoji entities. The message will fail to send if the
  /// quote isn't found in the original message.
  @JsonKey(name: 'quote')
  String? get quote;

  /// Mode for parsing entities in the quote. See formatting options for more
  /// details.
  @JsonKey(name: 'quote_parse_mode')
  String? get quoteParseMode;

  /// A JSON-serialized list of special entities that appear in the quote. It
  /// can be specified instead of quote_parse_mode.
  @JsonKey(name: 'quote_entities')
  List<MessageEntity>? get quoteEntities;

  /// Position of the quote in the original message in UTF-16 code units.
  @JsonKey(name: 'quote_position')
  int? get quotePosition;

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReplyParametersCopyWith<ReplyParameters> get copyWith =>
      _$ReplyParametersCopyWithImpl<ReplyParameters>(
          this as ReplyParameters, _$identity);

  /// Serializes this ReplyParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ReplyParameters(messageId: $messageId, chatId: $chatId, allowSendingWithoutReply: $allowSendingWithoutReply, quote: $quote, quoteParseMode: $quoteParseMode, quoteEntities: $quoteEntities, quotePosition: $quotePosition)';
  }
}

/// @nodoc
abstract mixin class $ReplyParametersCopyWith<$Res> {
  factory $ReplyParametersCopyWith(
          ReplyParameters value, $Res Function(ReplyParameters) _then) =
      _$ReplyParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @IDConverter() @JsonKey(name: 'chat_id') ID? chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      bool? allowSendingWithoutReply,
      @JsonKey(name: 'quote') String? quote,
      @JsonKey(name: 'quote_parse_mode') String? quoteParseMode,
      @JsonKey(name: 'quote_entities') List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') int? quotePosition});
}

/// @nodoc
class _$ReplyParametersCopyWithImpl<$Res>
    implements $ReplyParametersCopyWith<$Res> {
  _$ReplyParametersCopyWithImpl(this._self, this._then);

  final ReplyParameters _self;
  final $Res Function(ReplyParameters) _then;

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
    return _then(_self.copyWith(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID?,
      allowSendingWithoutReply: freezed == allowSendingWithoutReply
          ? _self.allowSendingWithoutReply
          : allowSendingWithoutReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      quote: freezed == quote
          ? _self.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteParseMode: freezed == quoteParseMode
          ? _self.quoteParseMode
          : quoteParseMode // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteEntities: freezed == quoteEntities
          ? _self.quoteEntities
          : quoteEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      quotePosition: freezed == quotePosition
          ? _self.quotePosition
          : quotePosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReplyParameters implements ReplyParameters {
  const _ReplyParameters(
      {@JsonKey(name: 'message_id') required this.messageId,
      @IDConverter() @JsonKey(name: 'chat_id') this.chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      this.allowSendingWithoutReply,
      @JsonKey(name: 'quote') this.quote,
      @JsonKey(name: 'quote_parse_mode') this.quoteParseMode,
      @JsonKey(name: 'quote_entities') final List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') this.quotePosition})
      : _quoteEntities = quoteEntities;
  factory _ReplyParameters.fromJson(Map<String, dynamic> json) =>
      _$ReplyParametersFromJson(json);

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
  @JsonKey(name: 'quote')
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

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReplyParametersCopyWith<_ReplyParameters> get copyWith =>
      __$ReplyParametersCopyWithImpl<_ReplyParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReplyParametersToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ReplyParameters(messageId: $messageId, chatId: $chatId, allowSendingWithoutReply: $allowSendingWithoutReply, quote: $quote, quoteParseMode: $quoteParseMode, quoteEntities: $quoteEntities, quotePosition: $quotePosition)';
  }
}

/// @nodoc
abstract mixin class _$ReplyParametersCopyWith<$Res>
    implements $ReplyParametersCopyWith<$Res> {
  factory _$ReplyParametersCopyWith(
          _ReplyParameters value, $Res Function(_ReplyParameters) _then) =
      __$ReplyParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @IDConverter() @JsonKey(name: 'chat_id') ID? chatId,
      @JsonKey(name: 'allow_sending_without_reply')
      bool? allowSendingWithoutReply,
      @JsonKey(name: 'quote') String? quote,
      @JsonKey(name: 'quote_parse_mode') String? quoteParseMode,
      @JsonKey(name: 'quote_entities') List<MessageEntity>? quoteEntities,
      @JsonKey(name: 'quote_position') int? quotePosition});
}

/// @nodoc
class __$ReplyParametersCopyWithImpl<$Res>
    implements _$ReplyParametersCopyWith<$Res> {
  __$ReplyParametersCopyWithImpl(this._self, this._then);

  final _ReplyParameters _self;
  final $Res Function(_ReplyParameters) _then;

  /// Create a copy of ReplyParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageId = null,
    Object? chatId = freezed,
    Object? allowSendingWithoutReply = freezed,
    Object? quote = freezed,
    Object? quoteParseMode = freezed,
    Object? quoteEntities = freezed,
    Object? quotePosition = freezed,
  }) {
    return _then(_ReplyParameters(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ID?,
      allowSendingWithoutReply: freezed == allowSendingWithoutReply
          ? _self.allowSendingWithoutReply
          : allowSendingWithoutReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      quote: freezed == quote
          ? _self.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteParseMode: freezed == quoteParseMode
          ? _self.quoteParseMode
          : quoteParseMode // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteEntities: freezed == quoteEntities
          ? _self._quoteEntities
          : quoteEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      quotePosition: freezed == quotePosition
          ? _self.quotePosition
          : quotePosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}
