// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Gifts {
  /// The list of gifts.
  @JsonKey(name: 'gifts')
  List<Gift> get gifts;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GiftsCopyWith<Gifts> get copyWith =>
      _$GiftsCopyWithImpl<Gifts>(this as Gifts, _$identity);

  /// Serializes this Gifts to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Gifts(gifts: $gifts)';
  }
}

/// @nodoc
abstract mixin class $GiftsCopyWith<$Res> {
  factory $GiftsCopyWith(Gifts value, $Res Function(Gifts) _then) =
      _$GiftsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'gifts') List<Gift> gifts});
}

/// @nodoc
class _$GiftsCopyWithImpl<$Res> implements $GiftsCopyWith<$Res> {
  _$GiftsCopyWithImpl(this._self, this._then);

  final Gifts _self;
  final $Res Function(Gifts) _then;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifts = null,
  }) {
    return _then(_self.copyWith(
      gifts: null == gifts
          ? _self.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Gifts implements Gifts {
  const _Gifts({@JsonKey(name: 'gifts') required final List<Gift> gifts})
      : _gifts = gifts;
  factory _Gifts.fromJson(Map<String, dynamic> json) => _$GiftsFromJson(json);

  /// The list of gifts.
  final List<Gift> _gifts;

  /// The list of gifts.
  @override
  @JsonKey(name: 'gifts')
  List<Gift> get gifts {
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gifts);
  }

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GiftsCopyWith<_Gifts> get copyWith =>
      __$GiftsCopyWithImpl<_Gifts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GiftsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Gifts(gifts: $gifts)';
  }
}

/// @nodoc
abstract mixin class _$GiftsCopyWith<$Res> implements $GiftsCopyWith<$Res> {
  factory _$GiftsCopyWith(_Gifts value, $Res Function(_Gifts) _then) =
      __$GiftsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'gifts') List<Gift> gifts});
}

/// @nodoc
class __$GiftsCopyWithImpl<$Res> implements _$GiftsCopyWith<$Res> {
  __$GiftsCopyWithImpl(this._self, this._then);

  final _Gifts _self;
  final $Res Function(_Gifts) _then;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gifts = null,
  }) {
    return _then(_Gifts(
      gifts: null == gifts
          ? _self._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ));
  }
}
