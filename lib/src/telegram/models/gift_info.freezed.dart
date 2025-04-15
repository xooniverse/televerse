// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GiftInfo {
  /// Information about the gift
  @JsonKey(name: 'gift')
  Gift get gift;

  /// Optional. Unique identifier of the received gift for the bot; only present
  /// for gifts received on behalf of business accounts
  @JsonKey(name: 'owned_gift_id')
  String? get ownedGiftId;

  /// Optional. Number of Telegram Stars that can be claimed by the receiver by
  /// converting the gift; omitted if conversion to Telegram Stars is impossible
  @JsonKey(name: 'convert_star_count')
  int? get convertStarCount;

  /// Optional. Number of Telegram Stars that were prepaid by the sender for
  /// the ability to upgrade the gift
  @JsonKey(name: 'prepaid_upgrade_star_count')
  int? get prepaidUpgradeStarCount;

  /// Optional. True, if the gift can be upgraded to a unique gift
  @JsonKey(name: 'can_be_upgraded')
  bool? get canBeUpgraded;

  /// Optional. Text of the message that was added to the gift
  @JsonKey(name: 'text')
  String? get text;

  /// Optional. Special entities that appear in the text
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities;

  /// Optional. True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  @JsonKey(name: 'is_private')
  bool? get isPrivate;

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiftInfoCopyWith<GiftInfo> get copyWith =>
      _$GiftInfoCopyWithImpl<GiftInfo>(this as GiftInfo, _$identity);

  /// Serializes this GiftInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GiftInfo(gift: $gift, ownedGiftId: $ownedGiftId, convertStarCount: $convertStarCount, prepaidUpgradeStarCount: $prepaidUpgradeStarCount, canBeUpgraded: $canBeUpgraded, text: $text, entities: $entities, isPrivate: $isPrivate)';
  }
}

/// @nodoc
abstract mixin class $GiftInfoCopyWith<$Res> {
  factory $GiftInfoCopyWith(GiftInfo value, $Res Function(GiftInfo) _then) =
      _$GiftInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'gift') Gift gift,
      @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
      @JsonKey(name: 'convert_star_count') int? convertStarCount,
      @JsonKey(name: 'prepaid_upgrade_star_count') int? prepaidUpgradeStarCount,
      @JsonKey(name: 'can_be_upgraded') bool? canBeUpgraded,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'is_private') bool? isPrivate});

  $GiftCopyWith<$Res> get gift;
}

/// @nodoc
class _$GiftInfoCopyWithImpl<$Res> implements $GiftInfoCopyWith<$Res> {
  _$GiftInfoCopyWithImpl(this._self, this._then);

  final GiftInfo _self;
  final $Res Function(GiftInfo) _then;

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gift = null,
    Object? ownedGiftId = freezed,
    Object? convertStarCount = freezed,
    Object? prepaidUpgradeStarCount = freezed,
    Object? canBeUpgraded = freezed,
    Object? text = freezed,
    Object? entities = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_self.copyWith(
      gift: null == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift,
      ownedGiftId: freezed == ownedGiftId
          ? _self.ownedGiftId
          : ownedGiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertStarCount: freezed == convertStarCount
          ? _self.convertStarCount
          : convertStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prepaidUpgradeStarCount: freezed == prepaidUpgradeStarCount
          ? _self.prepaidUpgradeStarCount
          : prepaidUpgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canBeUpgraded: freezed == canBeUpgraded
          ? _self.canBeUpgraded
          : canBeUpgraded // ignore: cast_nullable_to_non_nullable
              as bool?,
      text: freezed == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      entities: freezed == entities
          ? _self.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      isPrivate: freezed == isPrivate
          ? _self.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res> get gift {
    return $GiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GiftInfo implements GiftInfo {
  const _GiftInfo(
      {@JsonKey(name: 'gift') required this.gift,
      @JsonKey(name: 'owned_gift_id') this.ownedGiftId,
      @JsonKey(name: 'convert_star_count') this.convertStarCount,
      @JsonKey(name: 'prepaid_upgrade_star_count') this.prepaidUpgradeStarCount,
      @JsonKey(name: 'can_be_upgraded') this.canBeUpgraded,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'entities') final List<MessageEntity>? entities,
      @JsonKey(name: 'is_private') this.isPrivate})
      : _entities = entities;
  factory _GiftInfo.fromJson(Map<String, dynamic> json) =>
      _$GiftInfoFromJson(json);

  /// Information about the gift
  @override
  @JsonKey(name: 'gift')
  final Gift gift;

  /// Optional. Unique identifier of the received gift for the bot; only present
  /// for gifts received on behalf of business accounts
  @override
  @JsonKey(name: 'owned_gift_id')
  final String? ownedGiftId;

  /// Optional. Number of Telegram Stars that can be claimed by the receiver by
  /// converting the gift; omitted if conversion to Telegram Stars is impossible
  @override
  @JsonKey(name: 'convert_star_count')
  final int? convertStarCount;

  /// Optional. Number of Telegram Stars that were prepaid by the sender for
  /// the ability to upgrade the gift
  @override
  @JsonKey(name: 'prepaid_upgrade_star_count')
  final int? prepaidUpgradeStarCount;

  /// Optional. True, if the gift can be upgraded to a unique gift
  @override
  @JsonKey(name: 'can_be_upgraded')
  final bool? canBeUpgraded;

  /// Optional. Text of the message that was added to the gift
  @override
  @JsonKey(name: 'text')
  final String? text;

  /// Optional. Special entities that appear in the text
  final List<MessageEntity>? _entities;

  /// Optional. Special entities that appear in the text
  @override
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  @override
  @JsonKey(name: 'is_private')
  final bool? isPrivate;

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiftInfoCopyWith<_GiftInfo> get copyWith =>
      __$GiftInfoCopyWithImpl<_GiftInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiftInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'GiftInfo(gift: $gift, ownedGiftId: $ownedGiftId, convertStarCount: $convertStarCount, prepaidUpgradeStarCount: $prepaidUpgradeStarCount, canBeUpgraded: $canBeUpgraded, text: $text, entities: $entities, isPrivate: $isPrivate)';
  }
}

/// @nodoc
abstract mixin class _$GiftInfoCopyWith<$Res>
    implements $GiftInfoCopyWith<$Res> {
  factory _$GiftInfoCopyWith(_GiftInfo value, $Res Function(_GiftInfo) _then) =
      __$GiftInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gift') Gift gift,
      @JsonKey(name: 'owned_gift_id') String? ownedGiftId,
      @JsonKey(name: 'convert_star_count') int? convertStarCount,
      @JsonKey(name: 'prepaid_upgrade_star_count') int? prepaidUpgradeStarCount,
      @JsonKey(name: 'can_be_upgraded') bool? canBeUpgraded,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'entities') List<MessageEntity>? entities,
      @JsonKey(name: 'is_private') bool? isPrivate});

  @override
  $GiftCopyWith<$Res> get gift;
}

/// @nodoc
class __$GiftInfoCopyWithImpl<$Res> implements _$GiftInfoCopyWith<$Res> {
  __$GiftInfoCopyWithImpl(this._self, this._then);

  final _GiftInfo _self;
  final $Res Function(_GiftInfo) _then;

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gift = null,
    Object? ownedGiftId = freezed,
    Object? convertStarCount = freezed,
    Object? prepaidUpgradeStarCount = freezed,
    Object? canBeUpgraded = freezed,
    Object? text = freezed,
    Object? entities = freezed,
    Object? isPrivate = freezed,
  }) {
    return _then(_GiftInfo(
      gift: null == gift
          ? _self.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as Gift,
      ownedGiftId: freezed == ownedGiftId
          ? _self.ownedGiftId
          : ownedGiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      convertStarCount: freezed == convertStarCount
          ? _self.convertStarCount
          : convertStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      prepaidUpgradeStarCount: freezed == prepaidUpgradeStarCount
          ? _self.prepaidUpgradeStarCount
          : prepaidUpgradeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canBeUpgraded: freezed == canBeUpgraded
          ? _self.canBeUpgraded
          : canBeUpgraded // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ));
  }

  /// Create a copy of GiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiftCopyWith<$Res> get gift {
    return $GiftCopyWith<$Res>(_self.gift, (value) {
      return _then(_self.copyWith(gift: value));
    });
  }
}
