// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebhookInfo _$WebhookInfoFromJson(Map<String, dynamic> json) {
  return _WebhookInfo.fromJson(json);
}

/// @nodoc
mixin _$WebhookInfo {
  /// Webhook URL, may be empty if webhook is not set up
  String get url => throw _privateConstructorUsedError;

  /// True, if a custom certificate was provided for webhook certificate
  /// checks
  @JsonKey(name: 'has_custom_certificate')
  bool get hasCustomCertificate => throw _privateConstructorUsedError;

  /// Number of updates awaiting delivery
  @JsonKey(name: 'pending_update_count')
  int get pendingUpdateCount => throw _privateConstructorUsedError;

  /// Optional. Currently used webhook IP address
  @JsonKey(name: 'ip_address')
  String? get ipAddress => throw _privateConstructorUsedError;

  /// Optional. Unix time for the most recent error that happened when trying
  /// to deliver an update via webhook
  @JsonKey(name: 'last_error_date')
  int? get lastErrorDate => throw _privateConstructorUsedError;

  /// Optional. Error message in human-readable format for the most recent
  /// error that happened when trying to deliver an update via webhook
  @JsonKey(name: 'last_error_message')
  String? get lastErrorMessage => throw _privateConstructorUsedError;

  /// Optional. Unix time of the most recent error that happened when trying
  /// to synchronize available updates with Telegram datacenters
  @JsonKey(name: 'last_error_network_date')
  int? get lastErrorNetworkDate => throw _privateConstructorUsedError;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections
  /// to the webhook for update delivery
  @JsonKey(name: 'max_connections')
  int? get maxConnections => throw _privateConstructorUsedError;

  /// Optional. A list of update types the bot is subscribed to. Defaults to
  /// all update types except chat_member
  @JsonKey(name: 'allowed_updates')
  List<String>? get allowedUpdates => throw _privateConstructorUsedError;

  /// Serializes this WebhookInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebhookInfoCopyWith<WebhookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebhookInfoCopyWith<$Res> {
  factory $WebhookInfoCopyWith(
          WebhookInfo value, $Res Function(WebhookInfo) then) =
      _$WebhookInfoCopyWithImpl<$Res, WebhookInfo>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'has_custom_certificate') bool hasCustomCertificate,
      @JsonKey(name: 'pending_update_count') int pendingUpdateCount,
      @JsonKey(name: 'ip_address') String? ipAddress,
      @JsonKey(name: 'last_error_date') int? lastErrorDate,
      @JsonKey(name: 'last_error_message') String? lastErrorMessage,
      @JsonKey(name: 'last_error_network_date') int? lastErrorNetworkDate,
      @JsonKey(name: 'max_connections') int? maxConnections,
      @JsonKey(name: 'allowed_updates') List<String>? allowedUpdates});
}

/// @nodoc
class _$WebhookInfoCopyWithImpl<$Res, $Val extends WebhookInfo>
    implements $WebhookInfoCopyWith<$Res> {
  _$WebhookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hasCustomCertificate: null == hasCustomCertificate
          ? _value.hasCustomCertificate
          : hasCustomCertificate // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingUpdateCount: null == pendingUpdateCount
          ? _value.pendingUpdateCount
          : pendingUpdateCount // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lastErrorDate: freezed == lastErrorDate
          ? _value.lastErrorDate
          : lastErrorDate // ignore: cast_nullable_to_non_nullable
              as int?,
      lastErrorMessage: freezed == lastErrorMessage
          ? _value.lastErrorMessage
          : lastErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastErrorNetworkDate: freezed == lastErrorNetworkDate
          ? _value.lastErrorNetworkDate
          : lastErrorNetworkDate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxConnections: freezed == maxConnections
          ? _value.maxConnections
          : maxConnections // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedUpdates: freezed == allowedUpdates
          ? _value.allowedUpdates
          : allowedUpdates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebhookInfoImplCopyWith<$Res>
    implements $WebhookInfoCopyWith<$Res> {
  factory _$$WebhookInfoImplCopyWith(
          _$WebhookInfoImpl value, $Res Function(_$WebhookInfoImpl) then) =
      __$$WebhookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: 'has_custom_certificate') bool hasCustomCertificate,
      @JsonKey(name: 'pending_update_count') int pendingUpdateCount,
      @JsonKey(name: 'ip_address') String? ipAddress,
      @JsonKey(name: 'last_error_date') int? lastErrorDate,
      @JsonKey(name: 'last_error_message') String? lastErrorMessage,
      @JsonKey(name: 'last_error_network_date') int? lastErrorNetworkDate,
      @JsonKey(name: 'max_connections') int? maxConnections,
      @JsonKey(name: 'allowed_updates') List<String>? allowedUpdates});
}

/// @nodoc
class __$$WebhookInfoImplCopyWithImpl<$Res>
    extends _$WebhookInfoCopyWithImpl<$Res, _$WebhookInfoImpl>
    implements _$$WebhookInfoImplCopyWith<$Res> {
  __$$WebhookInfoImplCopyWithImpl(
      _$WebhookInfoImpl _value, $Res Function(_$WebhookInfoImpl) _then)
      : super(_value, _then);

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
    return _then(_$WebhookInfoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hasCustomCertificate: null == hasCustomCertificate
          ? _value.hasCustomCertificate
          : hasCustomCertificate // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingUpdateCount: null == pendingUpdateCount
          ? _value.pendingUpdateCount
          : pendingUpdateCount // ignore: cast_nullable_to_non_nullable
              as int,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lastErrorDate: freezed == lastErrorDate
          ? _value.lastErrorDate
          : lastErrorDate // ignore: cast_nullable_to_non_nullable
              as int?,
      lastErrorMessage: freezed == lastErrorMessage
          ? _value.lastErrorMessage
          : lastErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastErrorNetworkDate: freezed == lastErrorNetworkDate
          ? _value.lastErrorNetworkDate
          : lastErrorNetworkDate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxConnections: freezed == maxConnections
          ? _value.maxConnections
          : maxConnections // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedUpdates: freezed == allowedUpdates
          ? _value._allowedUpdates
          : allowedUpdates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebhookInfoImpl implements _WebhookInfo {
  const _$WebhookInfoImpl(
      {required this.url,
      @JsonKey(name: 'has_custom_certificate')
      required this.hasCustomCertificate,
      @JsonKey(name: 'pending_update_count') required this.pendingUpdateCount,
      @JsonKey(name: 'ip_address') this.ipAddress,
      @JsonKey(name: 'last_error_date') this.lastErrorDate,
      @JsonKey(name: 'last_error_message') this.lastErrorMessage,
      @JsonKey(name: 'last_error_network_date') this.lastErrorNetworkDate,
      @JsonKey(name: 'max_connections') this.maxConnections,
      @JsonKey(name: 'allowed_updates') final List<String>? allowedUpdates})
      : _allowedUpdates = allowedUpdates;

  factory _$WebhookInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebhookInfoImplFromJson(json);

  /// Webhook URL, may be empty if webhook is not set up
  @override
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

  @override
  String toString() {
    return 'WebhookInfo(url: $url, hasCustomCertificate: $hasCustomCertificate, pendingUpdateCount: $pendingUpdateCount, ipAddress: $ipAddress, lastErrorDate: $lastErrorDate, lastErrorMessage: $lastErrorMessage, lastErrorNetworkDate: $lastErrorNetworkDate, maxConnections: $maxConnections, allowedUpdates: $allowedUpdates)';
  }

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebhookInfoImplCopyWith<_$WebhookInfoImpl> get copyWith =>
      __$$WebhookInfoImplCopyWithImpl<_$WebhookInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebhookInfoImplToJson(
      this,
    );
  }
}

abstract class _WebhookInfo implements WebhookInfo {
  const factory _WebhookInfo(
      {required final String url,
      @JsonKey(name: 'has_custom_certificate')
      required final bool hasCustomCertificate,
      @JsonKey(name: 'pending_update_count')
      required final int pendingUpdateCount,
      @JsonKey(name: 'ip_address') final String? ipAddress,
      @JsonKey(name: 'last_error_date') final int? lastErrorDate,
      @JsonKey(name: 'last_error_message') final String? lastErrorMessage,
      @JsonKey(name: 'last_error_network_date') final int? lastErrorNetworkDate,
      @JsonKey(name: 'max_connections') final int? maxConnections,
      @JsonKey(name: 'allowed_updates')
      final List<String>? allowedUpdates}) = _$WebhookInfoImpl;

  factory _WebhookInfo.fromJson(Map<String, dynamic> json) =
      _$WebhookInfoImpl.fromJson;

  /// Webhook URL, may be empty if webhook is not set up
  @override
  String get url;

  /// True, if a custom certificate was provided for webhook certificate
  /// checks
  @override
  @JsonKey(name: 'has_custom_certificate')
  bool get hasCustomCertificate;

  /// Number of updates awaiting delivery
  @override
  @JsonKey(name: 'pending_update_count')
  int get pendingUpdateCount;

  /// Optional. Currently used webhook IP address
  @override
  @JsonKey(name: 'ip_address')
  String? get ipAddress;

  /// Optional. Unix time for the most recent error that happened when trying
  /// to deliver an update via webhook
  @override
  @JsonKey(name: 'last_error_date')
  int? get lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent
  /// error that happened when trying to deliver an update via webhook
  @override
  @JsonKey(name: 'last_error_message')
  String? get lastErrorMessage;

  /// Optional. Unix time of the most recent error that happened when trying
  /// to synchronize available updates with Telegram datacenters
  @override
  @JsonKey(name: 'last_error_network_date')
  int? get lastErrorNetworkDate;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections
  /// to the webhook for update delivery
  @override
  @JsonKey(name: 'max_connections')
  int? get maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to
  /// all update types except chat_member
  @override
  @JsonKey(name: 'allowed_updates')
  List<String>? get allowedUpdates;

  /// Create a copy of WebhookInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebhookInfoImplCopyWith<_$WebhookInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
