// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBoost _$ChatBoostFromJson(Map<String, dynamic> json) {
  return _ChatBoost.fromJson(json);
}

/// @nodoc
mixin _$ChatBoost {
  /// Unique identifier of the boost
  @JsonKey(name: 'boost_id')
  String get boostId => throw _privateConstructorUsedError;

  /// Point in time (Unix timestamp) when the chat was boosted
  @JsonKey(name: 'add_date')
  int get addDate => throw _privateConstructorUsedError;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  @JsonKey(name: 'expiration_date')
  int get expirationDate => throw _privateConstructorUsedError;

  /// Source of the added boost
  @JsonKey(name: 'source')
  ChatBoostSource get source => throw _privateConstructorUsedError;

  /// Serializes this ChatBoost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBoostCopyWith<ChatBoost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBoostCopyWith<$Res> {
  factory $ChatBoostCopyWith(ChatBoost value, $Res Function(ChatBoost) then) =
      _$ChatBoostCopyWithImpl<$Res, ChatBoost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'boost_id') String boostId,
      @JsonKey(name: 'add_date') int addDate,
      @JsonKey(name: 'expiration_date') int expirationDate,
      @JsonKey(name: 'source') ChatBoostSource source});

  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ChatBoostCopyWithImpl<$Res, $Val extends ChatBoost>
    implements $ChatBoostCopyWith<$Res> {
  _$ChatBoostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostId = null,
    Object? addDate = null,
    Object? expirationDate = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      boostId: null == boostId
          ? _value.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      addDate: null == addDate
          ? _value.addDate
          : addDate // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ) as $Val);
  }

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBoostImplCopyWith<$Res>
    implements $ChatBoostCopyWith<$Res> {
  factory _$$ChatBoostImplCopyWith(
          _$ChatBoostImpl value, $Res Function(_$ChatBoostImpl) then) =
      __$$ChatBoostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'boost_id') String boostId,
      @JsonKey(name: 'add_date') int addDate,
      @JsonKey(name: 'expiration_date') int expirationDate,
      @JsonKey(name: 'source') ChatBoostSource source});

  @override
  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$ChatBoostImplCopyWithImpl<$Res>
    extends _$ChatBoostCopyWithImpl<$Res, _$ChatBoostImpl>
    implements _$$ChatBoostImplCopyWith<$Res> {
  __$$ChatBoostImplCopyWithImpl(
      _$ChatBoostImpl _value, $Res Function(_$ChatBoostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostId = null,
    Object? addDate = null,
    Object? expirationDate = null,
    Object? source = null,
  }) {
    return _then(_$ChatBoostImpl(
      boostId: null == boostId
          ? _value.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      addDate: null == addDate
          ? _value.addDate
          : addDate // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostImpl implements _ChatBoost {
  const _$ChatBoostImpl(
      {@JsonKey(name: 'boost_id') required this.boostId,
      @JsonKey(name: 'add_date') required this.addDate,
      @JsonKey(name: 'expiration_date') required this.expirationDate,
      @JsonKey(name: 'source') required this.source});

  factory _$ChatBoostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostImplFromJson(json);

  /// Unique identifier of the boost
  @override
  @JsonKey(name: 'boost_id')
  final String boostId;

  /// Point in time (Unix timestamp) when the chat was boosted
  @override
  @JsonKey(name: 'add_date')
  final int addDate;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  @override
  @JsonKey(name: 'expiration_date')
  final int expirationDate;

  /// Source of the added boost
  @override
  @JsonKey(name: 'source')
  final ChatBoostSource source;

  @override
  String toString() {
    return 'ChatBoost(boostId: $boostId, addDate: $addDate, expirationDate: $expirationDate, source: $source)';
  }

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostImplCopyWith<_$ChatBoostImpl> get copyWith =>
      __$$ChatBoostImplCopyWithImpl<_$ChatBoostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostImplToJson(
      this,
    );
  }
}

abstract class _ChatBoost implements ChatBoost {
  const factory _ChatBoost(
          {@JsonKey(name: 'boost_id') required final String boostId,
          @JsonKey(name: 'add_date') required final int addDate,
          @JsonKey(name: 'expiration_date') required final int expirationDate,
          @JsonKey(name: 'source') required final ChatBoostSource source}) =
      _$ChatBoostImpl;

  factory _ChatBoost.fromJson(Map<String, dynamic> json) =
      _$ChatBoostImpl.fromJson;

  /// Unique identifier of the boost
  @override
  @JsonKey(name: 'boost_id')
  String get boostId;

  /// Point in time (Unix timestamp) when the chat was boosted
  @override
  @JsonKey(name: 'add_date')
  int get addDate;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  @override
  @JsonKey(name: 'expiration_date')
  int get expirationDate;

  /// Source of the added boost
  @override
  @JsonKey(name: 'source')
  ChatBoostSource get source;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostImplCopyWith<_$ChatBoostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
