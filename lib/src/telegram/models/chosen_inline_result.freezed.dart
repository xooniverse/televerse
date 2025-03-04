// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chosen_inline_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChosenInlineResult _$ChosenInlineResultFromJson(Map<String, dynamic> json) {
  return _ChosenInlineResult.fromJson(json);
}

/// @nodoc
mixin _$ChosenInlineResult {
  /// The unique identifier for the result that was chosen
  @JsonKey(name: 'result_id')
  String get resultId => throw _privateConstructorUsedError;

  /// The user that chose the result
  @JsonKey(name: 'from')
  User get from => throw _privateConstructorUsedError;

  /// Optional. Sender location, only for bots that require user location
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message. Will be also received in
  /// callback queries and can be used to edit the message.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId => throw _privateConstructorUsedError;

  /// The query that was used to obtain the result
  @JsonKey(name: 'query')
  String get query => throw _privateConstructorUsedError;

  /// Serializes this ChosenInlineResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChosenInlineResultCopyWith<ChosenInlineResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChosenInlineResultCopyWith<$Res> {
  factory $ChosenInlineResultCopyWith(
          ChosenInlineResult value, $Res Function(ChosenInlineResult) then) =
      _$ChosenInlineResultCopyWithImpl<$Res, ChosenInlineResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result_id') String resultId,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'query') String query});

  $UserCopyWith<$Res> get from;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$ChosenInlineResultCopyWithImpl<$Res, $Val extends ChosenInlineResult>
    implements $ChosenInlineResultCopyWith<$Res> {
  _$ChosenInlineResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? from = null,
    Object? location = freezed,
    Object? inlineMessageId = freezed,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      inlineMessageId: freezed == inlineMessageId
          ? _value.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChosenInlineResultImplCopyWith<$Res>
    implements $ChosenInlineResultCopyWith<$Res> {
  factory _$$ChosenInlineResultImplCopyWith(_$ChosenInlineResultImpl value,
          $Res Function(_$ChosenInlineResultImpl) then) =
      __$$ChosenInlineResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result_id') String resultId,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'query') String query});

  @override
  $UserCopyWith<$Res> get from;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ChosenInlineResultImplCopyWithImpl<$Res>
    extends _$ChosenInlineResultCopyWithImpl<$Res, _$ChosenInlineResultImpl>
    implements _$$ChosenInlineResultImplCopyWith<$Res> {
  __$$ChosenInlineResultImplCopyWithImpl(_$ChosenInlineResultImpl _value,
      $Res Function(_$ChosenInlineResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? from = null,
    Object? location = freezed,
    Object? inlineMessageId = freezed,
    Object? query = null,
  }) {
    return _then(_$ChosenInlineResultImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      inlineMessageId: freezed == inlineMessageId
          ? _value.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChosenInlineResultImpl implements _ChosenInlineResult {
  const _$ChosenInlineResultImpl(
      {@JsonKey(name: 'result_id') required this.resultId,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'inline_message_id') this.inlineMessageId,
      @JsonKey(name: 'query') required this.query});

  factory _$ChosenInlineResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChosenInlineResultImplFromJson(json);

  /// The unique identifier for the result that was chosen
  @override
  @JsonKey(name: 'result_id')
  final String resultId;

  /// The user that chose the result
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Optional. Sender location, only for bots that require user location
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message. Will be also received in
  /// callback queries and can be used to edit the message.
  @override
  @JsonKey(name: 'inline_message_id')
  final String? inlineMessageId;

  /// The query that was used to obtain the result
  @override
  @JsonKey(name: 'query')
  final String query;

  @override
  String toString() {
    return 'ChosenInlineResult(resultId: $resultId, from: $from, location: $location, inlineMessageId: $inlineMessageId, query: $query)';
  }

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChosenInlineResultImplCopyWith<_$ChosenInlineResultImpl> get copyWith =>
      __$$ChosenInlineResultImplCopyWithImpl<_$ChosenInlineResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChosenInlineResultImplToJson(
      this,
    );
  }
}

abstract class _ChosenInlineResult implements ChosenInlineResult {
  const factory _ChosenInlineResult(
          {@JsonKey(name: 'result_id') required final String resultId,
          @JsonKey(name: 'from') required final User from,
          @JsonKey(name: 'location') final Location? location,
          @JsonKey(name: 'inline_message_id') final String? inlineMessageId,
          @JsonKey(name: 'query') required final String query}) =
      _$ChosenInlineResultImpl;

  factory _ChosenInlineResult.fromJson(Map<String, dynamic> json) =
      _$ChosenInlineResultImpl.fromJson;

  /// The unique identifier for the result that was chosen
  @override
  @JsonKey(name: 'result_id')
  String get resultId;

  /// The user that chose the result
  @override
  @JsonKey(name: 'from')
  User get from;

  /// Optional. Sender location, only for bots that require user location
  @override
  @JsonKey(name: 'location')
  Location? get location;

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message. Will be also received in
  /// callback queries and can be used to edit the message.
  @override
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// The query that was used to obtain the result
  @override
  @JsonKey(name: 'query')
  String get query;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChosenInlineResultImplCopyWith<_$ChosenInlineResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
