// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Contact {
  /// Contact's phone number
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Contact's first name
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. Contact's last name
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Contact's user identifier in Telegram
  @JsonKey(name: 'user_id')
  int? get userId;

  /// Optional. Additional data about the contact in the form of a
  /// [vCard](https://en.wikipedia.org/wiki/VCard)
  @JsonKey(name: 'vcard')
  String? get vcard;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactCopyWith<Contact> get copyWith =>
      _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, userId: $userId, vcard: $vcard)';
  }
}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) =
      _$ContactCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'vcard') String? vcard,
  });
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

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
    return _then(
      _self.copyWith(
        phoneNumber: null == phoneNumber
            ? _self.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _self.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        vcard: freezed == vcard
            ? _self.vcard
            : vcard // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Contact].
extension ContactPatterns on Contact {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Contact value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Contact() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Contact value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Contact():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Contact value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Contact() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Contact implements Contact {
  const _Contact({
    @JsonKey(name: 'phone_number') required this.phoneNumber,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'vcard') this.vcard,
  });
  factory _Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

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

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactToJson(this);
  }

  @override
  String toString() {
    return 'Contact(phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, userId: $userId, vcard: $vcard)';
  }
}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) =
      __$ContactCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'vcard') String? vcard,
  });
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? userId = freezed,
    Object? vcard = freezed,
  }) {
    return _then(
      _Contact(
        phoneNumber: null == phoneNumber
            ? _self.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _self.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        vcard: freezed == vcard
            ? _self.vcard
            : vcard // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
