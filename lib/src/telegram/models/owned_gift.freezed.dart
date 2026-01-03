// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owned_gift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OwnedGift _$OwnedGiftFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'regular':
      return OwnedGiftRegular.fromJson(json);
    case 'unique':
      return OwnedGiftUnique.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'OwnedGift',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$OwnedGift {
  /// Type of the gift, always "regular"
  @JsonKey(name: 'type')
  OwnedGiftType get type;

  /// Information about the regular gift
  @JsonKey(name: 'gift')
  Object get gift;

  /// Optional. Unique identifier of the gift for the bot;
  /// for gifts received on behalf of business accounts only
  @JsonKey(name: 'owned_gift_id')
  String? get ownedGiftId;

  /// Optional. Sender of the gift if it is a known user
  @JsonKey(name: 'sender_user')
  User? get senderUser;

  /// Date the gift was sent in Unix time
  @JsonKey(name: 'send_date')
  int get sendDate;

  /// Optional. True, if the gift is displayed on the account's profile page;
  /// for gifts received on behalf of business accounts only
  @JsonKey(name: 'is_saved')
  bool? get isSaved;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OwnedGiftCopyWith<OwnedGift> get copyWith =>
      _$OwnedGiftCopyWithImpl<OwnedGift>(this as OwnedGift, _$identity);

  /// Serializes this OwnedGift to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'OwnedGift(type: $type, gift: $gift, ownedGiftId: $ownedGiftId, senderUser: $senderUser, sendDate: $sendDate, isSaved: $isSaved)';
  }
}

/// @nodoc
abstract mixin class $OwnedGiftCopyWith<$Res> {
  factory $OwnedGiftCopyWith(OwnedGift value, $Res Function(OwnedGift) _then) =
      _$OwnedGiftCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'type') OwnedGiftType type,
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
    @JsonKey(name: 'sender_user') User? senderUser,
    @JsonKey(name: 'send_date') int sendDate,
    @JsonKey(name: 'is_saved') bool? isSaved,
  });

  $UserCopyWith<$Res>? get senderUser;
}

/// @nodoc
class _$OwnedGiftCopyWithImpl<$Res> implements $OwnedGiftCopyWith<$Res> {
  _$OwnedGiftCopyWithImpl(this._self, this._then);

  final OwnedGift _self;
  final $Res Function(OwnedGift) _then;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? ownedGiftId = freezed,
    Object? senderUser = freezed,
    Object? sendDate = null,
    Object? isSaved = freezed,
  }) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as OwnedGiftType,
        ownedGiftId: freezed == ownedGiftId
            ? _self.ownedGiftId
            : ownedGiftId // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderUser: freezed == senderUser
            ? _self.senderUser
            : senderUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        sendDate: null == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int,
        isSaved: freezed == isSaved
            ? _self.isSaved
            : isSaved // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get senderUser {
    if (_self.senderUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.senderUser!, (value) {
      return _then(_self.copyWith(senderUser: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OwnedGift].
extension OwnedGiftPatterns on OwnedGift {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OwnedGiftRegular value)? regular,
    TResult Function(OwnedGiftUnique value)? unique,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OwnedGiftRegular() when regular != null:
        return regular(_that);
      case OwnedGiftUnique() when unique != null:
        return unique(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(OwnedGiftRegular value) regular,
    required TResult Function(OwnedGiftUnique value) unique,
  }) {
    final _that = this;
    switch (_that) {
      case OwnedGiftRegular():
        return regular(_that);
      case OwnedGiftUnique():
        return unique(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OwnedGiftRegular value)? regular,
    TResult? Function(OwnedGiftUnique value)? unique,
  }) {
    final _that = this;
    switch (_that) {
      case OwnedGiftRegular() when regular != null:
        return regular(_that);
      case OwnedGiftUnique() when unique != null:
        return unique(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OwnedGiftRegular implements OwnedGift {
  const OwnedGiftRegular({
    @JsonKey(name: 'type') this.type = OwnedGiftType.regular,
    @JsonKey(name: 'gift') required this.gift,
    @JsonKey(name: 'owned_gift_id') this.ownedGiftId,
    @JsonKey(name: 'sender_user') this.senderUser,
    @JsonKey(name: 'send_date') required this.sendDate,
    @JsonKey(name: 'text') this.text,
    @JsonKey(name: 'entities') final List<MessageEntity>? entities,
    @JsonKey(name: 'is_private') this.isPrivate,
    @JsonKey(name: 'is_saved') this.isSaved,
    @JsonKey(name: 'can_be_upgraded') this.canBeUpgraded,
    @JsonKey(name: 'was_refunded') this.wasRefunded,
    @JsonKey(name: 'convert_star_count') this.convertStarCount,
    @JsonKey(name: 'prepaid_upgrade_star_count') this.prepaidUpgradeStarCount,
    @JsonKey(name: 'is_upgrade_separate') this.isUpgradeSeparate,
  }) : _entities = entities;
  factory OwnedGiftRegular.fromJson(Map<String, dynamic> json) =>
      _$OwnedGiftRegularFromJson(json);

  /// Type of the gift, always "regular"
  @override
  @JsonKey(name: 'type')
  final OwnedGiftType type;

  /// Information about the regular gift
  @override
  @JsonKey(name: 'gift')
  final Gift gift;

  /// Optional. Unique identifier of the gift for the bot;
  /// for gifts received on behalf of business accounts only
  @override
  @JsonKey(name: 'owned_gift_id')
  final String? ownedGiftId;

  /// Optional. Sender of the gift if it is a known user
  @override
  @JsonKey(name: 'sender_user')
  final User? senderUser;

  /// Date the gift was sent in Unix time
  @override
  @JsonKey(name: 'send_date')
  final int sendDate;

  /// Optional. Text of the message that was added to the gift
  @JsonKey(name: 'text')
  final String? text;

  /// Optional. Special entities that appear in the text
  final List<MessageEntity>? _entities;

  /// Optional. Special entities that appear in the text
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. True, if the sender and gift text are shown only to the gift receiver;
  /// otherwise, everyone will be able to see them
  @JsonKey(name: 'is_private')
  final bool? isPrivate;

  /// Optional. True, if the gift is displayed on the account's profile page;
  /// for gifts received on behalf of business accounts only
  @override
  @JsonKey(name: 'is_saved')
  final bool? isSaved;

  /// Optional. True, if the gift can be upgraded to a unique gift;
  /// for gifts received on behalf of business accounts only
  @JsonKey(name: 'can_be_upgraded')
  final bool? canBeUpgraded;

  /// Optional. True, if the gift was refunded and isn't available anymore
  @JsonKey(name: 'was_refunded')
  final bool? wasRefunded;

  /// Optional. Number of Telegram Stars that can be claimed by the receiver
  /// instead of the gift; omitted if the gift cannot be converted to Telegram Stars
  @JsonKey(name: 'convert_star_count')
  final int? convertStarCount;

  /// Optional. Number of Telegram Stars that were paid by the sender for
  /// the ability to upgrade the gift
  @JsonKey(name: 'prepaid_upgrade_star_count')
  final int? prepaidUpgradeStarCount;

  /// Optional. True, if the gift's upgrade was purchased after the gift was sent
  @JsonKey(name: 'is_upgrade_separate')
  final bool? isUpgradeSeparate;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OwnedGiftRegularCopyWith<OwnedGiftRegular> get copyWith =>
      _$OwnedGiftRegularCopyWithImpl<OwnedGiftRegular>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OwnedGiftRegularToJson(this);
  }

  @override
  String toString() {
    return 'OwnedGift.regular(type: $type, gift: $gift, ownedGiftId: $ownedGiftId, senderUser: $senderUser, sendDate: $sendDate, text: $text, entities: $entities, isPrivate: $isPrivate, isSaved: $isSaved, canBeUpgraded: $canBeUpgraded, wasRefunded: $wasRefunded, convertStarCount: $convertStarCount, prepaidUpgradeStarCount: $prepaidUpgradeStarCount, isUpgradeSeparate: $isUpgradeSeparate)';
  }
}

/// @nodoc
abstract mixin class $OwnedGiftRegularCopyWith<$Res>
    implements $OwnedGiftCopyWith<$Res> {
  factory $OwnedGiftRegularCopyWith(
    OwnedGiftRegular value,
    $Res Function(OwnedGiftRegular) _then,
  ) = _$OwnedGiftRegularCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') OwnedGiftType type,
    @JsonKey(name: 'gift') Gift gift,
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
    @JsonKey(name: 'sender_user') User? senderUser,
    @JsonKey(name: 'send_date') int sendDate,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'entities') List<MessageEntity>? entities,
    @JsonKey(name: 'is_private') bool? isPrivate,
    @JsonKey(name: 'is_saved') bool? isSaved,
    @JsonKey(name: 'can_be_upgraded') bool? canBeUpgraded,
    @JsonKey(name: 'was_refunded') bool? wasRefunded,
    @JsonKey(name: 'convert_star_count') int? convertStarCount,
    @JsonKey(name: 'prepaid_upgrade_star_count') int? prepaidUpgradeStarCount,
    @JsonKey(name: 'is_upgrade_separate') bool? isUpgradeSeparate,
  });

  $GiftCopyWith<$Res> get gift;
  @override
  $UserCopyWith<$Res>? get senderUser;
}

/// @nodoc
class _$OwnedGiftRegularCopyWithImpl<$Res>
    implements $OwnedGiftRegularCopyWith<$Res> {
  _$OwnedGiftRegularCopyWithImpl(this._self, this._then);

  final OwnedGiftRegular _self;
  final $Res Function(OwnedGiftRegular) _then;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? gift = null,
    Object? ownedGiftId = freezed,
    Object? senderUser = freezed,
    Object? sendDate = null,
    Object? text = freezed,
    Object? entities = freezed,
    Object? isPrivate = freezed,
    Object? isSaved = freezed,
    Object? canBeUpgraded = freezed,
    Object? wasRefunded = freezed,
    Object? convertStarCount = freezed,
    Object? prepaidUpgradeStarCount = freezed,
    Object? isUpgradeSeparate = freezed,
  }) {
    return _then(
      OwnedGiftRegular(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as OwnedGiftType,
        gift: null == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as Gift,
        ownedGiftId: freezed == ownedGiftId
            ? _self.ownedGiftId
            : ownedGiftId // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderUser: freezed == senderUser
            ? _self.senderUser
            : senderUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        sendDate: null == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int,
        text: freezed == text
            ? _self.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
        entities: freezed == entities
            ? _self._entities
            : entities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        isPrivate: freezed == isPrivate
            ? _self.isPrivate
            : isPrivate // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isSaved: freezed == isSaved
            ? _self.isSaved
            : isSaved // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canBeUpgraded: freezed == canBeUpgraded
            ? _self.canBeUpgraded
            : canBeUpgraded // ignore: cast_nullable_to_non_nullable
                  as bool?,
        wasRefunded: freezed == wasRefunded
            ? _self.wasRefunded
            : wasRefunded // ignore: cast_nullable_to_non_nullable
                  as bool?,
        convertStarCount: freezed == convertStarCount
            ? _self.convertStarCount
            : convertStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        prepaidUpgradeStarCount: freezed == prepaidUpgradeStarCount
            ? _self.prepaidUpgradeStarCount
            : prepaidUpgradeStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        isUpgradeSeparate: freezed == isUpgradeSeparate
            ? _self.isUpgradeSeparate
            : isUpgradeSeparate // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res> get gift {
    return $GiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get senderUser {
    if (_self.senderUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.senderUser!, (value) {
      return _then(_self.copyWith(senderUser: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class OwnedGiftUnique implements OwnedGift {
  const OwnedGiftUnique({
    @JsonKey(name: 'type') this.type = OwnedGiftType.unique,
    @JsonKey(name: 'gift') required this.gift,
    @JsonKey(name: 'owned_gift_id') this.ownedGiftId,
    @JsonKey(name: 'sender_user') this.senderUser,
    @JsonKey(name: 'send_date') required this.sendDate,
    @JsonKey(name: 'is_saved') this.isSaved,
    @JsonKey(name: 'can_be_transferred') this.canBeTransferred,
    @JsonKey(name: 'transfer_star_count') this.transferStarCount,
    @JsonKey(name: 'next_transfer_date') this.nextTransferDate,
  });
  factory OwnedGiftUnique.fromJson(Map<String, dynamic> json) =>
      _$OwnedGiftUniqueFromJson(json);

  /// Type of the gift, always "unique"
  @override
  @JsonKey(name: 'type')
  final OwnedGiftType type;

  /// Information about the unique gift
  @override
  @JsonKey(name: 'gift')
  final UniqueGift gift;

  /// Optional. Unique identifier of the received gift for the bot;
  /// for gifts received on behalf of business accounts only
  @override
  @JsonKey(name: 'owned_gift_id')
  final String? ownedGiftId;

  /// Optional. Sender of the gift if it is a known user
  @override
  @JsonKey(name: 'sender_user')
  final User? senderUser;

  /// Date the gift was sent in Unix time
  @override
  @JsonKey(name: 'send_date')
  final int sendDate;

  /// Optional. True, if the gift is displayed on the account's profile page;
  /// for gifts received on behalf of business accounts only
  @override
  @JsonKey(name: 'is_saved')
  final bool? isSaved;

  /// Optional. True, if the gift can be transferred to another owner;
  /// for gifts received on behalf of business accounts only
  @JsonKey(name: 'can_be_transferred')
  final bool? canBeTransferred;

  /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
  /// omitted if the bot cannot transfer the gift
  @JsonKey(name: 'transfer_star_count')
  final int? transferStarCount;

  /// Optional. Point in time (Unix timestamp) when the gift can be transferred.
  /// If it is in the past, then the gift can be transferred now
  @JsonKey(name: 'next_transfer_date')
  final int? nextTransferDate;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OwnedGiftUniqueCopyWith<OwnedGiftUnique> get copyWith =>
      _$OwnedGiftUniqueCopyWithImpl<OwnedGiftUnique>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OwnedGiftUniqueToJson(this);
  }

  @override
  String toString() {
    return 'OwnedGift.unique(type: $type, gift: $gift, ownedGiftId: $ownedGiftId, senderUser: $senderUser, sendDate: $sendDate, isSaved: $isSaved, canBeTransferred: $canBeTransferred, transferStarCount: $transferStarCount, nextTransferDate: $nextTransferDate)';
  }
}

/// @nodoc
abstract mixin class $OwnedGiftUniqueCopyWith<$Res>
    implements $OwnedGiftCopyWith<$Res> {
  factory $OwnedGiftUniqueCopyWith(
    OwnedGiftUnique value,
    $Res Function(OwnedGiftUnique) _then,
  ) = _$OwnedGiftUniqueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') OwnedGiftType type,
    @JsonKey(name: 'gift') UniqueGift gift,
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
    @JsonKey(name: 'sender_user') User? senderUser,
    @JsonKey(name: 'send_date') int sendDate,
    @JsonKey(name: 'is_saved') bool? isSaved,
    @JsonKey(name: 'can_be_transferred') bool? canBeTransferred,
    @JsonKey(name: 'transfer_star_count') int? transferStarCount,
    @JsonKey(name: 'next_transfer_date') int? nextTransferDate,
  });

  $UniqueGiftCopyWith<$Res> get gift;
  @override
  $UserCopyWith<$Res>? get senderUser;
}

/// @nodoc
class _$OwnedGiftUniqueCopyWithImpl<$Res>
    implements $OwnedGiftUniqueCopyWith<$Res> {
  _$OwnedGiftUniqueCopyWithImpl(this._self, this._then);

  final OwnedGiftUnique _self;
  final $Res Function(OwnedGiftUnique) _then;

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? gift = null,
    Object? ownedGiftId = freezed,
    Object? senderUser = freezed,
    Object? sendDate = null,
    Object? isSaved = freezed,
    Object? canBeTransferred = freezed,
    Object? transferStarCount = freezed,
    Object? nextTransferDate = freezed,
  }) {
    return _then(
      OwnedGiftUnique(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as OwnedGiftType,
        gift: null == gift
            ? _self.gift
            : gift // ignore: cast_nullable_to_non_nullable
                  as UniqueGift,
        ownedGiftId: freezed == ownedGiftId
            ? _self.ownedGiftId
            : ownedGiftId // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderUser: freezed == senderUser
            ? _self.senderUser
            : senderUser // ignore: cast_nullable_to_non_nullable
                  as User?,
        sendDate: null == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int,
        isSaved: freezed == isSaved
            ? _self.isSaved
            : isSaved // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canBeTransferred: freezed == canBeTransferred
            ? _self.canBeTransferred
            : canBeTransferred // ignore: cast_nullable_to_non_nullable
                  as bool?,
        transferStarCount: freezed == transferStarCount
            ? _self.transferStarCount
            : transferStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        nextTransferDate: freezed == nextTransferDate
            ? _self.nextTransferDate
            : nextTransferDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<$Res> get gift {
    return $UniqueGiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }

  /// Create a copy of OwnedGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get senderUser {
    if (_self.senderUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.senderUser!, (value) {
      return _then(_self.copyWith(senderUser: value));
    });
  }
}
