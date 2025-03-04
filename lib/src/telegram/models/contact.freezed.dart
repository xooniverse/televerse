// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  /// Contact's phone number
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Contact's first name
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;

  /// Optional. Contact's last name
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  /// Optional. Contact's user identifier in Telegram
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard)
  @JsonKey(name: 'vcard')
  String? get vcard => throw _privateConstructorUsedError;

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'vcard') String? vcard});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? userId = freezed,
    Object? vcard = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      vcard: freezed == vcard
          ? _value.vcard
          : vcard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
          _$ContactImpl value, $Res Function(_$ContactImpl) then) =
      __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'vcard') String? vcard});
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
      _$ContactImpl _value, $Res Function(_$ContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? userId = freezed,
    Object? vcard = freezed,
  }) {
    return _then(_$ContactImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      vcard: freezed == vcard
          ? _value.vcard
          : vcard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactImpl implements _Contact {
  const _$ContactImpl(
      {@JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'vcard') this.vcard});

  factory _$ContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactImplFromJson(json);

  /// Contact's phone number
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  /// Contact's first name
  @override
  @JsonKey(name: 'first_name')
  final String firstName;

  /// Optional. Contact's last name
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Contact's user identifier in Telegram
  @override
  @JsonKey(name: 'user_id')
  final int? userId;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard)
  @override
  @JsonKey(name: 'vcard')
  final String? vcard;

  @override
  String toString() {
    return 'Contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, userId: $userId, vcard: $vcard)';
  }

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactImplToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {@JsonKey(name: 'phone_number') required final String phoneNumber,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'vcard') final String? vcard}) = _$ContactImpl;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$ContactImpl.fromJson;

  /// Contact's phone number
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Contact's first name
  @override
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. Contact's last name
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Contact's user identifier in Telegram
  @override
  @JsonKey(name: 'user_id')
  int? get userId;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard)
  @override
  @JsonKey(name: 'vcard')
  String? get vcard;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
