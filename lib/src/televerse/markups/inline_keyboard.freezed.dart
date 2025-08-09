// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineKeyboard {
  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineKeyboardCopyWith<InlineKeyboard> get copyWith =>
      _$InlineKeyboardCopyWithImpl<InlineKeyboard>(
          this as InlineKeyboard, _$identity);

  /// Serializes this InlineKeyboard to a JSON map.
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract mixin class $InlineKeyboardCopyWith<$Res> {
  factory $InlineKeyboardCopyWith(
          InlineKeyboard value, $Res Function(InlineKeyboard) _then) =
      _$InlineKeyboardCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_keyboard')
      List<List<InlineKeyboardButton>> inlineKeyboard});
}

/// @nodoc
class _$InlineKeyboardCopyWithImpl<$Res>
    implements $InlineKeyboardCopyWith<$Res> {
  _$InlineKeyboardCopyWithImpl(this._self, this._then);

  final InlineKeyboard _self;
  final $Res Function(InlineKeyboard) _then;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineKeyboard = null,
  }) {
    return _then(_self.copyWith(
      inlineKeyboard: null == inlineKeyboard
          ? _self.inlineKeyboard
          : inlineKeyboard // ignore: cast_nullable_to_non_nullable
              as List<List<InlineKeyboardButton>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InlineKeyboard extends InlineKeyboard {
  const _InlineKeyboard(
      {@JsonKey(name: 'inline_keyboard')
      final List<List<InlineKeyboardButton>> inlineKeyboard = const [
        <InlineKeyboardButton>[]
      ]})
      : _inlineKeyboard = inlineKeyboard,
        super._();
  factory _InlineKeyboard.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardFromJson(json);

  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  final List<List<InlineKeyboardButton>> _inlineKeyboard;

  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  @override
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard {
    if (_inlineKeyboard is EqualUnmodifiableListView) return _inlineKeyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inlineKeyboard);
  }

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineKeyboardCopyWith<_InlineKeyboard> get copyWith =>
      __$InlineKeyboardCopyWithImpl<_InlineKeyboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineKeyboardToJson(
      this,
    );
  }
}

/// @nodoc
abstract mixin class _$InlineKeyboardCopyWith<$Res>
    implements $InlineKeyboardCopyWith<$Res> {
  factory _$InlineKeyboardCopyWith(
          _InlineKeyboard value, $Res Function(_InlineKeyboard) _then) =
      __$InlineKeyboardCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_keyboard')
      List<List<InlineKeyboardButton>> inlineKeyboard});
}

/// @nodoc
class __$InlineKeyboardCopyWithImpl<$Res>
    implements _$InlineKeyboardCopyWith<$Res> {
  __$InlineKeyboardCopyWithImpl(this._self, this._then);

  final _InlineKeyboard _self;
  final $Res Function(_InlineKeyboard) _then;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inlineKeyboard = null,
  }) {
    return _then(_InlineKeyboard(
      inlineKeyboard: null == inlineKeyboard
          ? _self._inlineKeyboard
          : inlineKeyboard // ignore: cast_nullable_to_non_nullable
              as List<List<InlineKeyboardButton>>,
    ));
  }
}
