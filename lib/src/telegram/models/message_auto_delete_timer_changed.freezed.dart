// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_auto_delete_timer_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageAutoDeleteTimerChanged {
  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in
  /// [Duration] object
  @JsonKey(name: 'message_auto_delete_time')
  int get messageAutoDeleteTime;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageAutoDeleteTimerChangedCopyWith<MessageAutoDeleteTimerChanged>
      get copyWith => _$MessageAutoDeleteTimerChangedCopyWithImpl<
              MessageAutoDeleteTimerChanged>(
          this as MessageAutoDeleteTimerChanged, _$identity);

  /// Serializes this MessageAutoDeleteTimerChanged to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageAutoDeleteTimerChanged(messageAutoDeleteTime: $messageAutoDeleteTime)';
  }
}

/// @nodoc
abstract mixin class $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  factory $MessageAutoDeleteTimerChangedCopyWith(
          MessageAutoDeleteTimerChanged value,
          $Res Function(MessageAutoDeleteTimerChanged) _then) =
      _$MessageAutoDeleteTimerChangedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_auto_delete_time') int messageAutoDeleteTime});
}

/// @nodoc
class _$MessageAutoDeleteTimerChangedCopyWithImpl<$Res>
    implements $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  _$MessageAutoDeleteTimerChangedCopyWithImpl(this._self, this._then);

  final MessageAutoDeleteTimerChanged _self;
  final $Res Function(MessageAutoDeleteTimerChanged) _then;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageAutoDeleteTime = null,
  }) {
    return _then(_self.copyWith(
      messageAutoDeleteTime: null == messageAutoDeleteTime
          ? _self.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageAutoDeleteTimerChanged implements MessageAutoDeleteTimerChanged {
  const _MessageAutoDeleteTimerChanged(
      {@JsonKey(name: 'message_auto_delete_time')
      required this.messageAutoDeleteTime});
  factory _MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) =>
      _$MessageAutoDeleteTimerChangedFromJson(json);

  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in
  /// [Duration] object
  @override
  @JsonKey(name: 'message_auto_delete_time')
  final int messageAutoDeleteTime;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageAutoDeleteTimerChangedCopyWith<_MessageAutoDeleteTimerChanged>
      get copyWith => __$MessageAutoDeleteTimerChangedCopyWithImpl<
          _MessageAutoDeleteTimerChanged>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageAutoDeleteTimerChangedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageAutoDeleteTimerChanged(messageAutoDeleteTime: $messageAutoDeleteTime)';
  }
}

/// @nodoc
abstract mixin class _$MessageAutoDeleteTimerChangedCopyWith<$Res>
    implements $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  factory _$MessageAutoDeleteTimerChangedCopyWith(
          _MessageAutoDeleteTimerChanged value,
          $Res Function(_MessageAutoDeleteTimerChanged) _then) =
      __$MessageAutoDeleteTimerChangedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_auto_delete_time') int messageAutoDeleteTime});
}

/// @nodoc
class __$MessageAutoDeleteTimerChangedCopyWithImpl<$Res>
    implements _$MessageAutoDeleteTimerChangedCopyWith<$Res> {
  __$MessageAutoDeleteTimerChangedCopyWithImpl(this._self, this._then);

  final _MessageAutoDeleteTimerChanged _self;
  final $Res Function(_MessageAutoDeleteTimerChanged) _then;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageAutoDeleteTime = null,
  }) {
    return _then(_MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime: null == messageAutoDeleteTime
          ? _self.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
