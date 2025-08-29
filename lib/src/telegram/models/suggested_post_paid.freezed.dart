// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_paid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostPaid {
  /// Optional. Message containing the suggested post. Note that the Message
  /// object in this field will not contain the reply_to_message field even
  /// if it itself is a reply.
  @JsonKey(name: 'suggested_post_message')
  Message? get suggestedPostMessage;

  /// Currency in which the payment was made. Currently, one of "XTR" for
  /// Telegram Stars or "TON" for toncoins
  @JsonKey(name: 'currency')
  String get currency;

  /// Optional. The amount of the currency that was received by the channel
  /// in nanotoncoins; for payments in toncoins only
  @JsonKey(name: 'amount')
  int? get amount;

  /// Optional. The amount of Telegram Stars that was received by the channel;
  /// for payments in Telegram Stars only
  @JsonKey(name: 'star_amount')
  StarAmount? get starAmount;

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostPaidCopyWith<SuggestedPostPaid> get copyWith =>
      _$SuggestedPostPaidCopyWithImpl<SuggestedPostPaid>(
          this as SuggestedPostPaid, _$identity);

  /// Serializes this SuggestedPostPaid to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostPaid(suggestedPostMessage: $suggestedPostMessage, currency: $currency, amount: $amount, starAmount: $starAmount)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostPaidCopyWith<$Res> {
  factory $SuggestedPostPaidCopyWith(
          SuggestedPostPaid value, $Res Function(SuggestedPostPaid) _then) =
      _$SuggestedPostPaidCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'star_amount') StarAmount? starAmount});

  $StarAmountCopyWith<$Res>? get starAmount;
}

/// @nodoc
class _$SuggestedPostPaidCopyWithImpl<$Res>
    implements $SuggestedPostPaidCopyWith<$Res> {
  _$SuggestedPostPaidCopyWithImpl(this._self, this._then);

  final SuggestedPostPaid _self;
  final $Res Function(SuggestedPostPaid) _then;

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? currency = null,
    Object? amount = freezed,
    Object? starAmount = freezed,
  }) {
    return _then(_self.copyWith(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      starAmount: freezed == starAmount
          ? _self.starAmount
          : starAmount // ignore: cast_nullable_to_non_nullable
              as StarAmount?,
    ));
  }

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StarAmountCopyWith<$Res>? get starAmount {
    if (_self.starAmount == null) {
      return null;
    }

    return $StarAmountCopyWith<$Res>(_self.starAmount!, (value) {
      return _then(_self.copyWith(starAmount: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostPaid implements SuggestedPostPaid {
  const _SuggestedPostPaid(
      {@JsonKey(name: 'suggested_post_message') this.suggestedPostMessage,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'star_amount') this.starAmount});
  factory _SuggestedPostPaid.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostPaidFromJson(json);

  /// Optional. Message containing the suggested post. Note that the Message
  /// object in this field will not contain the reply_to_message field even
  /// if it itself is a reply.
  @override
  @JsonKey(name: 'suggested_post_message')
  final Message? suggestedPostMessage;

  /// Currency in which the payment was made. Currently, one of "XTR" for
  /// Telegram Stars or "TON" for toncoins
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Optional. The amount of the currency that was received by the channel
  /// in nanotoncoins; for payments in toncoins only
  @override
  @JsonKey(name: 'amount')
  final int? amount;

  /// Optional. The amount of Telegram Stars that was received by the channel;
  /// for payments in Telegram Stars only
  @override
  @JsonKey(name: 'star_amount')
  final StarAmount? starAmount;

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostPaidCopyWith<_SuggestedPostPaid> get copyWith =>
      __$SuggestedPostPaidCopyWithImpl<_SuggestedPostPaid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostPaidToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SuggestedPostPaid(suggestedPostMessage: $suggestedPostMessage, currency: $currency, amount: $amount, starAmount: $starAmount)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostPaidCopyWith<$Res>
    implements $SuggestedPostPaidCopyWith<$Res> {
  factory _$SuggestedPostPaidCopyWith(
          _SuggestedPostPaid value, $Res Function(_SuggestedPostPaid) _then) =
      __$SuggestedPostPaidCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'star_amount') StarAmount? starAmount});

  @override
  $StarAmountCopyWith<$Res>? get starAmount;
}

/// @nodoc
class __$SuggestedPostPaidCopyWithImpl<$Res>
    implements _$SuggestedPostPaidCopyWith<$Res> {
  __$SuggestedPostPaidCopyWithImpl(this._self, this._then);

  final _SuggestedPostPaid _self;
  final $Res Function(_SuggestedPostPaid) _then;

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? currency = null,
    Object? amount = freezed,
    Object? starAmount = freezed,
  }) {
    return _then(_SuggestedPostPaid(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      starAmount: freezed == starAmount
          ? _self.starAmount
          : starAmount // ignore: cast_nullable_to_non_nullable
              as StarAmount?,
    ));
  }

  /// Create a copy of SuggestedPostPaid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StarAmountCopyWith<$Res>? get starAmount {
    if (_self.starAmount == null) {
      return null;
    }

    return $StarAmountCopyWith<$Res>(_self.starAmount!, (value) {
      return _then(_self.copyWith(starAmount: value));
    });
  }
}
