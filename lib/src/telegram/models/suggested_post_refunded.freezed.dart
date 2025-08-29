// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_refunded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostRefunded {
  /// Optional. Message containing the suggested post. Note that the Message
  /// object in this field will not contain the reply_to_message field even
  /// if it itself is a reply.
  @JsonKey(name: 'suggested_post_message')
  Message? get suggestedPostMessage;

  /// Reason for the refund. Currently, one of "post_deleted" if the post was
  /// deleted within 24 hours of being posted or removed from scheduled messages
  /// without being posted, or "payment_refunded" if the payer refunded their payment.
  @JsonKey(name: 'reason')
  String get reason;

  /// Create a copy of SuggestedPostRefunded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostRefundedCopyWith<SuggestedPostRefunded> get copyWith =>
      _$SuggestedPostRefundedCopyWithImpl<SuggestedPostRefunded>(
          this as SuggestedPostRefunded, _$identity);

  /// Serializes this SuggestedPostRefunded to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostRefunded(suggestedPostMessage: $suggestedPostMessage, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostRefundedCopyWith<$Res> {
  factory $SuggestedPostRefundedCopyWith(SuggestedPostRefunded value,
          $Res Function(SuggestedPostRefunded) _then) =
      _$SuggestedPostRefundedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class _$SuggestedPostRefundedCopyWithImpl<$Res>
    implements $SuggestedPostRefundedCopyWith<$Res> {
  _$SuggestedPostRefundedCopyWithImpl(this._self, this._then);

  final SuggestedPostRefunded _self;
  final $Res Function(SuggestedPostRefunded) _then;

  /// Create a copy of SuggestedPostRefunded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? reason = null,
  }) {
    return _then(_self.copyWith(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostRefunded implements SuggestedPostRefunded {
  const _SuggestedPostRefunded(
      {@JsonKey(name: 'suggested_post_message') this.suggestedPostMessage,
      @JsonKey(name: 'reason') required this.reason});
  factory _SuggestedPostRefunded.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostRefundedFromJson(json);

  /// Optional. Message containing the suggested post. Note that the Message
  /// object in this field will not contain the reply_to_message field even
  /// if it itself is a reply.
  @override
  @JsonKey(name: 'suggested_post_message')
  final Message? suggestedPostMessage;

  /// Reason for the refund. Currently, one of "post_deleted" if the post was
  /// deleted within 24 hours of being posted or removed from scheduled messages
  /// without being posted, or "payment_refunded" if the payer refunded their payment.
  @override
  @JsonKey(name: 'reason')
  final String reason;

  /// Create a copy of SuggestedPostRefunded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostRefundedCopyWith<_SuggestedPostRefunded> get copyWith =>
      __$SuggestedPostRefundedCopyWithImpl<_SuggestedPostRefunded>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostRefundedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SuggestedPostRefunded(suggestedPostMessage: $suggestedPostMessage, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostRefundedCopyWith<$Res>
    implements $SuggestedPostRefundedCopyWith<$Res> {
  factory _$SuggestedPostRefundedCopyWith(_SuggestedPostRefunded value,
          $Res Function(_SuggestedPostRefunded) _then) =
      __$SuggestedPostRefundedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'reason') String reason});
}

/// @nodoc
class __$SuggestedPostRefundedCopyWithImpl<$Res>
    implements _$SuggestedPostRefundedCopyWith<$Res> {
  __$SuggestedPostRefundedCopyWithImpl(this._self, this._then);

  final _SuggestedPostRefunded _self;
  final $Res Function(_SuggestedPostRefunded) _then;

  /// Create a copy of SuggestedPostRefunded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? reason = null,
  }) {
    return _then(_SuggestedPostRefunded(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
