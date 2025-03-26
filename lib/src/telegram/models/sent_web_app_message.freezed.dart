// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_web_app_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SentWebAppMessage {
  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// Create a copy of SentWebAppMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SentWebAppMessageCopyWith<SentWebAppMessage> get copyWith =>
      _$SentWebAppMessageCopyWithImpl<SentWebAppMessage>(
          this as SentWebAppMessage, _$identity);

  /// Serializes this SentWebAppMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SentWebAppMessage(inlineMessageId: $inlineMessageId)';
  }
}

/// @nodoc
abstract mixin class $SentWebAppMessageCopyWith<$Res> {
  factory $SentWebAppMessageCopyWith(
          SentWebAppMessage value, $Res Function(SentWebAppMessage) _then) =
      _$SentWebAppMessageCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'inline_message_id') String? inlineMessageId});
}

/// @nodoc
class _$SentWebAppMessageCopyWithImpl<$Res>
    implements $SentWebAppMessageCopyWith<$Res> {
  _$SentWebAppMessageCopyWithImpl(this._self, this._then);

  final SentWebAppMessage _self;
  final $Res Function(SentWebAppMessage) _then;

  /// Create a copy of SentWebAppMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineMessageId = freezed,
  }) {
    return _then(_self.copyWith(
      inlineMessageId: freezed == inlineMessageId
          ? _self.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SentWebAppMessage implements SentWebAppMessage {
  const _SentWebAppMessage(
      {@JsonKey(name: 'inline_message_id') this.inlineMessageId});
  factory _SentWebAppMessage.fromJson(Map<String, dynamic> json) =>
      _$SentWebAppMessageFromJson(json);

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message.
  @override
  @JsonKey(name: 'inline_message_id')
  final String? inlineMessageId;

  /// Create a copy of SentWebAppMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SentWebAppMessageCopyWith<_SentWebAppMessage> get copyWith =>
      __$SentWebAppMessageCopyWithImpl<_SentWebAppMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SentWebAppMessageToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SentWebAppMessage(inlineMessageId: $inlineMessageId)';
  }
}

/// @nodoc
abstract mixin class _$SentWebAppMessageCopyWith<$Res>
    implements $SentWebAppMessageCopyWith<$Res> {
  factory _$SentWebAppMessageCopyWith(
          _SentWebAppMessage value, $Res Function(_SentWebAppMessage) _then) =
      __$SentWebAppMessageCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'inline_message_id') String? inlineMessageId});
}

/// @nodoc
class __$SentWebAppMessageCopyWithImpl<$Res>
    implements _$SentWebAppMessageCopyWith<$Res> {
  __$SentWebAppMessageCopyWithImpl(this._self, this._then);

  final _SentWebAppMessage _self;
  final $Res Function(_SentWebAppMessage) _then;

  /// Create a copy of SentWebAppMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inlineMessageId = freezed,
  }) {
    return _then(_SentWebAppMessage(
      inlineMessageId: freezed == inlineMessageId
          ? _self.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
