// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Keyboard {
  /// Array of button rows, each represented by an Array of KeyboardButton objects
  @JsonKey(name: 'keyboard')
  List<List<KeyboardButton>> get keyboard;

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit
  @JsonKey(name: 'resize_keyboard')
  bool? get resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used.
  @JsonKey(name: 'one_time_keyboard')
  bool? get oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the keyboard is active
  @JsonKey(name: 'input_field_placeholder')
  String? get inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only
  @JsonKey(name: 'selective')
  bool? get selective;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
  @JsonKey(name: 'is_persistent')
  bool? get isPersistent;

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardCopyWith<Keyboard> get copyWith =>
      _$KeyboardCopyWithImpl<Keyboard>(this as Keyboard, _$identity);

  /// Serializes this Keyboard to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Keyboard(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective, isPersistent: $isPersistent)';
  }
}

/// @nodoc
abstract mixin class $KeyboardCopyWith<$Res> {
  factory $KeyboardCopyWith(Keyboard value, $Res Function(Keyboard) _then) =
      _$KeyboardCopyWithImpl;
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
class _$KeyboardCopyWithImpl<$Res> implements $KeyboardCopyWith<$Res> {
  _$KeyboardCopyWithImpl(this._self, this._then);

  final Keyboard _self;
  final $Res Function(Keyboard) _then;

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
    return _then(_self.copyWith(
      keyboard: null == keyboard
          ? _self.keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<KeyboardButton>>,
      resizeKeyboard: freezed == resizeKeyboard
          ? _self.resizeKeyboard
          : resizeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneTimeKeyboard: freezed == oneTimeKeyboard
          ? _self.oneTimeKeyboard
          : oneTimeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputFieldPlaceholder: freezed == inputFieldPlaceholder
          ? _self.inputFieldPlaceholder
          : inputFieldPlaceholder // ignore: cast_nullable_to_non_nullable
              as String?,
      selective: freezed == selective
          ? _self.selective
          : selective // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersistent: freezed == isPersistent
          ? _self.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Keyboard extends Keyboard {
  _Keyboard(
      {@JsonKey(name: 'keyboard')
      final List<List<KeyboardButton>> keyboard = const [<KeyboardButton>[]],
      @JsonKey(name: 'resize_keyboard') this.resizeKeyboard,
      @JsonKey(name: 'one_time_keyboard') this.oneTimeKeyboard,
      @JsonKey(name: 'input_field_placeholder') this.inputFieldPlaceholder,
      @JsonKey(name: 'selective') this.selective,
      @JsonKey(name: 'is_persistent') this.isPersistent})
      : _keyboard = keyboard,
        super._();
  factory _Keyboard.fromJson(Map<String, dynamic> json) =>
      _$KeyboardFromJson(json);

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

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardCopyWith<_Keyboard> get copyWith =>
      __$KeyboardCopyWithImpl<_Keyboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Keyboard(keyboard: $keyboard, resizeKeyboard: $resizeKeyboard, oneTimeKeyboard: $oneTimeKeyboard, inputFieldPlaceholder: $inputFieldPlaceholder, selective: $selective, isPersistent: $isPersistent)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardCopyWith<$Res>
    implements $KeyboardCopyWith<$Res> {
  factory _$KeyboardCopyWith(_Keyboard value, $Res Function(_Keyboard) _then) =
      __$KeyboardCopyWithImpl;
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
class __$KeyboardCopyWithImpl<$Res> implements _$KeyboardCopyWith<$Res> {
  __$KeyboardCopyWithImpl(this._self, this._then);

  final _Keyboard _self;
  final $Res Function(_Keyboard) _then;

  /// Create a copy of Keyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyboard = null,
    Object? resizeKeyboard = freezed,
    Object? oneTimeKeyboard = freezed,
    Object? inputFieldPlaceholder = freezed,
    Object? selective = freezed,
    Object? isPersistent = freezed,
  }) {
    return _then(_Keyboard(
      keyboard: null == keyboard
          ? _self._keyboard
          : keyboard // ignore: cast_nullable_to_non_nullable
              as List<List<KeyboardButton>>,
      resizeKeyboard: freezed == resizeKeyboard
          ? _self.resizeKeyboard
          : resizeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneTimeKeyboard: freezed == oneTimeKeyboard
          ? _self.oneTimeKeyboard
          : oneTimeKeyboard // ignore: cast_nullable_to_non_nullable
              as bool?,
      inputFieldPlaceholder: freezed == inputFieldPlaceholder
          ? _self.inputFieldPlaceholder
          : inputFieldPlaceholder // ignore: cast_nullable_to_non_nullable
              as String?,
      selective: freezed == selective
          ? _self.selective
          : selective // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPersistent: freezed == isPersistent
          ? _self.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
