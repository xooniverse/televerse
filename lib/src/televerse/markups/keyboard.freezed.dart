// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Keyboard _$KeyboardFromJson(Map<String, dynamic> json) {
  return _Keyboard.fromJson(json);
}

/// @nodoc
mixin _$Keyboard {
  /// Array of button rows, each represented by an Array of KeyboardButton objects
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard => throw _privateConstructorUsedError;

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit
  @JsonKey(name: 'resize_keyboard')
  bool? get resizeKeyboard => throw _privateConstructorUsedError;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used.
  @JsonKey(name: 'one_time_keyboard')
  bool? get oneTimeKeyboard => throw _privateConstructorUsedError;

  /// Optional. The placeholder to be shown in the input field when the keyboard is active
  @JsonKey(name: 'input_field_placeholder')
  String? get inputFieldPlaceholder => throw _privateConstructorUsedError;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only
  @JsonKey(name: 'selective')
  bool? get selective => throw _privateConstructorUsedError;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
  @JsonKey(name: 'is_persistent')
  bool? get isPersistent => throw _privateConstructorUsedError;

  /// Serializes this Keyboard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardCopyWith<Keyboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardCopyWith<$Res> {
  factory $KeyboardCopyWith(Keyboard value, $Res Function(Keyboard) then) =
      _$KeyboardCopyWithImpl<$Res, Keyboard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'keyboard') List<List<KeyboardButton>> keyboard,
      @JsonKey(name: 'resize_keyboard') bool? resizeKeyboard,
      @JsonKey(name: 'one_time_keyboard') bool? oneTimeKeyboard,
      @JsonKey(name: 'input_field_placeholder') String? inputFieldPlaceholder,
      @JsonKey(name: 'selective') bool? selective,
      @JsonKey(name: 'is_persistent') bool? isPersistent});
}

/// @nodoc
class _$KeyboardCopyWithImpl<$Res, $Val extends Keyboard>
    implements $KeyboardCopyWith<$Res> {
  _$KeyboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyboard = null,
    Object? resizeKeyboard = freezed,
    Object? oneTimeKeyboard = freezed,
    Object? inputFieldPlaceholder = freezed,
    Object? selective = freezed,
    Object? isPersistent = freezed,
  }) {
    return _then(_value.copyWith(
      keyboard: null == keyboard
          ? _value.keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<KeyboardButton>>,
      resizeKeyboard: freezed == resizeKeyboard
          ? _value.resizeKeyboard
          : resizeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneTimeKeyboard: freezed == oneTimeKeyboard
          ? _value.oneTimeKeyboard
          : oneTimeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputFieldPlaceholder: freezed == inputFieldPlaceholder
          ? _value.inputFieldPlaceholder
          : inputFieldPlaceholder // ignore: cast_nullable_to_non_nullable
              as String?,
      selective: freezed == selective
          ? _value.selective
          : selective // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersistent: freezed == isPersistent
          ? _value.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardImplCopyWith<$Res>
    implements $KeyboardCopyWith<$Res> {
  factory _$$KeyboardImplCopyWith(
          _$KeyboardImpl value, $Res Function(_$KeyboardImpl) then) =
      __$$KeyboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'keyboard') List<List<KeyboardButton>> keyboard,
      @JsonKey(name: 'resize_keyboard') bool? resizeKeyboard,
      @JsonKey(name: 'one_time_keyboard') bool? oneTimeKeyboard,
      @JsonKey(name: 'input_field_placeholder') String? inputFieldPlaceholder,
      @JsonKey(name: 'selective') bool? selective,
      @JsonKey(name: 'is_persistent') bool? isPersistent});
}

/// @nodoc
class __$$KeyboardImplCopyWithImpl<$Res>
    extends _$KeyboardCopyWithImpl<$Res, _$KeyboardImpl>
    implements _$$KeyboardImplCopyWith<$Res> {
  __$$KeyboardImplCopyWithImpl(
      _$KeyboardImpl _value, $Res Function(_$KeyboardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyboard = null,
    Object? resizeKeyboard = freezed,
    Object? oneTimeKeyboard = freezed,
    Object? inputFieldPlaceholder = freezed,
    Object? selective = freezed,
    Object? isPersistent = freezed,
  }) {
    return _then(_$KeyboardImpl(
      keyboard: null == keyboard
          ? _value._keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<KeyboardButton>>,
      resizeKeyboard: freezed == resizeKeyboard
          ? _value.resizeKeyboard
          : resizeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneTimeKeyboard: freezed == oneTimeKeyboard
          ? _value.oneTimeKeyboard
          : oneTimeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputFieldPlaceholder: freezed == inputFieldPlaceholder
          ? _value.inputFieldPlaceholder
          : inputFieldPlaceholder // ignore: cast_nullable_to_non_nullable
              as String?,
      selective: freezed == selective
          ? _value.selective
          : selective // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersistent: freezed == isPersistent
          ? _value.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardImpl extends _Keyboard {
  _$KeyboardImpl(
      {@JsonKey(name: 'keyboard')
      final List<List<KeyboardButton>> keyboard = const [<KeyboardButton>[]],
      @JsonKey(name: 'resize_keyboard') this.resizeKeyboard,
      @JsonKey(name: 'one_time_keyboard') this.oneTimeKeyboard,
      @JsonKey(name: 'input_field_placeholder') this.inputFieldPlaceholder,
      @JsonKey(name: 'selective') this.selective,
      @JsonKey(name: 'is_persistent') this.isPersistent})
      : _keyboard = keyboard,
        super._();

  factory _$KeyboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardImplFromJson(json);

  /// Array of button rows, each represented by an Array of KeyboardButton objects
  final List<List<KeyboardButton>> _keyboard;

  /// Array of button rows, each represented by an Array of KeyboardButton objects
  @override
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard {
    if (_keyboard is EqualUnmodifiableListView) return _keyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyboard);
  }

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit
  @override
  @JsonKey(name: 'resize_keyboard')
  final bool? resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used.
  @override
  @JsonKey(name: 'one_time_keyboard')
  final bool? oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the keyboard is active
  @override
  @JsonKey(name: 'input_field_placeholder')
  final String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only
  @override
  @JsonKey(name: 'selective')
  final bool? selective;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
  @override
  @JsonKey(name: 'is_persistent')
  final bool? isPersistent;

  @override
  String toString() {
    return 'Keyboard(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective, isPersistent: $isPersistent)';
  }

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardImplCopyWith<_$KeyboardImpl> get copyWith =>
      __$$KeyboardImplCopyWithImpl<_$KeyboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardImplToJson(
      this,
    );
  }
}

abstract class _Keyboard extends Keyboard {
  factory _Keyboard(
          {@JsonKey(name: 'keyboard') final List<List<KeyboardButton>> keyboard,
          @JsonKey(name: 'resize_keyboard') final bool? resizeKeyboard,
          @JsonKey(name: 'one_time_keyboard') final bool? oneTimeKeyboard,
          @JsonKey(name: 'input_field_placeholder')
          final String? inputFieldPlaceholder,
          @JsonKey(name: 'selective') final bool? selective,
          @JsonKey(name: 'is_persistent') final bool? isPersistent}) =
      _$KeyboardImpl;
  _Keyboard._() : super._();

  factory _Keyboard.fromJson(Map<String, dynamic> json) =
      _$KeyboardImpl.fromJson;

  /// Array of button rows, each represented by an Array of KeyboardButton objects
  @override
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard;

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit
  @override
  @JsonKey(name: 'resize_keyboard')
  bool? get resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used.
  @override
  @JsonKey(name: 'one_time_keyboard')
  bool? get oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the keyboard is active
  @override
  @JsonKey(name: 'input_field_placeholder')
  String? get inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only
  @override
  @JsonKey(name: 'selective')
  bool? get selective;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
  @override
  @JsonKey(name: 'is_persistent')
  bool? get isPersistent;

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardImplCopyWith<_$KeyboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
