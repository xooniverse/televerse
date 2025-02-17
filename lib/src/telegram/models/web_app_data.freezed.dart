// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_app_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebAppData _$WebAppDataFromJson(Map<String, dynamic> json) {
  return _WebAppData.fromJson(json);
}

/// @nodoc
mixin _$WebAppData {
  /// The data. Be aware that a bad client can send arbitrary data in this
  /// field.
  String get data => throw _privateConstructorUsedError;

  /// Text of the web_app keyboard button from which the Web App was opened.
  /// Be aware that a bad client can send arbitrary data in this field.
  @JsonKey(name: 'button_text')
  String get buttonText => throw _privateConstructorUsedError;

  /// Serializes this WebAppData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebAppDataCopyWith<WebAppData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebAppDataCopyWith<$Res> {
  factory $WebAppDataCopyWith(
          WebAppData value, $Res Function(WebAppData) then) =
      _$WebAppDataCopyWithImpl<$Res, WebAppData>;
  @useResult
  $Res call({String data, @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class _$WebAppDataCopyWithImpl<$Res, $Val extends WebAppData>
    implements $WebAppDataCopyWith<$Res> {
  _$WebAppDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? buttonText = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebAppDataImplCopyWith<$Res>
    implements $WebAppDataCopyWith<$Res> {
  factory _$$WebAppDataImplCopyWith(
          _$WebAppDataImpl value, $Res Function(_$WebAppDataImpl) then) =
      __$$WebAppDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, @JsonKey(name: 'button_text') String buttonText});
}

/// @nodoc
class __$$WebAppDataImplCopyWithImpl<$Res>
    extends _$WebAppDataCopyWithImpl<$Res, _$WebAppDataImpl>
    implements _$$WebAppDataImplCopyWith<$Res> {
  __$$WebAppDataImplCopyWithImpl(
      _$WebAppDataImpl _value, $Res Function(_$WebAppDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? buttonText = null,
  }) {
    return _then(_$WebAppDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      buttonText: null == buttonText
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebAppDataImpl implements _WebAppData {
  const _$WebAppDataImpl(
      {required this.data,
      @JsonKey(name: 'button_text') required this.buttonText});

  factory _$WebAppDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebAppDataImplFromJson(json);

  /// The data. Be aware that a bad client can send arbitrary data in this
  /// field.
  @override
  final String data;

  /// Text of the web_app keyboard button from which the Web App was opened.
  /// Be aware that a bad client can send arbitrary data in this field.
  @override
  @JsonKey(name: 'button_text')
  final String buttonText;

  @override
  String toString() {
    return 'WebAppData(data: $data, buttonText: $buttonText)';
  }

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebAppDataImplCopyWith<_$WebAppDataImpl> get copyWith =>
      __$$WebAppDataImplCopyWithImpl<_$WebAppDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebAppDataImplToJson(
      this,
    );
  }
}

abstract class _WebAppData implements WebAppData {
  const factory _WebAppData(
          {required final String data,
          @JsonKey(name: 'button_text') required final String buttonText}) =
      _$WebAppDataImpl;

  factory _WebAppData.fromJson(Map<String, dynamic> json) =
      _$WebAppDataImpl.fromJson;

  /// The data. Be aware that a bad client can send arbitrary data in this
  /// field.
  @override
  String get data;

  /// Text of the web_app keyboard button from which the Web App was opened.
  /// Be aware that a bad client can send arbitrary data in this field.
  @override
  @JsonKey(name: 'button_text')
  String get buttonText;

  /// Create a copy of WebAppData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebAppDataImplCopyWith<_$WebAppDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
