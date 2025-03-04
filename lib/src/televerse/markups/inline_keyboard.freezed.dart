// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineKeyboard _$InlineKeyboardFromJson(Map<String, dynamic> json) {
  return _InlineKeyboard.fromJson(json);
}

/// @nodoc
mixin _$InlineKeyboard {
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard =>
      throw _privateConstructorUsedError;

  /// Serializes this InlineKeyboard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineKeyboardCopyWith<InlineKeyboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineKeyboardCopyWith<$Res> {
  factory $InlineKeyboardCopyWith(
          InlineKeyboard value, $Res Function(InlineKeyboard) then) =
      _$InlineKeyboardCopyWithImpl<$Res, InlineKeyboard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_keyboard')
      List<List<InlineKeyboardButton>> inlineKeyboard});
}

/// @nodoc
class _$InlineKeyboardCopyWithImpl<$Res, $Val extends InlineKeyboard>
    implements $InlineKeyboardCopyWith<$Res> {
  _$InlineKeyboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineKeyboard = null,
  }) {
    return _then(_value.copyWith(
      inlineKeyboard: null == inlineKeyboard
          ? _value.inlineKeyboard
          : inlineKeyboard // ignore: cast_nullable_to_non_nullable
              as List<List<InlineKeyboardButton>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InlineKeyboardImplCopyWith<$Res>
    implements $InlineKeyboardCopyWith<$Res> {
  factory _$$InlineKeyboardImplCopyWith(_$InlineKeyboardImpl value,
          $Res Function(_$InlineKeyboardImpl) then) =
      __$$InlineKeyboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'inline_keyboard')
      List<List<InlineKeyboardButton>> inlineKeyboard});
}

/// @nodoc
class __$$InlineKeyboardImplCopyWithImpl<$Res>
    extends _$InlineKeyboardCopyWithImpl<$Res, _$InlineKeyboardImpl>
    implements _$$InlineKeyboardImplCopyWith<$Res> {
  __$$InlineKeyboardImplCopyWithImpl(
      _$InlineKeyboardImpl _value, $Res Function(_$InlineKeyboardImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inlineKeyboard = null,
  }) {
    return _then(_$InlineKeyboardImpl(
      inlineKeyboard: null == inlineKeyboard
          ? _value._inlineKeyboard
          : inlineKeyboard // ignore: cast_nullable_to_non_nullable
              as List<List<InlineKeyboardButton>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineKeyboardImpl extends _InlineKeyboard {
  _$InlineKeyboardImpl(
      {@JsonKey(name: 'inline_keyboard')
      final List<List<InlineKeyboardButton>> inlineKeyboard = const [
        <InlineKeyboardButton>[]
      ]})
      : _inlineKeyboard = inlineKeyboard,
        super._();

  factory _$InlineKeyboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineKeyboardImplFromJson(json);

  final List<List<InlineKeyboardButton>> _inlineKeyboard;
  @override
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard {
    if (_inlineKeyboard is EqualUnmodifiableListView) return _inlineKeyboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inlineKeyboard);
  }

  @override
  String toString() {
    return 'InlineKeyboard(inlineKeyboard: $inlineKeyboard)';
  }

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineKeyboardImplCopyWith<_$InlineKeyboardImpl> get copyWith =>
      __$$InlineKeyboardImplCopyWithImpl<_$InlineKeyboardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineKeyboardImplToJson(
      this,
    );
  }
}

abstract class _InlineKeyboard extends InlineKeyboard {
  factory _InlineKeyboard(
          {@JsonKey(name: 'inline_keyboard')
          final List<List<InlineKeyboardButton>> inlineKeyboard}) =
      _$InlineKeyboardImpl;
  _InlineKeyboard._() : super._();

  factory _InlineKeyboard.fromJson(Map<String, dynamic> json) =
      _$InlineKeyboardImpl.fromJson;

  @override
  @JsonKey(name: 'inline_keyboard')
  List<List<InlineKeyboardButton>> get inlineKeyboard;

  /// Create a copy of InlineKeyboard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineKeyboardImplCopyWith<_$InlineKeyboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
