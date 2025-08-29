// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_approval_failed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostApprovalFailed {
  /// Optional. Message containing the suggested post whose approval has failed. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @JsonKey(name: 'suggested_post_message')
  Message? get suggestedPostMessage;

  /// Expected price of the post
  @JsonKey(name: 'price')
  SuggestedPostPrice get price;

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostApprovalFailedCopyWith<SuggestedPostApprovalFailed>
      get copyWith => _$SuggestedPostApprovalFailedCopyWithImpl<
              SuggestedPostApprovalFailed>(
          this as SuggestedPostApprovalFailed, _$identity);

  /// Serializes this SuggestedPostApprovalFailed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostApprovalFailed(suggestedPostMessage: $suggestedPostMessage, price: $price)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostApprovalFailedCopyWith<$Res> {
  factory $SuggestedPostApprovalFailedCopyWith(
          SuggestedPostApprovalFailed value,
          $Res Function(SuggestedPostApprovalFailed) _then) =
      _$SuggestedPostApprovalFailedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'price') SuggestedPostPrice price});

  $SuggestedPostPriceCopyWith<$Res> get price;
}

/// @nodoc
class _$SuggestedPostApprovalFailedCopyWithImpl<$Res>
    implements $SuggestedPostApprovalFailedCopyWith<$Res> {
  _$SuggestedPostApprovalFailedCopyWithImpl(this._self, this._then);

  final SuggestedPostApprovalFailed _self;
  final $Res Function(SuggestedPostApprovalFailed) _then;

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? price = null,
  }) {
    return _then(_self.copyWith(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as SuggestedPostPrice,
    ));
  }

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res> get price {
    return $SuggestedPostPriceCopyWith<$Res>(_self.price, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostApprovalFailed implements SuggestedPostApprovalFailed {
  const _SuggestedPostApprovalFailed(
      {@JsonKey(name: 'suggested_post_message') this.suggestedPostMessage,
      @JsonKey(name: 'price') required this.price});
  factory _SuggestedPostApprovalFailed.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostApprovalFailedFromJson(json);

  /// Optional. Message containing the suggested post whose approval has failed. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @override
  @JsonKey(name: 'suggested_post_message')
  final Message? suggestedPostMessage;

  /// Expected price of the post
  @override
  @JsonKey(name: 'price')
  final SuggestedPostPrice price;

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostApprovalFailedCopyWith<_SuggestedPostApprovalFailed>
      get copyWith => __$SuggestedPostApprovalFailedCopyWithImpl<
          _SuggestedPostApprovalFailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostApprovalFailedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SuggestedPostApprovalFailed(suggestedPostMessage: $suggestedPostMessage, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostApprovalFailedCopyWith<$Res>
    implements $SuggestedPostApprovalFailedCopyWith<$Res> {
  factory _$SuggestedPostApprovalFailedCopyWith(
          _SuggestedPostApprovalFailed value,
          $Res Function(_SuggestedPostApprovalFailed) _then) =
      __$SuggestedPostApprovalFailedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
      @JsonKey(name: 'price') SuggestedPostPrice price});

  @override
  $SuggestedPostPriceCopyWith<$Res> get price;
}

/// @nodoc
class __$SuggestedPostApprovalFailedCopyWithImpl<$Res>
    implements _$SuggestedPostApprovalFailedCopyWith<$Res> {
  __$SuggestedPostApprovalFailedCopyWithImpl(this._self, this._then);

  final _SuggestedPostApprovalFailed _self;
  final $Res Function(_SuggestedPostApprovalFailed) _then;

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? price = null,
  }) {
    return _then(_SuggestedPostApprovalFailed(
      suggestedPostMessage: freezed == suggestedPostMessage
          ? _self.suggestedPostMessage
          : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as SuggestedPostPrice,
    ));
  }

  /// Create a copy of SuggestedPostApprovalFailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res> get price {
    return $SuggestedPostPriceCopyWith<$Res>(_self.price, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}
