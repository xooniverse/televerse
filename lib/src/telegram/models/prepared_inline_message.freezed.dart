// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prepared_inline_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreparedInlineMessage _$PreparedInlineMessageFromJson(
    Map<String, dynamic> json) {
  return _PreparedInlineMessage.fromJson(json);
}

/// @nodoc
mixin _$PreparedInlineMessage {
  /// Unique identifier of the prepared message.
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Expiration date of the prepared message, in Unix time. Expired prepared
  /// messages can no longer be used.
  @JsonKey(name: 'expiration_date')
  int get expirationDate => throw _privateConstructorUsedError;

  /// Serializes this PreparedInlineMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreparedInlineMessageCopyWith<PreparedInlineMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreparedInlineMessageCopyWith<$Res> {
  factory $PreparedInlineMessageCopyWith(PreparedInlineMessage value,
          $Res Function(PreparedInlineMessage) then) =
      _$PreparedInlineMessageCopyWithImpl<$Res, PreparedInlineMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'expiration_date') int expirationDate});
}

/// @nodoc
class _$PreparedInlineMessageCopyWithImpl<$Res,
        $Val extends PreparedInlineMessage>
    implements $PreparedInlineMessageCopyWith<$Res> {
  _$PreparedInlineMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expirationDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreparedInlineMessageImplCopyWith<$Res>
    implements $PreparedInlineMessageCopyWith<$Res> {
  factory _$$PreparedInlineMessageImplCopyWith(
          _$PreparedInlineMessageImpl value,
          $Res Function(_$PreparedInlineMessageImpl) then) =
      __$$PreparedInlineMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'expiration_date') int expirationDate});
}

/// @nodoc
class __$$PreparedInlineMessageImplCopyWithImpl<$Res>
    extends _$PreparedInlineMessageCopyWithImpl<$Res,
        _$PreparedInlineMessageImpl>
    implements _$$PreparedInlineMessageImplCopyWith<$Res> {
  __$$PreparedInlineMessageImplCopyWithImpl(_$PreparedInlineMessageImpl _value,
      $Res Function(_$PreparedInlineMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expirationDate = null,
  }) {
    return _then(_$PreparedInlineMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreparedInlineMessageImpl implements _PreparedInlineMessage {
  const _$PreparedInlineMessageImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'expiration_date') required this.expirationDate});

  factory _$PreparedInlineMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreparedInlineMessageImplFromJson(json);

  /// Unique identifier of the prepared message.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Expiration date of the prepared message, in Unix time. Expired prepared
  /// messages can no longer be used.
  @override
  @JsonKey(name: 'expiration_date')
  final int expirationDate;

  @override
  String toString() {
    return 'PreparedInlineMessage(id: $id, expirationDate: $expirationDate)';
  }

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreparedInlineMessageImplCopyWith<_$PreparedInlineMessageImpl>
      get copyWith => __$$PreparedInlineMessageImplCopyWithImpl<
          _$PreparedInlineMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreparedInlineMessageImplToJson(
      this,
    );
  }
}

abstract class _PreparedInlineMessage implements PreparedInlineMessage {
  const factory _PreparedInlineMessage(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'expiration_date')
      required final int expirationDate}) = _$PreparedInlineMessageImpl;

  factory _PreparedInlineMessage.fromJson(Map<String, dynamic> json) =
      _$PreparedInlineMessageImpl.fromJson;

  /// Unique identifier of the prepared message.
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Expiration date of the prepared message, in Unix time. Expired prepared
  /// messages can no longer be used.
  @override
  @JsonKey(name: 'expiration_date')
  int get expirationDate;

  /// Create a copy of PreparedInlineMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreparedInlineMessageImplCopyWith<_$PreparedInlineMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
