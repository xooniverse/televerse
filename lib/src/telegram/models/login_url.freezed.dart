// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginURL {
  /// An HTTP URL to be opened with user authorization data added to the query
  /// string when the button is pressed. If the user refuses to provide
  /// authorization data, the original URL without information about the user
  /// will be opened. The data added is the same as described in Receiving
  /// authorization data.
  ///
  /// NOTE: You must always check the hash of the received data to verify the
  /// authentication and the integrity of the data as described in Checking
  /// authorization.
  @JsonKey(name: 'url')
  String get url;

  /// Optional. New text of the button in forwarded messages.
  @JsonKey(name: 'forward_text')
  String? get forwardText;

  /// Optional. Username of a bot, which will be used for user authorization.
  /// See Setting up a bot for more details. If not specified, the current
  /// bot's username will be assumed. The url's domain must be the same as the
  /// domain linked with the bot. See Linking your domain to the bot for more
  /// details.
  @JsonKey(name: 'bot_username')
  String? get botUsername;

  /// Optional. Pass True to request the permission for your bot to send
  /// messages to the user.
  @JsonKey(name: 'request_write_access')
  bool? get requestWriteAccess;

  /// Create a copy of LoginURL
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginURLCopyWith<LoginURL> get copyWith =>
      _$LoginURLCopyWithImpl<LoginURL>(this as LoginURL, _$identity);

  /// Serializes this LoginURL to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'LoginURL(url: $url, forwardText: $forwardText, botUsername: $botUsername, requestWriteAccess: $requestWriteAccess)';
  }
}

/// @nodoc
abstract mixin class $LoginURLCopyWith<$Res> {
  factory $LoginURLCopyWith(LoginURL value, $Res Function(LoginURL) _then) =
      _$LoginURLCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'url') String url,
    @JsonKey(name: 'forward_text') String? forwardText,
    @JsonKey(name: 'bot_username') String? botUsername,
    @JsonKey(name: 'request_write_access') bool? requestWriteAccess,
  });
}

/// @nodoc
class _$LoginURLCopyWithImpl<$Res> implements $LoginURLCopyWith<$Res> {
  _$LoginURLCopyWithImpl(this._self, this._then);

  final LoginURL _self;
  final $Res Function(LoginURL) _then;

  /// Create a copy of LoginURL
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? forwardText = freezed,
    Object? botUsername = freezed,
    Object? requestWriteAccess = freezed,
  }) {
    return _then(
      _self.copyWith(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        forwardText: freezed == forwardText
            ? _self.forwardText
            : forwardText // ignore: cast_nullable_to_non_nullable
                  as String?,
        botUsername: freezed == botUsername
            ? _self.botUsername
            : botUsername // ignore: cast_nullable_to_non_nullable
                  as String?,
        requestWriteAccess: freezed == requestWriteAccess
            ? _self.requestWriteAccess
            : requestWriteAccess // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [LoginURL].
extension LoginURLPatterns on LoginURL {
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
    TResult Function(_LoginURL value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginURL() when $default != null:
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
    TResult Function(_LoginURL value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginURL():
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
    TResult? Function(_LoginURL value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginURL() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginURL implements LoginURL {
  const _LoginURL({
    @JsonKey(name: 'url') required this.url,
    @JsonKey(name: 'forward_text') this.forwardText,
    @JsonKey(name: 'bot_username') this.botUsername,
    @JsonKey(name: 'request_write_access') this.requestWriteAccess,
  });
  factory _LoginURL.fromJson(Map<String, dynamic> json) =>
      _$LoginURLFromJson(json);

  /// An HTTP URL to be opened with user authorization data added to the query
  /// string when the button is pressed. If the user refuses to provide
  /// authorization data, the original URL without information about the user
  /// will be opened. The data added is the same as described in Receiving
  /// authorization data.
  ///
  /// NOTE: You must always check the hash of the received data to verify the
  /// authentication and the integrity of the data as described in Checking
  /// authorization.
  @override
  @JsonKey(name: 'url')
  final String url;

  /// Optional. New text of the button in forwarded messages.
  @override
  @JsonKey(name: 'forward_text')
  final String? forwardText;

  /// Optional. Username of a bot, which will be used for user authorization.
  /// See Setting up a bot for more details. If not specified, the current
  /// bot's username will be assumed. The url's domain must be the same as the
  /// domain linked with the bot. See Linking your domain to the bot for more
  /// details.
  @override
  @JsonKey(name: 'bot_username')
  final String? botUsername;

  /// Optional. Pass True to request the permission for your bot to send
  /// messages to the user.
  @override
  @JsonKey(name: 'request_write_access')
  final bool? requestWriteAccess;

  /// Create a copy of LoginURL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginURLCopyWith<_LoginURL> get copyWith =>
      __$LoginURLCopyWithImpl<_LoginURL>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginURLToJson(this);
  }

  @override
  String toString() {
    return 'LoginURL(url: $url, forwardText: $forwardText, botUsername: $botUsername, requestWriteAccess: $requestWriteAccess)';
  }
}

/// @nodoc
abstract mixin class _$LoginURLCopyWith<$Res>
    implements $LoginURLCopyWith<$Res> {
  factory _$LoginURLCopyWith(_LoginURL value, $Res Function(_LoginURL) _then) =
      __$LoginURLCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'url') String url,
    @JsonKey(name: 'forward_text') String? forwardText,
    @JsonKey(name: 'bot_username') String? botUsername,
    @JsonKey(name: 'request_write_access') bool? requestWriteAccess,
  });
}

/// @nodoc
class __$LoginURLCopyWithImpl<$Res> implements _$LoginURLCopyWith<$Res> {
  __$LoginURLCopyWithImpl(this._self, this._then);

  final _LoginURL _self;
  final $Res Function(_LoginURL) _then;

  /// Create a copy of LoginURL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? forwardText = freezed,
    Object? botUsername = freezed,
    Object? requestWriteAccess = freezed,
  }) {
    return _then(
      _LoginURL(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        forwardText: freezed == forwardText
            ? _self.forwardText
            : forwardText // ignore: cast_nullable_to_non_nullable
                  as String?,
        botUsername: freezed == botUsername
            ? _self.botUsername
            : botUsername // ignore: cast_nullable_to_non_nullable
                  as String?,
        requestWriteAccess: freezed == requestWriteAccess
            ? _self.requestWriteAccess
            : requestWriteAccess // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
