// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_withdrawal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RevenueWithdrawalState _$RevenueWithdrawalStateFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'pending':
      return RevenueWithdrawalStatePending.fromJson(json);
    case 'succeeded':
      return RevenueWithdrawalStateSucceeded.fromJson(json);
    case 'failed':
      return RevenueWithdrawalStateFailed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RevenueWithdrawalState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RevenueWithdrawalState {
  /// Type of the revenue withdrawal state, must be "pending"
  RevenueWithdrawalStateType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RevenueWithdrawalStatePending value) pending,
    required TResult Function(RevenueWithdrawalStateSucceeded value) succeeded,
    required TResult Function(RevenueWithdrawalStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RevenueWithdrawalStatePending value)? pending,
    TResult? Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult? Function(RevenueWithdrawalStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RevenueWithdrawalStatePending value)? pending,
    TResult Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult Function(RevenueWithdrawalStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RevenueWithdrawalState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueWithdrawalStateCopyWith<RevenueWithdrawalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueWithdrawalStateCopyWith<$Res> {
  factory $RevenueWithdrawalStateCopyWith(RevenueWithdrawalState value,
          $Res Function(RevenueWithdrawalState) then) =
      _$RevenueWithdrawalStateCopyWithImpl<$Res, RevenueWithdrawalState>;
  @useResult
  $Res call({RevenueWithdrawalStateType type});
}

/// @nodoc
class _$RevenueWithdrawalStateCopyWithImpl<$Res,
        $Val extends RevenueWithdrawalState>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  _$RevenueWithdrawalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevenueWithdrawalStatePendingImplCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory _$$RevenueWithdrawalStatePendingImplCopyWith(
          _$RevenueWithdrawalStatePendingImpl value,
          $Res Function(_$RevenueWithdrawalStatePendingImpl) then) =
      __$$RevenueWithdrawalStatePendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RevenueWithdrawalStateType type});
}

/// @nodoc
class __$$RevenueWithdrawalStatePendingImplCopyWithImpl<$Res>
    extends _$RevenueWithdrawalStateCopyWithImpl<$Res,
        _$RevenueWithdrawalStatePendingImpl>
    implements _$$RevenueWithdrawalStatePendingImplCopyWith<$Res> {
  __$$RevenueWithdrawalStatePendingImplCopyWithImpl(
      _$RevenueWithdrawalStatePendingImpl _value,
      $Res Function(_$RevenueWithdrawalStatePendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$RevenueWithdrawalStatePendingImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueWithdrawalStatePendingImpl
    implements RevenueWithdrawalStatePending {
  const _$RevenueWithdrawalStatePendingImpl(
      {this.type = RevenueWithdrawalStateType.pending})
      : assert(type == RevenueWithdrawalStateType.pending,
            'type must be RevenueWithdrawalStateType.pending');

  factory _$RevenueWithdrawalStatePendingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RevenueWithdrawalStatePendingImplFromJson(json);

  /// Type of the revenue withdrawal state, must be "pending"
  @override
  @JsonKey()
  final RevenueWithdrawalStateType type;

  @override
  String toString() {
    return 'RevenueWithdrawalState.pending(type: $type)';
  }

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueWithdrawalStatePendingImplCopyWith<
          _$RevenueWithdrawalStatePendingImpl>
      get copyWith => __$$RevenueWithdrawalStatePendingImplCopyWithImpl<
          _$RevenueWithdrawalStatePendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RevenueWithdrawalStatePending value) pending,
    required TResult Function(RevenueWithdrawalStateSucceeded value) succeeded,
    required TResult Function(RevenueWithdrawalStateFailed value) failed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RevenueWithdrawalStatePending value)? pending,
    TResult? Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult? Function(RevenueWithdrawalStateFailed value)? failed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RevenueWithdrawalStatePending value)? pending,
    TResult Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult Function(RevenueWithdrawalStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueWithdrawalStatePendingImplToJson(
      this,
    );
  }
}

abstract class RevenueWithdrawalStatePending implements RevenueWithdrawalState {
  const factory RevenueWithdrawalStatePending(
          {final RevenueWithdrawalStateType type}) =
      _$RevenueWithdrawalStatePendingImpl;

  factory RevenueWithdrawalStatePending.fromJson(Map<String, dynamic> json) =
      _$RevenueWithdrawalStatePendingImpl.fromJson;

  /// Type of the revenue withdrawal state, must be "pending"
  @override
  RevenueWithdrawalStateType get type;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueWithdrawalStatePendingImplCopyWith<
          _$RevenueWithdrawalStatePendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RevenueWithdrawalStateSucceededImplCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory _$$RevenueWithdrawalStateSucceededImplCopyWith(
          _$RevenueWithdrawalStateSucceededImpl value,
          $Res Function(_$RevenueWithdrawalStateSucceededImpl) then) =
      __$$RevenueWithdrawalStateSucceededImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RevenueWithdrawalStateType type, int date, String url});
}

/// @nodoc
class __$$RevenueWithdrawalStateSucceededImplCopyWithImpl<$Res>
    extends _$RevenueWithdrawalStateCopyWithImpl<$Res,
        _$RevenueWithdrawalStateSucceededImpl>
    implements _$$RevenueWithdrawalStateSucceededImplCopyWith<$Res> {
  __$$RevenueWithdrawalStateSucceededImplCopyWithImpl(
      _$RevenueWithdrawalStateSucceededImpl _value,
      $Res Function(_$RevenueWithdrawalStateSucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? url = null,
  }) {
    return _then(_$RevenueWithdrawalStateSucceededImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueWithdrawalStateSucceededImpl
    implements RevenueWithdrawalStateSucceeded {
  const _$RevenueWithdrawalStateSucceededImpl(
      {this.type = RevenueWithdrawalStateType.succeeded,
      required this.date,
      required this.url})
      : assert(type == RevenueWithdrawalStateType.succeeded,
            'type must be RevenueWithdrawalStateType.succeeded');

  factory _$RevenueWithdrawalStateSucceededImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RevenueWithdrawalStateSucceededImplFromJson(json);

  /// Type of the revenue withdrawal state, must be "succeeded"
  @override
  @JsonKey()
  final RevenueWithdrawalStateType type;

  /// Date the withdrawal was completed in Unix time.
  @override
  final int date;

  /// An HTTPS URL that can be used to see transaction details.
  @override
  final String url;

  @override
  String toString() {
    return 'RevenueWithdrawalState.succeeded(type: $type, date: $date, url: $url)';
  }

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueWithdrawalStateSucceededImplCopyWith<
          _$RevenueWithdrawalStateSucceededImpl>
      get copyWith => __$$RevenueWithdrawalStateSucceededImplCopyWithImpl<
          _$RevenueWithdrawalStateSucceededImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RevenueWithdrawalStatePending value) pending,
    required TResult Function(RevenueWithdrawalStateSucceeded value) succeeded,
    required TResult Function(RevenueWithdrawalStateFailed value) failed,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RevenueWithdrawalStatePending value)? pending,
    TResult? Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult? Function(RevenueWithdrawalStateFailed value)? failed,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RevenueWithdrawalStatePending value)? pending,
    TResult Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult Function(RevenueWithdrawalStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueWithdrawalStateSucceededImplToJson(
      this,
    );
  }
}

abstract class RevenueWithdrawalStateSucceeded
    implements RevenueWithdrawalState {
  const factory RevenueWithdrawalStateSucceeded(
      {final RevenueWithdrawalStateType type,
      required final int date,
      required final String url}) = _$RevenueWithdrawalStateSucceededImpl;

  factory RevenueWithdrawalStateSucceeded.fromJson(Map<String, dynamic> json) =
      _$RevenueWithdrawalStateSucceededImpl.fromJson;

  /// Type of the revenue withdrawal state, must be "succeeded"
  @override
  RevenueWithdrawalStateType get type;

  /// Date the withdrawal was completed in Unix time.
  int get date;

  /// An HTTPS URL that can be used to see transaction details.
  String get url;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueWithdrawalStateSucceededImplCopyWith<
          _$RevenueWithdrawalStateSucceededImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RevenueWithdrawalStateFailedImplCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory _$$RevenueWithdrawalStateFailedImplCopyWith(
          _$RevenueWithdrawalStateFailedImpl value,
          $Res Function(_$RevenueWithdrawalStateFailedImpl) then) =
      __$$RevenueWithdrawalStateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RevenueWithdrawalStateType type});
}

/// @nodoc
class __$$RevenueWithdrawalStateFailedImplCopyWithImpl<$Res>
    extends _$RevenueWithdrawalStateCopyWithImpl<$Res,
        _$RevenueWithdrawalStateFailedImpl>
    implements _$$RevenueWithdrawalStateFailedImplCopyWith<$Res> {
  __$$RevenueWithdrawalStateFailedImplCopyWithImpl(
      _$RevenueWithdrawalStateFailedImpl _value,
      $Res Function(_$RevenueWithdrawalStateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$RevenueWithdrawalStateFailedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueWithdrawalStateFailedImpl
    implements RevenueWithdrawalStateFailed {
  const _$RevenueWithdrawalStateFailedImpl(
      {this.type = RevenueWithdrawalStateType.failed})
      : assert(type == RevenueWithdrawalStateType.failed,
            'type must be RevenueWithdrawalStateType.failed');

  factory _$RevenueWithdrawalStateFailedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RevenueWithdrawalStateFailedImplFromJson(json);

  /// Type of the revenue withdrawal state, must be "failed"
  @override
  @JsonKey()
  final RevenueWithdrawalStateType type;

  @override
  String toString() {
    return 'RevenueWithdrawalState.failed(type: $type)';
  }

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueWithdrawalStateFailedImplCopyWith<
          _$RevenueWithdrawalStateFailedImpl>
      get copyWith => __$$RevenueWithdrawalStateFailedImplCopyWithImpl<
          _$RevenueWithdrawalStateFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RevenueWithdrawalStatePending value) pending,
    required TResult Function(RevenueWithdrawalStateSucceeded value) succeeded,
    required TResult Function(RevenueWithdrawalStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RevenueWithdrawalStatePending value)? pending,
    TResult? Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult? Function(RevenueWithdrawalStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RevenueWithdrawalStatePending value)? pending,
    TResult Function(RevenueWithdrawalStateSucceeded value)? succeeded,
    TResult Function(RevenueWithdrawalStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueWithdrawalStateFailedImplToJson(
      this,
    );
  }
}

abstract class RevenueWithdrawalStateFailed implements RevenueWithdrawalState {
  const factory RevenueWithdrawalStateFailed(
          {final RevenueWithdrawalStateType type}) =
      _$RevenueWithdrawalStateFailedImpl;

  factory RevenueWithdrawalStateFailed.fromJson(Map<String, dynamic> json) =
      _$RevenueWithdrawalStateFailedImpl.fromJson;

  /// Type of the revenue withdrawal state, must be "failed"
  @override
  RevenueWithdrawalStateType get type;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueWithdrawalStateFailedImplCopyWith<
          _$RevenueWithdrawalStateFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
