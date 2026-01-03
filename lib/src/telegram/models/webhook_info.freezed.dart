// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebhookInfo {
  /// Webhook URL, may be empty if webhook is not set up
  @JsonKey(name: 'url')
  String get url;

  /// True, if a custom certificate was provided for webhook certificate
  /// checks
  @JsonKey(name: 'has_custom_certificate')
  bool get hasCustomCertificate;

  /// Number of updates awaiting delivery
  @JsonKey(name: 'pending_update_count')
  int get pendingUpdateCount;

  /// Optional. Currently used webhook IP address
  @JsonKey(name: 'ip_address')
  String? get ipAddress;

  /// Optional. Unix time for the most recent error that happened when trying
  /// to deliver an update via webhook
  @JsonKey(name: 'last_error_date')
  int? get lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent
  /// error that happened when trying to deliver an update via webhook
  @JsonKey(name: 'last_error_message')
  String? get lastErrorMessage;

  /// Optional. Unix time of the most recent error that happened when trying
  /// to synchronize available updates with Telegram datacenters
  @JsonKey(name: 'last_error_network_date')
  int? get lastErrorNetworkDate;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections
  /// to the webhook for update delivery
  @JsonKey(name: 'max_connections')
  int? get maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to
  /// all update types except chat_member
  @JsonKey(name: 'allowed_updates')
  List<String>? get allowedUpdates;

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebhookInfoCopyWith<WebhookInfo> get copyWith =>
      _$WebhookInfoCopyWithImpl<WebhookInfo>(this as WebhookInfo, _$identity);

  /// Serializes this WebhookInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WebhookInfo(url: $url, hasCustomCertificate: $hasCustomCertificate, pendingUpdateCount: $pendingUpdateCount, ipAddress: $ipAddress, lastErrorDate: $lastErrorDate, lastErrorMessage: $lastErrorMessage, lastErrorNetworkDate: $lastErrorNetworkDate, maxConnections: $maxConnections, allowedUpdates: $allowedUpdates)';
  }
}

/// @nodoc
abstract mixin class $WebhookInfoCopyWith<$Res> {
  factory $WebhookInfoCopyWith(
    WebhookInfo value,
    $Res Function(WebhookInfo) _then,
  ) = _$WebhookInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'url') String url,
    @JsonKey(name: 'has_custom_certificate') bool hasCustomCertificate,
    @JsonKey(name: 'pending_update_count') int pendingUpdateCount,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'last_error_date') int? lastErrorDate,
    @JsonKey(name: 'last_error_message') String? lastErrorMessage,
    @JsonKey(name: 'last_error_network_date') int? lastErrorNetworkDate,
    @JsonKey(name: 'max_connections') int? maxConnections,
    @JsonKey(name: 'allowed_updates') List<String>? allowedUpdates,
  });
}

/// @nodoc
class _$WebhookInfoCopyWithImpl<$Res> implements $WebhookInfoCopyWith<$Res> {
  _$WebhookInfoCopyWithImpl(this._self, this._then);

  final WebhookInfo _self;
  final $Res Function(WebhookInfo) _then;

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? hasCustomCertificate = null,
    Object? pendingUpdateCount = null,
    Object? ipAddress = freezed,
    Object? lastErrorDate = freezed,
    Object? lastErrorMessage = freezed,
    Object? lastErrorNetworkDate = freezed,
    Object? maxConnections = freezed,
    Object? allowedUpdates = freezed,
  }) {
    return _then(
      _self.copyWith(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        hasCustomCertificate: null == hasCustomCertificate
            ? _self.hasCustomCertificate
            : hasCustomCertificate // ignore: cast_nullable_to_non_nullable
                  as bool,
        pendingUpdateCount: null == pendingUpdateCount
            ? _self.pendingUpdateCount
            : pendingUpdateCount // ignore: cast_nullable_to_non_nullable
                  as int,
        ipAddress: freezed == ipAddress
            ? _self.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastErrorDate: freezed == lastErrorDate
            ? _self.lastErrorDate
            : lastErrorDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastErrorMessage: freezed == lastErrorMessage
            ? _self.lastErrorMessage
            : lastErrorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastErrorNetworkDate: freezed == lastErrorNetworkDate
            ? _self.lastErrorNetworkDate
            : lastErrorNetworkDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        maxConnections: freezed == maxConnections
            ? _self.maxConnections
            : maxConnections // ignore: cast_nullable_to_non_nullable
                  as int?,
        allowedUpdates: freezed == allowedUpdates
            ? _self.allowedUpdates
            : allowedUpdates // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [WebhookInfo].
extension WebhookInfoPatterns on WebhookInfo {
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
    TResult Function(_WebhookInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WebhookInfo() when $default != null:
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
    TResult Function(_WebhookInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookInfo():
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
    TResult? Function(_WebhookInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WebhookInfo implements WebhookInfo {
  const _WebhookInfo({
    @JsonKey(name: 'url') required this.url,
    @JsonKey(name: 'has_custom_certificate') required this.hasCustomCertificate,
    @JsonKey(name: 'pending_update_count') required this.pendingUpdateCount,
    @JsonKey(name: 'ip_address') this.ipAddress,
    @JsonKey(name: 'last_error_date') this.lastErrorDate,
    @JsonKey(name: 'last_error_message') this.lastErrorMessage,
    @JsonKey(name: 'last_error_network_date') this.lastErrorNetworkDate,
    @JsonKey(name: 'max_connections') this.maxConnections,
    @JsonKey(name: 'allowed_updates') final List<String>? allowedUpdates,
  }) : _allowedUpdates = allowedUpdates;
  factory _WebhookInfo.fromJson(Map<String, dynamic> json) =>
      _$WebhookInfoFromJson(json);

  /// Webhook URL, may be empty if webhook is not set up
  @override
  @JsonKey(name: 'url')
  final String url;

  /// True, if a custom certificate was provided for webhook certificate
  /// checks
  @override
  @JsonKey(name: 'has_custom_certificate')
  final bool hasCustomCertificate;

  /// Number of updates awaiting delivery
  @override
  @JsonKey(name: 'pending_update_count')
  final int pendingUpdateCount;

  /// Optional. Currently used webhook IP address
  @override
  @JsonKey(name: 'ip_address')
  final String? ipAddress;

  /// Optional. Unix time for the most recent error that happened when trying
  /// to deliver an update via webhook
  @override
  @JsonKey(name: 'last_error_date')
  final int? lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent
  /// error that happened when trying to deliver an update via webhook
  @override
  @JsonKey(name: 'last_error_message')
  final String? lastErrorMessage;

  /// Optional. Unix time of the most recent error that happened when trying
  /// to synchronize available updates with Telegram datacenters
  @override
  @JsonKey(name: 'last_error_network_date')
  final int? lastErrorNetworkDate;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections
  /// to the webhook for update delivery
  @override
  @JsonKey(name: 'max_connections')
  final int? maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to
  /// all update types except chat_member
  final List<String>? _allowedUpdates;

  /// Optional. A list of update types the bot is subscribed to. Defaults to
  /// all update types except chat_member
  @override
  @JsonKey(name: 'allowed_updates')
  List<String>? get allowedUpdates {
    final value = _allowedUpdates;
    if (value == null) return null;
    if (_allowedUpdates is EqualUnmodifiableListView) return _allowedUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebhookInfoCopyWith<_WebhookInfo> get copyWith =>
      __$WebhookInfoCopyWithImpl<_WebhookInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WebhookInfoToJson(this);
  }

  @override
  String toString() {
    return 'WebhookInfo(url: $url, hasCustomCertificate: $hasCustomCertificate, pendingUpdateCount: $pendingUpdateCount, ipAddress: $ipAddress, lastErrorDate: $lastErrorDate, lastErrorMessage: $lastErrorMessage, lastErrorNetworkDate: $lastErrorNetworkDate, maxConnections: $maxConnections, allowedUpdates: $allowedUpdates)';
  }
}

/// @nodoc
abstract mixin class _$WebhookInfoCopyWith<$Res>
    implements $WebhookInfoCopyWith<$Res> {
  factory _$WebhookInfoCopyWith(
    _WebhookInfo value,
    $Res Function(_WebhookInfo) _then,
  ) = __$WebhookInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'url') String url,
    @JsonKey(name: 'has_custom_certificate') bool hasCustomCertificate,
    @JsonKey(name: 'pending_update_count') int pendingUpdateCount,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'last_error_date') int? lastErrorDate,
    @JsonKey(name: 'last_error_message') String? lastErrorMessage,
    @JsonKey(name: 'last_error_network_date') int? lastErrorNetworkDate,
    @JsonKey(name: 'max_connections') int? maxConnections,
    @JsonKey(name: 'allowed_updates') List<String>? allowedUpdates,
  });
}

/// @nodoc
class __$WebhookInfoCopyWithImpl<$Res> implements _$WebhookInfoCopyWith<$Res> {
  __$WebhookInfoCopyWithImpl(this._self, this._then);

  final _WebhookInfo _self;
  final $Res Function(_WebhookInfo) _then;

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? hasCustomCertificate = null,
    Object? pendingUpdateCount = null,
    Object? ipAddress = freezed,
    Object? lastErrorDate = freezed,
    Object? lastErrorMessage = freezed,
    Object? lastErrorNetworkDate = freezed,
    Object? maxConnections = freezed,
    Object? allowedUpdates = freezed,
  }) {
    return _then(
      _WebhookInfo(
        url: null == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        hasCustomCertificate: null == hasCustomCertificate
            ? _self.hasCustomCertificate
            : hasCustomCertificate // ignore: cast_nullable_to_non_nullable
                  as bool,
        pendingUpdateCount: null == pendingUpdateCount
            ? _self.pendingUpdateCount
            : pendingUpdateCount // ignore: cast_nullable_to_non_nullable
                  as int,
        ipAddress: freezed == ipAddress
            ? _self.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastErrorDate: freezed == lastErrorDate
            ? _self.lastErrorDate
            : lastErrorDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastErrorMessage: freezed == lastErrorMessage
            ? _self.lastErrorMessage
            : lastErrorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastErrorNetworkDate: freezed == lastErrorNetworkDate
            ? _self.lastErrorNetworkDate
            : lastErrorNetworkDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        maxConnections: freezed == maxConnections
            ? _self.maxConnections
            : maxConnections // ignore: cast_nullable_to_non_nullable
                  as int?,
        allowedUpdates: freezed == allowedUpdates
            ? _self._allowedUpdates
            : allowedUpdates // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}
