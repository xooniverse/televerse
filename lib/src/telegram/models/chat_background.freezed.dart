// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_background.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBackground _$ChatBackgroundFromJson(Map<String, dynamic> json) {
  return _ChatBackground.fromJson(json);
}

/// @nodoc
mixin _$ChatBackground {
  /// Type of the background.
  @JsonKey(name: 'type')
  BackgroundType get type => throw _privateConstructorUsedError;

  /// Serializes this ChatBackground to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBackgroundCopyWith<ChatBackground> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBackgroundCopyWith<$Res> {
  factory $ChatBackgroundCopyWith(
          ChatBackground value, $Res Function(ChatBackground) then) =
      _$ChatBackgroundCopyWithImpl<$Res, ChatBackground>;
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundType type});

  $BackgroundTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ChatBackgroundCopyWithImpl<$Res, $Val extends ChatBackground>
    implements $ChatBackgroundCopyWith<$Res> {
  _$ChatBackgroundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBackground
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
              as BackgroundType,
    ) as $Val);
  }

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundTypeCopyWith<$Res> get type {
    return $BackgroundTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBackgroundImplCopyWith<$Res>
    implements $ChatBackgroundCopyWith<$Res> {
  factory _$$ChatBackgroundImplCopyWith(_$ChatBackgroundImpl value,
          $Res Function(_$ChatBackgroundImpl) then) =
      __$$ChatBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundType type});

  @override
  $BackgroundTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ChatBackgroundImplCopyWithImpl<$Res>
    extends _$ChatBackgroundCopyWithImpl<$Res, _$ChatBackgroundImpl>
    implements _$$ChatBackgroundImplCopyWith<$Res> {
  __$$ChatBackgroundImplCopyWithImpl(
      _$ChatBackgroundImpl _value, $Res Function(_$ChatBackgroundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChatBackgroundImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBackgroundImpl implements _ChatBackground {
  const _$ChatBackgroundImpl({@JsonKey(name: 'type') required this.type});

  factory _$ChatBackgroundImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBackgroundImplFromJson(json);

  /// Type of the background.
  @override
  @JsonKey(name: 'type')
  final BackgroundType type;

  @override
  String toString() {
    return 'ChatBackground(type: $type)';
  }

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBackgroundImplCopyWith<_$ChatBackgroundImpl> get copyWith =>
      __$$ChatBackgroundImplCopyWithImpl<_$ChatBackgroundImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBackgroundImplToJson(
      this,
    );
  }
}

abstract class _ChatBackground implements ChatBackground {
  const factory _ChatBackground(
          {@JsonKey(name: 'type') required final BackgroundType type}) =
      _$ChatBackgroundImpl;

  factory _ChatBackground.fromJson(Map<String, dynamic> json) =
      _$ChatBackgroundImpl.fromJson;

  /// Type of the background.
  @override
  @JsonKey(name: 'type')
  BackgroundType get type;

  /// Create a copy of ChatBackground
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBackgroundImplCopyWith<_$ChatBackgroundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
