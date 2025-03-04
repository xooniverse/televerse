// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copy_text_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CopyTextButton _$CopyTextButtonFromJson(Map<String, dynamic> json) {
  return _CopyTextButton.fromJson(json);
}

/// @nodoc
mixin _$CopyTextButton {
  /// The text to be copied to the clipboard; 1-256 characters
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Serializes this CopyTextButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyTextButtonCopyWith<CopyTextButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyTextButtonCopyWith<$Res> {
  factory $CopyTextButtonCopyWith(
          CopyTextButton value, $Res Function(CopyTextButton) then) =
      _$CopyTextButtonCopyWithImpl<$Res, CopyTextButton>;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$CopyTextButtonCopyWithImpl<$Res, $Val extends CopyTextButton>
    implements $CopyTextButtonCopyWith<$Res> {
  _$CopyTextButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyTextButtonImplCopyWith<$Res>
    implements $CopyTextButtonCopyWith<$Res> {
  factory _$$CopyTextButtonImplCopyWith(_$CopyTextButtonImpl value,
          $Res Function(_$CopyTextButtonImpl) then) =
      __$$CopyTextButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$$CopyTextButtonImplCopyWithImpl<$Res>
    extends _$CopyTextButtonCopyWithImpl<$Res, _$CopyTextButtonImpl>
    implements _$$CopyTextButtonImplCopyWith<$Res> {
  __$$CopyTextButtonImplCopyWithImpl(
      _$CopyTextButtonImpl _value, $Res Function(_$CopyTextButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$CopyTextButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyTextButtonImpl implements _CopyTextButton {
  const _$CopyTextButtonImpl({@JsonKey(name: 'text') required this.text});

  factory _$CopyTextButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyTextButtonImplFromJson(json);

  /// The text to be copied to the clipboard; 1-256 characters
  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'CopyTextButton(text: $text)';
  }

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyTextButtonImplCopyWith<_$CopyTextButtonImpl> get copyWith =>
      __$$CopyTextButtonImplCopyWithImpl<_$CopyTextButtonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyTextButtonImplToJson(
      this,
    );
  }
}

abstract class _CopyTextButton implements CopyTextButton {
  const factory _CopyTextButton(
          {@JsonKey(name: 'text') required final String text}) =
      _$CopyTextButtonImpl;

  factory _CopyTextButton.fromJson(Map<String, dynamic> json) =
      _$CopyTextButtonImpl.fromJson;

  /// The text to be copied to the clipboard; 1-256 characters
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyTextButtonImplCopyWith<_$CopyTextButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
