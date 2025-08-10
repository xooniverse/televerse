// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_scheduled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoChatScheduled {
  /// Point in time (Unix timestamp) when the video chat is supposed to be
  /// started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as `startDateTime`
  @JsonKey(name: 'start_date')
  int get startDate;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoChatScheduledCopyWith<VideoChatScheduled> get copyWith =>
      _$VideoChatScheduledCopyWithImpl<VideoChatScheduled>(
          this as VideoChatScheduled, _$identity);

  /// Serializes this VideoChatScheduled to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VideoChatScheduled(startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class $VideoChatScheduledCopyWith<$Res> {
  factory $VideoChatScheduledCopyWith(
          VideoChatScheduled value, $Res Function(VideoChatScheduled) _then) =
      _$VideoChatScheduledCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'start_date') int startDate});
}

/// @nodoc
class _$VideoChatScheduledCopyWithImpl<$Res>
    implements $VideoChatScheduledCopyWith<$Res> {
  _$VideoChatScheduledCopyWithImpl(this._self, this._then);

  final VideoChatScheduled _self;
  final $Res Function(VideoChatScheduled) _then;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_self.copyWith(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VideoChatScheduled implements VideoChatScheduled {
  const _VideoChatScheduled(
      {@JsonKey(name: 'start_date') required this.startDate});
  factory _VideoChatScheduled.fromJson(Map<String, dynamic> json) =>
      _$VideoChatScheduledFromJson(json);

  /// Point in time (Unix timestamp) when the video chat is supposed to be
  /// started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as `startDateTime`
  @override
  @JsonKey(name: 'start_date')
  final int startDate;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoChatScheduledCopyWith<_VideoChatScheduled> get copyWith =>
      __$VideoChatScheduledCopyWithImpl<_VideoChatScheduled>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoChatScheduledToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'VideoChatScheduled(startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class _$VideoChatScheduledCopyWith<$Res>
    implements $VideoChatScheduledCopyWith<$Res> {
  factory _$VideoChatScheduledCopyWith(
          _VideoChatScheduled value, $Res Function(_VideoChatScheduled) _then) =
      __$VideoChatScheduledCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'start_date') int startDate});
}

/// @nodoc
class __$VideoChatScheduledCopyWithImpl<$Res>
    implements _$VideoChatScheduledCopyWith<$Res> {
  __$VideoChatScheduledCopyWithImpl(this._self, this._then);

  final _VideoChatScheduled _self;
  final $Res Function(_VideoChatScheduled) _then;

  /// Create a copy of VideoChatScheduled
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_VideoChatScheduled(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
