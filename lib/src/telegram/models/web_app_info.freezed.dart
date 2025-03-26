// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebAppInfo {
  /// An HTTPS URL of a Web App to be opened with additional data as specified
  /// in Initializing Web Apps
  @JsonKey(name: 'url')
  String get url;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<WebAppInfo> get copyWith =>
      _$WebAppInfoCopyWithImpl<WebAppInfo>(this as WebAppInfo, _$identity);

  /// Serializes this WebAppInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WebAppInfo(url: $url)';
  }
}

/// @nodoc
abstract mixin class $WebAppInfoCopyWith<$Res> {
  factory $WebAppInfoCopyWith(
          WebAppInfo value, $Res Function(WebAppInfo) _then) =
      _$WebAppInfoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class _$WebAppInfoCopyWithImpl<$Res> implements $WebAppInfoCopyWith<$Res> {
  _$WebAppInfoCopyWithImpl(this._self, this._then);

  final WebAppInfo _self;
  final $Res Function(WebAppInfo) _then;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WebAppInfo implements WebAppInfo {
  const _WebAppInfo({@JsonKey(name: 'url') required this.url});
  factory _WebAppInfo.fromJson(Map<String, dynamic> json) =>
      _$WebAppInfoFromJson(json);

  /// An HTTPS URL of a Web App to be opened with additional data as specified
  /// in Initializing Web Apps
  @override
  @JsonKey(name: 'url')
  final String url;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebAppInfoCopyWith<_WebAppInfo> get copyWith =>
      __$WebAppInfoCopyWithImpl<_WebAppInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WebAppInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'WebAppInfo(url: $url)';
  }
}

/// @nodoc
abstract mixin class _$WebAppInfoCopyWith<$Res>
    implements $WebAppInfoCopyWith<$Res> {
  factory _$WebAppInfoCopyWith(
          _WebAppInfo value, $Res Function(_WebAppInfo) _then) =
      __$WebAppInfoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class __$WebAppInfoCopyWithImpl<$Res> implements _$WebAppInfoCopyWith<$Res> {
  __$WebAppInfoCopyWithImpl(this._self, this._then);

  final _WebAppInfo _self;
  final $Res Function(_WebAppInfo) _then;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(_WebAppInfo(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
