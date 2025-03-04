// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_scheduled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoChatScheduled _$VideoChatScheduledFromJson(Map<String, dynamic> json) {
  return _VideoChatScheduled.fromJson(json);
}

/// @nodoc
mixin _$VideoChatScheduled {
  /// Point in time (Unix timestamp) when the video chat is supposed to be
  /// started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  @JsonKey(name: 'start_date')
  int get startDate => throw _privateConstructorUsedError;

  /// Serializes this VideoChatScheduled to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoChatScheduledCopyWith<VideoChatScheduled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoChatScheduledCopyWith<$Res> {
  factory $VideoChatScheduledCopyWith(
          VideoChatScheduled value, $Res Function(VideoChatScheduled) then) =
      _$VideoChatScheduledCopyWithImpl<$Res, VideoChatScheduled>;
  @useResult
  $Res call({@JsonKey(name: 'start_date') int startDate});
}

/// @nodoc
class _$VideoChatScheduledCopyWithImpl<$Res, $Val extends VideoChatScheduled>
    implements $VideoChatScheduledCopyWith<$Res> {
  _$VideoChatScheduledCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoChatScheduledImplCopyWith<$Res>
    implements $VideoChatScheduledCopyWith<$Res> {
  factory _$$VideoChatScheduledImplCopyWith(_$VideoChatScheduledImpl value,
          $Res Function(_$VideoChatScheduledImpl) then) =
      __$$VideoChatScheduledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'start_date') int startDate});
}

/// @nodoc
class __$$VideoChatScheduledImplCopyWithImpl<$Res>
    extends _$VideoChatScheduledCopyWithImpl<$Res, _$VideoChatScheduledImpl>
    implements _$$VideoChatScheduledImplCopyWith<$Res> {
  __$$VideoChatScheduledImplCopyWithImpl(_$VideoChatScheduledImpl _value,
      $Res Function(_$VideoChatScheduledImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$VideoChatScheduledImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoChatScheduledImpl implements _VideoChatScheduled {
  const _$VideoChatScheduledImpl(
      {@JsonKey(name: 'start_date') required this.startDate});

  factory _$VideoChatScheduledImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoChatScheduledImplFromJson(json);

  /// Point in time (Unix timestamp) when the video chat is supposed to be
  /// started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  @override
  @JsonKey(name: 'start_date')
  final int startDate;

  @override
  String toString() {
    return 'VideoChatScheduled(startDate: $startDate)';
  }

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoChatScheduledImplCopyWith<_$VideoChatScheduledImpl> get copyWith =>
      __$$VideoChatScheduledImplCopyWithImpl<_$VideoChatScheduledImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoChatScheduledImplToJson(
      this,
    );
  }
}

abstract class _VideoChatScheduled implements VideoChatScheduled {
  const factory _VideoChatScheduled(
          {@JsonKey(name: 'start_date') required final int startDate}) =
      _$VideoChatScheduledImpl;

  factory _VideoChatScheduled.fromJson(Map<String, dynamic> json) =
      _$VideoChatScheduledImpl.fromJson;

  /// Point in time (Unix timestamp) when the video chat is supposed to be
  /// started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  @override
  @JsonKey(name: 'start_date')
  int get startDate;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoChatScheduledImplCopyWith<_$VideoChatScheduledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
