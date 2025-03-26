// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dice {
  /// Emoji on which the dice throw animation is based
  @JsonKey(name: 'emoji')
  DiceEmoji get emoji;

  /// Value of the dice.
  ///
  /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
  /// emoji, 1-64 for "🎰" base emoji
  @JsonKey(name: 'value')
  int get value;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiceCopyWith<Dice> get copyWith =>
      _$DiceCopyWithImpl<Dice>(this as Dice, _$identity);

  /// Serializes this Dice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Dice(emoji: $emoji, value: $value)';
  }
}

/// @nodoc
abstract mixin class $DiceCopyWith<$Res> {
  factory $DiceCopyWith(Dice value, $Res Function(Dice) _then) =
      _$DiceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'emoji') DiceEmoji emoji,
      @JsonKey(name: 'value') int value});
}

/// @nodoc
class _$DiceCopyWithImpl<$Res> implements $DiceCopyWith<$Res> {
  _$DiceCopyWithImpl(this._self, this._then);

  final Dice _self;
  final $Res Function(Dice) _then;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as DiceEmoji,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Dice implements Dice {
  const _Dice(
      {@JsonKey(name: 'emoji') required this.emoji,
      @JsonKey(name: 'value') required this.value});
  factory _Dice.fromJson(Map<String, dynamic> json) => _$DiceFromJson(json);

  /// Emoji on which the dice throw animation is based
  @override
  @JsonKey(name: 'emoji')
  final DiceEmoji emoji;

  /// Value of the dice.
  ///
  /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
  /// emoji, 1-64 for "🎰" base emoji
  @override
  @JsonKey(name: 'value')
  final int value;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiceCopyWith<_Dice> get copyWith =>
      __$DiceCopyWithImpl<_Dice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiceToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Dice(emoji: $emoji, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$DiceCopyWith<$Res> implements $DiceCopyWith<$Res> {
  factory _$DiceCopyWith(_Dice value, $Res Function(_Dice) _then) =
      __$DiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'emoji') DiceEmoji emoji,
      @JsonKey(name: 'value') int value});
}

/// @nodoc
class __$DiceCopyWithImpl<$Res> implements _$DiceCopyWith<$Res> {
  __$DiceCopyWithImpl(this._self, this._then);

  final _Dice _self;
  final $Res Function(_Dice) _then;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emoji = null,
    Object? value = null,
  }) {
    return _then(_Dice(
      emoji: null == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as DiceEmoji,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
