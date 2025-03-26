// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_withdrawal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
  @JsonKey(name: 'type')
  RevenueWithdrawalStateType get type;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStateCopyWith<RevenueWithdrawalState> get copyWith =>
      _$RevenueWithdrawalStateCopyWithImpl<RevenueWithdrawalState>(
          this as RevenueWithdrawalState, _$identity);

  /// Serializes this RevenueWithdrawalState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'RevenueWithdrawalState(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RevenueWithdrawalStateCopyWith<$Res> {
  factory $RevenueWithdrawalStateCopyWith(RevenueWithdrawalState value,
          $Res Function(RevenueWithdrawalState) _then) =
      _$RevenueWithdrawalStateCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') RevenueWithdrawalStateType type});
}

/// @nodoc
class _$RevenueWithdrawalStateCopyWithImpl<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  _$RevenueWithdrawalStateCopyWithImpl(this._self, this._then);

  final RevenueWithdrawalState _self;
  final $Res Function(RevenueWithdrawalState) _then;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RevenueWithdrawalStatePending implements RevenueWithdrawalState {
  const RevenueWithdrawalStatePending(
      {@JsonKey(name: 'type') this.type = RevenueWithdrawalStateType.pending})
      : assert(type == RevenueWithdrawalStateType.pending,
            'type must be RevenueWithdrawalStateType.pending');
  factory RevenueWithdrawalStatePending.fromJson(Map<String, dynamic> json) =>
      _$RevenueWithdrawalStatePendingFromJson(json);

  /// Type of the revenue withdrawal state, must be "pending"
  @override
  @JsonKey(name: 'type')
  final RevenueWithdrawalStateType type;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStatePendingCopyWith<RevenueWithdrawalStatePending>
      get copyWith => _$RevenueWithdrawalStatePendingCopyWithImpl<
          RevenueWithdrawalStatePending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RevenueWithdrawalStatePendingToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'RevenueWithdrawalState.pending(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RevenueWithdrawalStatePendingCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory $RevenueWithdrawalStatePendingCopyWith(
          RevenueWithdrawalStatePending value,
          $Res Function(RevenueWithdrawalStatePending) _then) =
      _$RevenueWithdrawalStatePendingCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') RevenueWithdrawalStateType type});
}

/// @nodoc
class _$RevenueWithdrawalStatePendingCopyWithImpl<$Res>
    implements $RevenueWithdrawalStatePendingCopyWith<$Res> {
  _$RevenueWithdrawalStatePendingCopyWithImpl(this._self, this._then);

  final RevenueWithdrawalStatePending _self;
  final $Res Function(RevenueWithdrawalStatePending) _then;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(RevenueWithdrawalStatePending(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RevenueWithdrawalStateSucceeded implements RevenueWithdrawalState {
  const RevenueWithdrawalStateSucceeded(
      {@JsonKey(name: 'type') this.type = RevenueWithdrawalStateType.succeeded,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'url') required this.url})
      : assert(type == RevenueWithdrawalStateType.succeeded,
            'type must be RevenueWithdrawalStateType.succeeded');
  factory RevenueWithdrawalStateSucceeded.fromJson(Map<String, dynamic> json) =>
      _$RevenueWithdrawalStateSucceededFromJson(json);

  /// Type of the revenue withdrawal state, must be "succeeded"
  @override
  @JsonKey(name: 'type')
  final RevenueWithdrawalStateType type;

  /// Date the withdrawal was completed in Unix time.
  @JsonKey(name: 'date')
  final int date;

  /// An HTTPS URL that can be used to see transaction details.
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStateSucceededCopyWith<RevenueWithdrawalStateSucceeded>
      get copyWith => _$RevenueWithdrawalStateSucceededCopyWithImpl<
          RevenueWithdrawalStateSucceeded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RevenueWithdrawalStateSucceededToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'RevenueWithdrawalState.succeeded(type: $type, date: $date, url: $url)';
  }
}

/// @nodoc
abstract mixin class $RevenueWithdrawalStateSucceededCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory $RevenueWithdrawalStateSucceededCopyWith(
          RevenueWithdrawalStateSucceeded value,
          $Res Function(RevenueWithdrawalStateSucceeded) _then) =
      _$RevenueWithdrawalStateSucceededCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') RevenueWithdrawalStateType type,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$RevenueWithdrawalStateSucceededCopyWithImpl<$Res>
    implements $RevenueWithdrawalStateSucceededCopyWith<$Res> {
  _$RevenueWithdrawalStateSucceededCopyWithImpl(this._self, this._then);

  final RevenueWithdrawalStateSucceeded _self;
  final $Res Function(RevenueWithdrawalStateSucceeded) _then;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? url = null,
  }) {
    return _then(RevenueWithdrawalStateSucceeded(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class RevenueWithdrawalStateFailed implements RevenueWithdrawalState {
  const RevenueWithdrawalStateFailed(
      {@JsonKey(name: 'type') this.type = RevenueWithdrawalStateType.failed})
      : assert(type == RevenueWithdrawalStateType.failed,
            'type must be RevenueWithdrawalStateType.failed');
  factory RevenueWithdrawalStateFailed.fromJson(Map<String, dynamic> json) =>
      _$RevenueWithdrawalStateFailedFromJson(json);

  /// Type of the revenue withdrawal state, must be "failed"
  @override
  @JsonKey(name: 'type')
  final RevenueWithdrawalStateType type;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RevenueWithdrawalStateFailedCopyWith<RevenueWithdrawalStateFailed>
      get copyWith => _$RevenueWithdrawalStateFailedCopyWithImpl<
          RevenueWithdrawalStateFailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RevenueWithdrawalStateFailedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'RevenueWithdrawalState.failed(type: $type)';
  }
}

/// @nodoc
abstract mixin class $RevenueWithdrawalStateFailedCopyWith<$Res>
    implements $RevenueWithdrawalStateCopyWith<$Res> {
  factory $RevenueWithdrawalStateFailedCopyWith(
          RevenueWithdrawalStateFailed value,
          $Res Function(RevenueWithdrawalStateFailed) _then) =
      _$RevenueWithdrawalStateFailedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') RevenueWithdrawalStateType type});
}

/// @nodoc
class _$RevenueWithdrawalStateFailedCopyWithImpl<$Res>
    implements $RevenueWithdrawalStateFailedCopyWith<$Res> {
  _$RevenueWithdrawalStateFailedCopyWithImpl(this._self, this._then);

  final RevenueWithdrawalStateFailed _self;
  final $Res Function(RevenueWithdrawalStateFailed) _then;

  /// Create a copy of RevenueWithdrawalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(RevenueWithdrawalStateFailed(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RevenueWithdrawalStateType,
    ));
  }
}
