// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostInfo {
  /// State of the suggested post. Currently, it can be one of "pending", "approved", "declined".
  @JsonKey(name: 'state')
  String get state;

  /// Optional. Proposed price of the post. If the field is omitted, then the post is unpaid.
  @JsonKey(name: 'price')
  SuggestedPostPrice? get price;

  /// Optional. Proposed send date of the post. If the field is omitted, then the post can be published at any time within 30 days at the sole discretion of the user or administrator who approves it.
  @JsonKey(name: 'send_date')
  int? get sendDate;

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostInfoCopyWith<SuggestedPostInfo> get copyWith =>
      _$SuggestedPostInfoCopyWithImpl<SuggestedPostInfo>(
          this as SuggestedPostInfo, _$identity);

  /// Serializes this SuggestedPostInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostInfo(state: $state, price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostInfoCopyWith<$Res> {
  factory $SuggestedPostInfoCopyWith(
          SuggestedPostInfo value, $Res Function(SuggestedPostInfo) _then) =
      _$SuggestedPostInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'price') SuggestedPostPrice? price,
      @JsonKey(name: 'send_date') int? sendDate});

  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class _$SuggestedPostInfoCopyWithImpl<$Res>
    implements $SuggestedPostInfoCopyWith<$Res> {
  _$SuggestedPostInfoCopyWithImpl(this._self, this._then);

  final SuggestedPostInfo _self;
  final $Res Function(SuggestedPostInfo) _then;

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? price = freezed,
    Object? sendDate = freezed,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as SuggestedPostPrice?,
      sendDate: freezed == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostInfo implements SuggestedPostInfo {
  const _SuggestedPostInfo(
      {@JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'send_date') this.sendDate});
  factory _SuggestedPostInfo.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostInfoFromJson(json);

  /// State of the suggested post. Currently, it can be one of "pending", "approved", "declined".
  @override
  @JsonKey(name: 'state')
  final String state;

  /// Optional. Proposed price of the post. If the field is omitted, then the post is unpaid.
  @override
  @JsonKey(name: 'price')
  final SuggestedPostPrice? price;

  /// Optional. Proposed send date of the post. If the field is omitted, then the post can be published at any time within 30 days at the sole discretion of the user or administrator who approves it.
  @override
  @JsonKey(name: 'send_date')
  final int? sendDate;

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostInfoCopyWith<_SuggestedPostInfo> get copyWith =>
      __$SuggestedPostInfoCopyWithImpl<_SuggestedPostInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SuggestedPostInfo(state: $state, price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostInfoCopyWith<$Res>
    implements $SuggestedPostInfoCopyWith<$Res> {
  factory _$SuggestedPostInfoCopyWith(
          _SuggestedPostInfo value, $Res Function(_SuggestedPostInfo) _then) =
      __$SuggestedPostInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'state') String state,
      @JsonKey(name: 'price') SuggestedPostPrice? price,
      @JsonKey(name: 'send_date') int? sendDate});

  @override
  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$SuggestedPostInfoCopyWithImpl<$Res>
    implements _$SuggestedPostInfoCopyWith<$Res> {
  __$SuggestedPostInfoCopyWithImpl(this._self, this._then);

  final _SuggestedPostInfo _self;
  final $Res Function(_SuggestedPostInfo) _then;

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? price = freezed,
    Object? sendDate = freezed,
  }) {
    return _then(_SuggestedPostInfo(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as SuggestedPostPrice?,
      sendDate: freezed == sendDate
          ? _self.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of SuggestedPostInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}
