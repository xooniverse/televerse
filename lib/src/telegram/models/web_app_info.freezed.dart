// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebAppInfo _$WebAppInfoFromJson(Map<String, dynamic> json) {
  return _WebAppInfo.fromJson(json);
}

/// @nodoc
mixin _$WebAppInfo {
  /// An HTTPS URL of a Web App to be opened with additional data as specified
  /// in Initializing Web Apps
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  /// Serializes this WebAppInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebAppInfoCopyWith<WebAppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebAppInfoCopyWith<$Res> {
  factory $WebAppInfoCopyWith(
          WebAppInfo value, $Res Function(WebAppInfo) then) =
      _$WebAppInfoCopyWithImpl<$Res, WebAppInfo>;
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class _$WebAppInfoCopyWithImpl<$Res, $Val extends WebAppInfo>
    implements $WebAppInfoCopyWith<$Res> {
  _$WebAppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebAppInfoImplCopyWith<$Res>
    implements $WebAppInfoCopyWith<$Res> {
  factory _$$WebAppInfoImplCopyWith(
          _$WebAppInfoImpl value, $Res Function(_$WebAppInfoImpl) then) =
      __$$WebAppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$WebAppInfoImplCopyWithImpl<$Res>
    extends _$WebAppInfoCopyWithImpl<$Res, _$WebAppInfoImpl>
    implements _$$WebAppInfoImplCopyWith<$Res> {
  __$$WebAppInfoImplCopyWithImpl(
      _$WebAppInfoImpl _value, $Res Function(_$WebAppInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$WebAppInfoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebAppInfoImpl implements _WebAppInfo {
  const _$WebAppInfoImpl({@JsonKey(name: 'url') required this.url});

  factory _$WebAppInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebAppInfoImplFromJson(json);

  /// An HTTPS URL of a Web App to be opened with additional data as specified
  /// in Initializing Web Apps
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'WebAppInfo(url: $url)';
  }

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebAppInfoImplCopyWith<_$WebAppInfoImpl> get copyWith =>
      __$$WebAppInfoImplCopyWithImpl<_$WebAppInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebAppInfoImplToJson(
      this,
    );
  }
}

abstract class _WebAppInfo implements WebAppInfo {
  const factory _WebAppInfo({@JsonKey(name: 'url') required final String url}) =
      _$WebAppInfoImpl;

  factory _WebAppInfo.fromJson(Map<String, dynamic> json) =
      _$WebAppInfoImpl.fromJson;

  /// An HTTPS URL of a Web App to be opened with additional data as specified
  /// in Initializing Web Apps
  @override
  @JsonKey(name: 'url')
  String get url;

  /// Create a copy of WebAppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebAppInfoImplCopyWith<_$WebAppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
