// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  /// Unique identifier for this user or bot. This number may have more than
  /// 32 significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier.
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// True, if this user is a bot
  @JsonKey(name: 'is_bot')
  bool get isBot => throw _privateConstructorUsedError;

  /// User's or bot's first name
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;

  /// Optional. User's or bot's last name
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  /// Optional. User's or bot's username
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;

  /// Optional. IETF language tag of the user's language
  @JsonKey(name: 'language_code')
  String? get languageCode => throw _privateConstructorUsedError;

  /// Optional. True, if this user is a Telegram Premium user
  @JsonKey(name: 'is_premium')
  bool? get isPremium => throw _privateConstructorUsedError;

  /// Optional. True, if this user added the bot to the attachment menu
  @JsonKey(name: 'added_to_attachment_menu')
  bool? get addedToAttachmentMenu => throw _privateConstructorUsedError;

  /// Optional. True, if the bot can be invited to groups. Returned only in
  /// getMe.
  @JsonKey(name: 'can_join_groups')
  bool? get canJoinGroups => throw _privateConstructorUsedError;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only
  /// in getMe.
  @JsonKey(name: 'can_read_all_group_messages')
  bool? get canReadAllGroupMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the bot supports inline queries. Returned only in
  /// getMe.
  @JsonKey(name: 'supports_inline_queries')
  bool? get supportsInlineQueries => throw _privateConstructorUsedError;

  /// Optional. True, if the bot can be connected to a Telegram Business
  /// account to receive its messages. Returned only in getMe.
  @JsonKey(name: 'can_connect_to_business')
  bool? get canConnectToBusiness => throw _privateConstructorUsedError;

  /// Optional. True, if the bot has a main Web App. Returned only in getMe.
  @JsonKey(name: 'has_main_web_app')
  bool? get hasMainWebApp => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_bot') bool isBot,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'added_to_attachment_menu') bool? addedToAttachmentMenu,
      @JsonKey(name: 'can_join_groups') bool? canJoinGroups,
      @JsonKey(name: 'can_read_all_group_messages')
      bool? canReadAllGroupMessages,
      @JsonKey(name: 'supports_inline_queries') bool? supportsInlineQueries,
      @JsonKey(name: 'can_connect_to_business') bool? canConnectToBusiness,
      @JsonKey(name: 'has_main_web_app') bool? hasMainWebApp});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBot = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? languageCode = freezed,
    Object? isPremium = freezed,
    Object? addedToAttachmentMenu = freezed,
    Object? canJoinGroups = freezed,
    Object? canReadAllGroupMessages = freezed,
    Object? supportsInlineQueries = freezed,
    Object? canConnectToBusiness = freezed,
    Object? hasMainWebApp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBot: null == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedToAttachmentMenu: freezed == addedToAttachmentMenu
          ? _value.addedToAttachmentMenu
          : addedToAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      canJoinGroups: freezed == canJoinGroups
          ? _value.canJoinGroups
          : canJoinGroups // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReadAllGroupMessages: freezed == canReadAllGroupMessages
          ? _value.canReadAllGroupMessages
          : canReadAllGroupMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsInlineQueries: freezed == supportsInlineQueries
          ? _value.supportsInlineQueries
          : supportsInlineQueries // ignore: cast_nullable_to_non_nullable
              as bool?,
      canConnectToBusiness: freezed == canConnectToBusiness
          ? _value.canConnectToBusiness
          : canConnectToBusiness // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMainWebApp: freezed == hasMainWebApp
          ? _value.hasMainWebApp
          : hasMainWebApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'is_bot') bool isBot,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'is_premium') bool? isPremium,
      @JsonKey(name: 'added_to_attachment_menu') bool? addedToAttachmentMenu,
      @JsonKey(name: 'can_join_groups') bool? canJoinGroups,
      @JsonKey(name: 'can_read_all_group_messages')
      bool? canReadAllGroupMessages,
      @JsonKey(name: 'supports_inline_queries') bool? supportsInlineQueries,
      @JsonKey(name: 'can_connect_to_business') bool? canConnectToBusiness,
      @JsonKey(name: 'has_main_web_app') bool? hasMainWebApp});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isBot = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? languageCode = freezed,
    Object? isPremium = freezed,
    Object? addedToAttachmentMenu = freezed,
    Object? canJoinGroups = freezed,
    Object? canReadAllGroupMessages = freezed,
    Object? supportsInlineQueries = freezed,
    Object? canConnectToBusiness = freezed,
    Object? hasMainWebApp = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBot: null == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: freezed == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedToAttachmentMenu: freezed == addedToAttachmentMenu
          ? _value.addedToAttachmentMenu
          : addedToAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
      canJoinGroups: freezed == canJoinGroups
          ? _value.canJoinGroups
          : canJoinGroups // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReadAllGroupMessages: freezed == canReadAllGroupMessages
          ? _value.canReadAllGroupMessages
          : canReadAllGroupMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportsInlineQueries: freezed == supportsInlineQueries
          ? _value.supportsInlineQueries
          : supportsInlineQueries // ignore: cast_nullable_to_non_nullable
              as bool?,
      canConnectToBusiness: freezed == canConnectToBusiness
          ? _value.canConnectToBusiness
          : canConnectToBusiness // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMainWebApp: freezed == hasMainWebApp
          ? _value.hasMainWebApp
          : hasMainWebApp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_bot') required this.isBot,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'language_code') this.languageCode,
      @JsonKey(name: 'is_premium') this.isPremium,
      @JsonKey(name: 'added_to_attachment_menu') this.addedToAttachmentMenu,
      @JsonKey(name: 'can_join_groups') this.canJoinGroups,
      @JsonKey(name: 'can_read_all_group_messages')
      this.canReadAllGroupMessages,
      @JsonKey(name: 'supports_inline_queries') this.supportsInlineQueries,
      @JsonKey(name: 'can_connect_to_business') this.canConnectToBusiness,
      @JsonKey(name: 'has_main_web_app') this.hasMainWebApp});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  /// Unique identifier for this user or bot. This number may have more than
  /// 32 significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier.
  @override
  @JsonKey(name: 'id')
  final int id;

  /// True, if this user is a bot
  @override
  @JsonKey(name: 'is_bot')
  final bool isBot;

  /// User's or bot's first name
  @override
  @JsonKey(name: 'first_name')
  final String firstName;

  /// Optional. User's or bot's last name
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. User's or bot's username
  @override
  @JsonKey(name: 'username')
  final String? username;

  /// Optional. IETF language tag of the user's language
  @override
  @JsonKey(name: 'language_code')
  final String? languageCode;

  /// Optional. True, if this user is a Telegram Premium user
  @override
  @JsonKey(name: 'is_premium')
  final bool? isPremium;

  /// Optional. True, if this user added the bot to the attachment menu
  @override
  @JsonKey(name: 'added_to_attachment_menu')
  final bool? addedToAttachmentMenu;

  /// Optional. True, if the bot can be invited to groups. Returned only in
  /// getMe.
  @override
  @JsonKey(name: 'can_join_groups')
  final bool? canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only
  /// in getMe.
  @override
  @JsonKey(name: 'can_read_all_group_messages')
  final bool? canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in
  /// getMe.
  @override
  @JsonKey(name: 'supports_inline_queries')
  final bool? supportsInlineQueries;

  /// Optional. True, if the bot can be connected to a Telegram Business
  /// account to receive its messages. Returned only in getMe.
  @override
  @JsonKey(name: 'can_connect_to_business')
  final bool? canConnectToBusiness;

  /// Optional. True, if the bot has a main Web App. Returned only in getMe.
  @override
  @JsonKey(name: 'has_main_web_app')
  final bool? hasMainWebApp;

  @override
  String toString() {
    return 'User(id: $id, isBot: $isBot, firstName: $firstName, lastName: $lastName, username: $username, languageCode: $languageCode, isPremium: $isPremium, addedToAttachmentMenu: $addedToAttachmentMenu, canJoinGroups: $canJoinGroups, canReadAllGroupMessages: $canReadAllGroupMessages, supportsInlineQueries: $supportsInlineQueries, canConnectToBusiness: $canConnectToBusiness, hasMainWebApp: $hasMainWebApp)';
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'is_bot') required final bool isBot,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'language_code') final String? languageCode,
          @JsonKey(name: 'is_premium') final bool? isPremium,
          @JsonKey(name: 'added_to_attachment_menu')
          final bool? addedToAttachmentMenu,
          @JsonKey(name: 'can_join_groups') final bool? canJoinGroups,
          @JsonKey(name: 'can_read_all_group_messages')
          final bool? canReadAllGroupMessages,
          @JsonKey(name: 'supports_inline_queries')
          final bool? supportsInlineQueries,
          @JsonKey(name: 'can_connect_to_business')
          final bool? canConnectToBusiness,
          @JsonKey(name: 'has_main_web_app') final bool? hasMainWebApp}) =
      _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  /// Unique identifier for this user or bot. This number may have more than
  /// 32 significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier.
  @override
  @JsonKey(name: 'id')
  int get id;

  /// True, if this user is a bot
  @override
  @JsonKey(name: 'is_bot')
  bool get isBot;

  /// User's or bot's first name
  @override
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. User's or bot's last name
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. User's or bot's username
  @override
  @JsonKey(name: 'username')
  String? get username;

  /// Optional. IETF language tag of the user's language
  @override
  @JsonKey(name: 'language_code')
  String? get languageCode;

  /// Optional. True, if this user is a Telegram Premium user
  @override
  @JsonKey(name: 'is_premium')
  bool? get isPremium;

  /// Optional. True, if this user added the bot to the attachment menu
  @override
  @JsonKey(name: 'added_to_attachment_menu')
  bool? get addedToAttachmentMenu;

  /// Optional. True, if the bot can be invited to groups. Returned only in
  /// getMe.
  @override
  @JsonKey(name: 'can_join_groups')
  bool? get canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only
  /// in getMe.
  @override
  @JsonKey(name: 'can_read_all_group_messages')
  bool? get canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in
  /// getMe.
  @override
  @JsonKey(name: 'supports_inline_queries')
  bool? get supportsInlineQueries;

  /// Optional. True, if the bot can be connected to a Telegram Business
  /// account to receive its messages. Returned only in getMe.
  @override
  @JsonKey(name: 'can_connect_to_business')
  bool? get canConnectToBusiness;

  /// Optional. True, if the bot has a main Web App. Returned only in getMe.
  @override
  @JsonKey(name: 'has_main_web_app')
  bool? get hasMainWebApp;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
