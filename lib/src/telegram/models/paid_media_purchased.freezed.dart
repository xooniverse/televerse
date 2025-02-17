// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media_purchased.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaidMediaPurchased _$PaidMediaPurchasedFromJson(Map<String, dynamic> json) {
  return _PaidMediaPurchased.fromJson(json);
}

/// @nodoc
mixin _$PaidMediaPurchased {
  /// The user who purchased the media.
  @JsonKey(name: 'from')
  User get from => throw _privateConstructorUsedError;

  /// A bot-specified payload related to the paid media.
  @JsonKey(name: 'paid_media_payload')
  String get paidMediaPayload => throw _privateConstructorUsedError;

  /// Serializes this PaidMediaPurchased to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaidMediaPurchasedCopyWith<PaidMediaPurchased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaidMediaPurchasedCopyWith<$Res> {
  factory $PaidMediaPurchasedCopyWith(
          PaidMediaPurchased value, $Res Function(PaidMediaPurchased) then) =
      _$PaidMediaPurchasedCopyWithImpl<$Res, PaidMediaPurchased>;
  @useResult
  $Res call(
      {@JsonKey(name: 'from') User from,
      @JsonKey(name: 'paid_media_payload') String paidMediaPayload});

  $UserCopyWith<$Res> get from;
}

/// @nodoc
class _$PaidMediaPurchasedCopyWithImpl<$Res, $Val extends PaidMediaPurchased>
    implements $PaidMediaPurchasedCopyWith<$Res> {
  _$PaidMediaPurchasedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? paidMediaPayload = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      paidMediaPayload: null == paidMediaPayload
          ? _value.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaidMediaPurchasedImplCopyWith<$Res>
    implements $PaidMediaPurchasedCopyWith<$Res> {
  factory _$$PaidMediaPurchasedImplCopyWith(_$PaidMediaPurchasedImpl value,
          $Res Function(_$PaidMediaPurchasedImpl) then) =
      __$$PaidMediaPurchasedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'from') User from,
      @JsonKey(name: 'paid_media_payload') String paidMediaPayload});

  @override
  $UserCopyWith<$Res> get from;
}

/// @nodoc
class __$$PaidMediaPurchasedImplCopyWithImpl<$Res>
    extends _$PaidMediaPurchasedCopyWithImpl<$Res, _$PaidMediaPurchasedImpl>
    implements _$$PaidMediaPurchasedImplCopyWith<$Res> {
  __$$PaidMediaPurchasedImplCopyWithImpl(_$PaidMediaPurchasedImpl _value,
      $Res Function(_$PaidMediaPurchasedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? paidMediaPayload = null,
  }) {
    return _then(_$PaidMediaPurchasedImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      paidMediaPayload: null == paidMediaPayload
          ? _value.paidMediaPayload
          : paidMediaPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidMediaPurchasedImpl implements _PaidMediaPurchased {
  const _$PaidMediaPurchasedImpl(
      {@JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'paid_media_payload') required this.paidMediaPayload});

  factory _$PaidMediaPurchasedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidMediaPurchasedImplFromJson(json);

  /// The user who purchased the media.
  @override
  @JsonKey(name: 'from')
  final User from;

  /// A bot-specified payload related to the paid media.
  @override
  @JsonKey(name: 'paid_media_payload')
  final String paidMediaPayload;

  @override
  String toString() {
    return 'PaidMediaPurchased(from: $from, paidMediaPayload: $paidMediaPayload)';
  }

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidMediaPurchasedImplCopyWith<_$PaidMediaPurchasedImpl> get copyWith =>
      __$$PaidMediaPurchasedImplCopyWithImpl<_$PaidMediaPurchasedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidMediaPurchasedImplToJson(
      this,
    );
  }
}

abstract class _PaidMediaPurchased implements PaidMediaPurchased {
  const factory _PaidMediaPurchased(
      {@JsonKey(name: 'from') required final User from,
      @JsonKey(name: 'paid_media_payload')
      required final String paidMediaPayload}) = _$PaidMediaPurchasedImpl;

  factory _PaidMediaPurchased.fromJson(Map<String, dynamic> json) =
      _$PaidMediaPurchasedImpl.fromJson;

  /// The user who purchased the media.
  @override
  @JsonKey(name: 'from')
  User get from;

  /// A bot-specified payload related to the paid media.
  @override
  @JsonKey(name: 'paid_media_payload')
  String get paidMediaPayload;

  /// Create a copy of PaidMediaPurchased
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidMediaPurchasedImplCopyWith<_$PaidMediaPurchasedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
