// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copy_text_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CopyTextButton {
  /// The text to be copied to the clipboard; 1-256 characters
  @JsonKey(name: 'text')
  String get text;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CopyTextButtonCopyWith<CopyTextButton> get copyWith =>
      _$CopyTextButtonCopyWithImpl<CopyTextButton>(
          this as CopyTextButton, _$identity);

  /// Serializes this CopyTextButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'CopyTextButton(text: $text)';
  }
}

/// @nodoc
abstract mixin class $CopyTextButtonCopyWith<$Res> {
  factory $CopyTextButtonCopyWith(
          CopyTextButton value, $Res Function(CopyTextButton) _then) =
      _$CopyTextButtonCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class _$CopyTextButtonCopyWithImpl<$Res>
    implements $CopyTextButtonCopyWith<$Res> {
  _$CopyTextButtonCopyWithImpl(this._self, this._then);

  final CopyTextButton _self;
  final $Res Function(CopyTextButton) _then;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CopyTextButton implements CopyTextButton {
  const _CopyTextButton({@JsonKey(name: 'text') required this.text});
  factory _CopyTextButton.fromJson(Map<String, dynamic> json) =>
      _$CopyTextButtonFromJson(json);

  /// The text to be copied to the clipboard; 1-256 characters
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CopyTextButtonCopyWith<_CopyTextButton> get copyWith =>
      __$CopyTextButtonCopyWithImpl<_CopyTextButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CopyTextButtonToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'CopyTextButton(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$CopyTextButtonCopyWith<$Res>
    implements $CopyTextButtonCopyWith<$Res> {
  factory _$CopyTextButtonCopyWith(
          _CopyTextButton value, $Res Function(_CopyTextButton) _then) =
      __$CopyTextButtonCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String text});
}

/// @nodoc
class __$CopyTextButtonCopyWithImpl<$Res>
    implements _$CopyTextButtonCopyWith<$Res> {
  __$CopyTextButtonCopyWithImpl(this._self, this._then);

  final _CopyTextButton _self;
  final $Res Function(_CopyTextButton) _then;

  /// Create a copy of CopyTextButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_CopyTextButton(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
