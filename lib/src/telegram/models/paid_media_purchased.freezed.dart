// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media_purchased.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaidMediaPurchased {
  /// The user who purchased the media.
  @JsonKey(name: 'from')
  User get from;

  /// A bot-specified payload related to the paid media.
  @JsonKey(name: 'paid_media_payload')
  String get paidMediaPayload;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaPurchasedCopyWith<PaidMediaPurchased> get copyWith =>
      _$PaidMediaPurchasedCopyWithImpl<PaidMediaPurchased>(
          this as PaidMediaPurchased, _$identity);

  /// Serializes this PaidMediaPurchased to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PaidMediaPurchased(from: $from, paidMediaPayload: $paidMediaPayload)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaPurchasedCopyWith<$Res> {
  factory $PaidMediaPurchasedCopyWith(
          PaidMediaPurchased value, $Res Function(PaidMediaPurchased) _then) =
      _$PaidMediaPurchasedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') User from,
      @JsonKey(name: 'paid_media_payload') String paidMediaPayload});

  $UserCopyWith<$Res> get from;
}

/// @nodoc
class _$PaidMediaPurchasedCopyWithImpl<$Res>
    implements $PaidMediaPurchasedCopyWith<$Res> {
  _$PaidMediaPurchasedCopyWithImpl(this._self, this._then);

  final PaidMediaPurchased _self;
  final $Res Function(PaidMediaPurchased) _then;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? paidMediaPayload = null,
  }) {
    return _then(_self.copyWith(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      paidMediaPayload: null == paidMediaPayload
          ? _self.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PaidMediaPurchased implements PaidMediaPurchased {
  const _PaidMediaPurchased(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'paid_media_payload') required this.paidMediaPayload});
  factory _PaidMediaPurchased.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaPurchasedFromJson(json);

  /// The user who purchased the media.
  @override
  @JsonKey(name: 'from')
  final User from;

  /// A bot-specified payload related to the paid media.
  @override
  @JsonKey(name: 'paid_media_payload')
  final String paidMediaPayload;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaidMediaPurchasedCopyWith<_PaidMediaPurchased> get copyWith =>
      __$PaidMediaPurchasedCopyWithImpl<_PaidMediaPurchased>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMediaPurchasedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PaidMediaPurchased(from: $from, paidMediaPayload: $paidMediaPayload)';
  }
}

/// @nodoc
abstract mixin class _$PaidMediaPurchasedCopyWith<$Res>
    implements $PaidMediaPurchasedCopyWith<$Res> {
  factory _$PaidMediaPurchasedCopyWith(
          _PaidMediaPurchased value, $Res Function(_PaidMediaPurchased) _then) =
      __$PaidMediaPurchasedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') User from,
      @JsonKey(name: 'paid_media_payload') String paidMediaPayload});

  @override
  $UserCopyWith<$Res> get from;
}

/// @nodoc
class __$PaidMediaPurchasedCopyWithImpl<$Res>
    implements _$PaidMediaPurchasedCopyWith<$Res> {
  __$PaidMediaPurchasedCopyWithImpl(this._self, this._then);

  final _PaidMediaPurchased _self;
  final $Res Function(_PaidMediaPurchased) _then;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
    Object? paidMediaPayload = null,
  }) {
    return _then(_PaidMediaPurchased(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      paidMediaPayload: null == paidMediaPayload
          ? _self.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}
