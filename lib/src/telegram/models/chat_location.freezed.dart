// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatLocation _$ChatLocationFromJson(Map<String, dynamic> json) {
  return _ChatLocation.fromJson(json);
}

/// @nodoc
mixin _$ChatLocation {
  /// The location to which the supergroup is connected.
  Location get location => throw _privateConstructorUsedError;

  /// Location address; 1-64 characters, as defined by the chat owner
  String get address => throw _privateConstructorUsedError;

  /// Serializes this ChatLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatLocationCopyWith<ChatLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatLocationCopyWith<$Res> {
  factory $ChatLocationCopyWith(
          ChatLocation value, $Res Function(ChatLocation) then) =
      _$ChatLocationCopyWithImpl<$Res, ChatLocation>;
  @useResult
  $Res call({Location location, String address});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ChatLocationCopyWithImpl<$Res, $Val extends ChatLocation>
    implements $ChatLocationCopyWith<$Res> {
  _$ChatLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatLocationImplCopyWith<$Res>
    implements $ChatLocationCopyWith<$Res> {
  factory _$$ChatLocationImplCopyWith(
          _$ChatLocationImpl value, $Res Function(_$ChatLocationImpl) then) =
      __$$ChatLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location location, String address});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$ChatLocationImplCopyWithImpl<$Res>
    extends _$ChatLocationCopyWithImpl<$Res, _$ChatLocationImpl>
    implements _$$ChatLocationImplCopyWith<$Res> {
  __$$ChatLocationImplCopyWithImpl(
      _$ChatLocationImpl _value, $Res Function(_$ChatLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? address = null,
  }) {
    return _then(_$ChatLocationImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatLocationImpl implements _ChatLocation {
  const _$ChatLocationImpl({required this.location, required this.address});

  factory _$ChatLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatLocationImplFromJson(json);

  /// The location to which the supergroup is connected.
  @override
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  @override
  final String address;

  @override
  String toString() {
    return 'ChatLocation(location: $location, address: $address)';
  }

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLocationImplCopyWith<_$ChatLocationImpl> get copyWith =>
      __$$ChatLocationImplCopyWithImpl<_$ChatLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatLocationImplToJson(
      this,
    );
  }
}

abstract class _ChatLocation implements ChatLocation {
  const factory _ChatLocation(
      {required final Location location,
      required final String address}) = _$ChatLocationImpl;

  factory _ChatLocation.fromJson(Map<String, dynamic> json) =
      _$ChatLocationImpl.fromJson;

  /// The location to which the supergroup is connected.
  @override
  Location get location;

  /// Location address; 1-64 characters, as defined by the chat owner
  @override
  String get address;

  /// Create a copy of ChatLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatLocationImplCopyWith<_$ChatLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
