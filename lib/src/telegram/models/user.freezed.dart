// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  /// Unique identifier for this user or bot. This number may have more than
  /// 32 significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so a 64-bit integer or double-precision float type are
  /// safe for storing this identifier.
  @JsonKey(name: 'id')
  int get id;

  /// True, if this user is a bot
  @JsonKey(name: 'is_bot')
  bool get isBot;

  /// User's or bot's first name
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. User's or bot's last name
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. User's or bot's username
  @JsonKey(name: 'username')
  String? get username;

  /// Optional. IETF language tag of the user's language
  @JsonKey(name: 'language_code')
  String? get languageCode;

  /// Optional. True, if this user is a Telegram Premium user
  @JsonKey(name: 'is_premium')
  bool? get isPremium;

  /// Optional. True, if this user added the bot to the attachment menu
  @JsonKey(name: 'added_to_attachment_menu')
  bool? get addedToAttachmentMenu;

  /// Optional. True, if the bot can be invited to groups. Returned only in
  /// getMe.
  @JsonKey(name: 'can_join_groups')
  bool? get canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only
  /// in getMe.
  @JsonKey(name: 'can_read_all_group_messages')
  bool? get canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in
  /// getMe.
  @JsonKey(name: 'supports_inline_queries')
  bool? get supportsInlineQueries;

  /// Optional. True, if the bot can be connected to a Telegram Business
  /// account to receive its messages. Returned only in getMe.
  @JsonKey(name: 'can_connect_to_business')
  bool? get canConnectToBusiness;

  /// Optional. True, if the bot has a main Web App. Returned only in getMe.
  @JsonKey(name: 'has_main_web_app')
  bool? get hasMainWebApp;

  /// Optional. True, if forum topic mode is enabled for the bot in private
  /// chats.
  @JsonKey(name: 'has_topics_enabled')
  bool? get hasTopicsEnabled;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'User(id: $id, isBot: $isBot, firstName: $firstName, lastName: $lastName, username: $username, languageCode: $languageCode, isPremium: $isPremium, addedToAttachmentMenu: $addedToAttachmentMenu, canJoinGroups: $canJoinGroups, canReadAllGroupMessages: $canReadAllGroupMessages, supportsInlineQueries: $supportsInlineQueries, canConnectToBusiness: $canConnectToBusiness, hasMainWebApp: $hasMainWebApp, hasTopicsEnabled: $hasTopicsEnabled)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'is_bot') bool isBot,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'language_code') String? languageCode,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'added_to_attachment_menu') bool? addedToAttachmentMenu,
    @JsonKey(name: 'can_join_groups') bool? canJoinGroups,
    @JsonKey(name: 'can_read_all_group_messages') bool? canReadAllGroupMessages,
    @JsonKey(name: 'supports_inline_queries') bool? supportsInlineQueries,
    @JsonKey(name: 'can_connect_to_business') bool? canConnectToBusiness,
    @JsonKey(name: 'has_main_web_app') bool? hasMainWebApp,
    @JsonKey(name: 'has_topics_enabled') bool? hasTopicsEnabled,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

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
    Object? hasTopicsEnabled = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        isBot: null == isBot
            ? _self.isBot
            : isBot // ignore: cast_nullable_to_non_nullable
                  as bool,
        firstName: null == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        username: freezed == username
            ? _self.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        languageCode: freezed == languageCode
            ? _self.languageCode
            : languageCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPremium: freezed == isPremium
            ? _self.isPremium
            : isPremium // ignore: cast_nullable_to_non_nullable
                  as bool?,
        addedToAttachmentMenu: freezed == addedToAttachmentMenu
            ? _self.addedToAttachmentMenu
            : addedToAttachmentMenu // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canJoinGroups: freezed == canJoinGroups
            ? _self.canJoinGroups
            : canJoinGroups // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canReadAllGroupMessages: freezed == canReadAllGroupMessages
            ? _self.canReadAllGroupMessages
            : canReadAllGroupMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        supportsInlineQueries: freezed == supportsInlineQueries
            ? _self.supportsInlineQueries
            : supportsInlineQueries // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canConnectToBusiness: freezed == canConnectToBusiness
            ? _self.canConnectToBusiness
            : canConnectToBusiness // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasMainWebApp: freezed == hasMainWebApp
            ? _self.hasMainWebApp
            : hasMainWebApp // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasTopicsEnabled: freezed == hasTopicsEnabled
            ? _self.hasTopicsEnabled
            : hasTopicsEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
  TResult map<TResult extends Object?>(TResult Function(_User value) $default) {
    final _that = this;
    switch (_that) {
      case _User():
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
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'is_bot') required this.isBot,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') this.lastName,
    @JsonKey(name: 'username') this.username,
    @JsonKey(name: 'language_code') this.languageCode,
    @JsonKey(name: 'is_premium') this.isPremium,
    @JsonKey(name: 'added_to_attachment_menu') this.addedToAttachmentMenu,
    @JsonKey(name: 'can_join_groups') this.canJoinGroups,
    @JsonKey(name: 'can_read_all_group_messages') this.canReadAllGroupMessages,
    @JsonKey(name: 'supports_inline_queries') this.supportsInlineQueries,
    @JsonKey(name: 'can_connect_to_business') this.canConnectToBusiness,
    @JsonKey(name: 'has_main_web_app') this.hasMainWebApp,
    @JsonKey(name: 'has_topics_enabled') this.hasTopicsEnabled,
  });
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

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

  /// Optional. True, if forum topic mode is enabled for the bot in private
  /// chats.
  @override
  @JsonKey(name: 'has_topics_enabled')
  final bool? hasTopicsEnabled;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(this);
  }

  @override
  String toString() {
    return 'User(id: $id, isBot: $isBot, firstName: $firstName, lastName: $lastName, username: $username, languageCode: $languageCode, isPremium: $isPremium, addedToAttachmentMenu: $addedToAttachmentMenu, canJoinGroups: $canJoinGroups, canReadAllGroupMessages: $canReadAllGroupMessages, supportsInlineQueries: $supportsInlineQueries, canConnectToBusiness: $canConnectToBusiness, hasMainWebApp: $hasMainWebApp, hasTopicsEnabled: $hasTopicsEnabled)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'is_bot') bool isBot,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'language_code') String? languageCode,
    @JsonKey(name: 'is_premium') bool? isPremium,
    @JsonKey(name: 'added_to_attachment_menu') bool? addedToAttachmentMenu,
    @JsonKey(name: 'can_join_groups') bool? canJoinGroups,
    @JsonKey(name: 'can_read_all_group_messages') bool? canReadAllGroupMessages,
    @JsonKey(name: 'supports_inline_queries') bool? supportsInlineQueries,
    @JsonKey(name: 'can_connect_to_business') bool? canConnectToBusiness,
    @JsonKey(name: 'has_main_web_app') bool? hasMainWebApp,
    @JsonKey(name: 'has_topics_enabled') bool? hasTopicsEnabled,
  });
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? hasTopicsEnabled = freezed,
  }) {
    return _then(
      _User(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        isBot: null == isBot
            ? _self.isBot
            : isBot // ignore: cast_nullable_to_non_nullable
                  as bool,
        firstName: null == firstName
            ? _self.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: freezed == lastName
            ? _self.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        username: freezed == username
            ? _self.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        languageCode: freezed == languageCode
            ? _self.languageCode
            : languageCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPremium: freezed == isPremium
            ? _self.isPremium
            : isPremium // ignore: cast_nullable_to_non_nullable
                  as bool?,
        addedToAttachmentMenu: freezed == addedToAttachmentMenu
            ? _self.addedToAttachmentMenu
            : addedToAttachmentMenu // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canJoinGroups: freezed == canJoinGroups
            ? _self.canJoinGroups
            : canJoinGroups // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canReadAllGroupMessages: freezed == canReadAllGroupMessages
            ? _self.canReadAllGroupMessages
            : canReadAllGroupMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        supportsInlineQueries: freezed == supportsInlineQueries
            ? _self.supportsInlineQueries
            : supportsInlineQueries // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canConnectToBusiness: freezed == canConnectToBusiness
            ? _self.canConnectToBusiness
            : canConnectToBusiness // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasMainWebApp: freezed == hasMainWebApp
            ? _self.hasMainWebApp
            : hasMainWebApp // ignore: cast_nullable_to_non_nullable
                  as bool?,
        hasTopicsEnabled: freezed == hasTopicsEnabled
            ? _self.hasTopicsEnabled
            : hasTopicsEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
