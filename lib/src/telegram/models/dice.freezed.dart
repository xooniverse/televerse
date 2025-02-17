// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dice _$DiceFromJson(Map<String, dynamic> json) {
  return _Dice.fromJson(json);
}

/// @nodoc
mixin _$Dice {
  /// Emoji on which the dice throw animation is based
  DiceEmoji get emoji => throw _privateConstructorUsedError;

  /// Value of the dice.
  ///
  /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
  /// emoji, 1-64 for "🎰" base emoji
  int get value => throw _privateConstructorUsedError;

  /// Serializes this Dice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiceCopyWith<Dice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiceCopyWith<$Res> {
  factory $DiceCopyWith(Dice value, $Res Function(Dice) then) =
      _$DiceCopyWithImpl<$Res, Dice>;
  @useResult
  $Res call({DiceEmoji emoji, int value});
}

/// @nodoc
class _$DiceCopyWithImpl<$Res, $Val extends Dice>
    implements $DiceCopyWith<$Res> {
  _$DiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as DiceEmoji,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiceImplCopyWith<$Res> implements $DiceCopyWith<$Res> {
  factory _$$DiceImplCopyWith(
          _$DiceImpl value, $Res Function(_$DiceImpl) then) =
      __$$DiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiceEmoji emoji, int value});
}

/// @nodoc
class __$$DiceImplCopyWithImpl<$Res>
    extends _$DiceCopyWithImpl<$Res, _$DiceImpl>
    implements _$$DiceImplCopyWith<$Res> {
  __$$DiceImplCopyWithImpl(_$DiceImpl _value, $Res Function(_$DiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? value = null,
  }) {
    return _then(_$DiceImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as DiceEmoji,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiceImpl implements _Dice {
  const _$DiceImpl({required this.emoji, required this.value});

  factory _$DiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiceImplFromJson(json);

  /// Emoji on which the dice throw animation is based
  @override
  final DiceEmoji emoji;

  /// Value of the dice.
  ///
  /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
  /// emoji, 1-64 for "🎰" base emoji
  @override
  final int value;

  @override
  String toString() {
    return 'Dice(emoji: $emoji, value: $value)';
  }

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiceImplCopyWith<_$DiceImpl> get copyWith =>
      __$$DiceImplCopyWithImpl<_$DiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiceImplToJson(
      this,
    );
  }
}

abstract class _Dice implements Dice {
  const factory _Dice(
      {required final DiceEmoji emoji, required final int value}) = _$DiceImpl;

  factory _Dice.fromJson(Map<String, dynamic> json) = _$DiceImpl.fromJson;

  /// Emoji on which the dice throw animation is based
  @override
  DiceEmoji get emoji;

  /// Value of the dice.
  ///
  /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
  /// emoji, 1-64 for "🎰" base emoji
  @override
  int get value;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiceImplCopyWith<_$DiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
