// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_auto_delete_timer_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageAutoDeleteTimerChanged _$MessageAutoDeleteTimerChangedFromJson(
    Map<String, dynamic> json) {
  return _MessageAutoDeleteTimerChanged.fromJson(json);
}

/// @nodoc
mixin _$MessageAutoDeleteTimerChanged {
  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in
  /// [Duration] object
  @JsonKey(name: 'message_auto_delete_time')
  int get messageAutoDeleteTime => throw _privateConstructorUsedError;

  /// Serializes this MessageAutoDeleteTimerChanged to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAutoDeleteTimerChangedCopyWith<MessageAutoDeleteTimerChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  factory $MessageAutoDeleteTimerChangedCopyWith(
          MessageAutoDeleteTimerChanged value,
          $Res Function(MessageAutoDeleteTimerChanged) then) =
      _$MessageAutoDeleteTimerChangedCopyWithImpl<$Res,
          MessageAutoDeleteTimerChanged>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_auto_delete_time') int messageAutoDeleteTime});
}

/// @nodoc
class _$MessageAutoDeleteTimerChangedCopyWithImpl<$Res,
        $Val extends MessageAutoDeleteTimerChanged>
    implements $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  _$MessageAutoDeleteTimerChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageAutoDeleteTime = null,
  }) {
    return _then(_value.copyWith(
      messageAutoDeleteTime: null == messageAutoDeleteTime
          ? _value.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAutoDeleteTimerChangedImplCopyWith<$Res>
    implements $MessageAutoDeleteTimerChangedCopyWith<$Res> {
  factory _$$MessageAutoDeleteTimerChangedImplCopyWith(
          _$MessageAutoDeleteTimerChangedImpl value,
          $Res Function(_$MessageAutoDeleteTimerChangedImpl) then) =
      __$$MessageAutoDeleteTimerChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_auto_delete_time') int messageAutoDeleteTime});
}

/// @nodoc
class __$$MessageAutoDeleteTimerChangedImplCopyWithImpl<$Res>
    extends _$MessageAutoDeleteTimerChangedCopyWithImpl<$Res,
        _$MessageAutoDeleteTimerChangedImpl>
    implements _$$MessageAutoDeleteTimerChangedImplCopyWith<$Res> {
  __$$MessageAutoDeleteTimerChangedImplCopyWithImpl(
      _$MessageAutoDeleteTimerChangedImpl _value,
      $Res Function(_$MessageAutoDeleteTimerChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageAutoDeleteTime = null,
  }) {
    return _then(_$MessageAutoDeleteTimerChangedImpl(
      messageAutoDeleteTime: null == messageAutoDeleteTime
          ? _value.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageAutoDeleteTimerChangedImpl
    implements _MessageAutoDeleteTimerChanged {
  const _$MessageAutoDeleteTimerChangedImpl(
      {@JsonKey(name: 'message_auto_delete_time')
      required this.messageAutoDeleteTime});

  factory _$MessageAutoDeleteTimerChangedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MessageAutoDeleteTimerChangedImplFromJson(json);

  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in
  /// [Duration] object
  @override
  @JsonKey(name: 'message_auto_delete_time')
  final int messageAutoDeleteTime;

  @override
  String toString() {
    return 'MessageAutoDeleteTimerChanged(messageAutoDeleteTime: $messageAutoDeleteTime)';
  }

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAutoDeleteTimerChangedImplCopyWith<
          _$MessageAutoDeleteTimerChangedImpl>
      get copyWith => __$$MessageAutoDeleteTimerChangedImplCopyWithImpl<
          _$MessageAutoDeleteTimerChangedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAutoDeleteTimerChangedImplToJson(
      this,
    );
  }
}

abstract class _MessageAutoDeleteTimerChanged
    implements MessageAutoDeleteTimerChanged {
  const factory _MessageAutoDeleteTimerChanged(
          {@JsonKey(name: 'message_auto_delete_time')
          required final int messageAutoDeleteTime}) =
      _$MessageAutoDeleteTimerChangedImpl;

  factory _MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) =
      _$MessageAutoDeleteTimerChangedImpl.fromJson;

  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in
  /// [Duration] object
  @override
  @JsonKey(name: 'message_auto_delete_time')
  int get messageAutoDeleteTime;

  /// Create a copy of MessageAutoDeleteTimerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAutoDeleteTimerChangedImplCopyWith<
          _$MessageAutoDeleteTimerChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
