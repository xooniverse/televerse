// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_app_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebAppData {
  /// The data. Be aware that a bad client can send arbitrary data in this
  /// field.
  @JsonKey(name: 'data')
  String get data;

  /// Text of the web_app keyboard button from which the Web App was opened.
  /// Be aware that a bad client can send arbitrary data in this field.
  @JsonKey(name: 'button_text')
  String get buttonText;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebAppDataCopyWith<WebAppData> get copyWith =>
      _$WebAppDataCopyWithImpl<WebAppData>(this as WebAppData, _$identity);

  /// Serializes this WebAppData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WebAppData(data: $data, buttonText: $buttonText)';
  }
}

/// @nodoc
abstract mixin class $WebAppDataCopyWith<$Res> {
  factory $WebAppDataCopyWith(
          WebAppData value, $Res Function(WebAppData) _then) =
      _$WebAppDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class _$WebAppDataCopyWithImpl<$Res> implements $WebAppDataCopyWith<$Res> {
  _$WebAppDataCopyWithImpl(this._self, this._then);

  final WebAppData _self;
  final $Res Function(WebAppData) _then;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? buttonText = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      buttonText: null == buttonText
          ? _self.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WebAppData implements WebAppData {
  const _WebAppData(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'button_text') required this.buttonText});
  factory _WebAppData.fromJson(Map<String, dynamic> json) =>
      _$WebAppDataFromJson(json);

  /// The data. Be aware that a bad client can send arbitrary data in this
  /// field.
  @override
  @JsonKey(name: 'data')
  final String data;

  /// Text of the web_app keyboard button from which the Web App was opened.
  /// Be aware that a bad client can send arbitrary data in this field.
  @override
  @JsonKey(name: 'button_text')
  final String buttonText;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebAppDataCopyWith<_WebAppData> get copyWith =>
      __$WebAppDataCopyWithImpl<_WebAppData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WebAppDataToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'WebAppData(data: $data, buttonText: $buttonText)';
  }
}

/// @nodoc
abstract mixin class _$WebAppDataCopyWith<$Res>
    implements $WebAppDataCopyWith<$Res> {
  factory _$WebAppDataCopyWith(
          _WebAppData value, $Res Function(_WebAppData) _then) =
      __$WebAppDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class __$WebAppDataCopyWithImpl<$Res> implements _$WebAppDataCopyWith<$Res> {
  __$WebAppDataCopyWithImpl(this._self, this._then);

  final _WebAppData _self;
  final $Res Function(_WebAppData) _then;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? buttonText = null,
  }) {
    return _then(_WebAppData(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      buttonText: null == buttonText
          ? _self.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
