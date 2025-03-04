// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gifts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gifts _$GiftsFromJson(Map<String, dynamic> json) {
  return _Gifts.fromJson(json);
}

/// @nodoc
mixin _$Gifts {
  /// The list of gifts.
  @JsonKey(name: 'gifts')
  List<Gift> get gifts => throw _privateConstructorUsedError;

  /// Serializes this Gifts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftsCopyWith<Gifts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftsCopyWith<$Res> {
  factory $GiftsCopyWith(Gifts value, $Res Function(Gifts) then) =
      _$GiftsCopyWithImpl<$Res, Gifts>;
  @useResult
  $Res call({@JsonKey(name: 'gifts') List<Gift> gifts});
}

/// @nodoc
class _$GiftsCopyWithImpl<$Res, $Val extends Gifts>
    implements $GiftsCopyWith<$Res> {
  _$GiftsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifts = null,
  }) {
    return _then(_value.copyWith(
      gifts: null == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftsImplCopyWith<$Res> implements $GiftsCopyWith<$Res> {
  factory _$$GiftsImplCopyWith(
          _$GiftsImpl value, $Res Function(_$GiftsImpl) then) =
      __$$GiftsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'gifts') List<Gift> gifts});
}

/// @nodoc
class __$$GiftsImplCopyWithImpl<$Res>
    extends _$GiftsCopyWithImpl<$Res, _$GiftsImpl>
    implements _$$GiftsImplCopyWith<$Res> {
  __$$GiftsImplCopyWithImpl(
      _$GiftsImpl _value, $Res Function(_$GiftsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gifts = null,
  }) {
    return _then(_$GiftsImpl(
      gifts: null == gifts
          ? _value._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<Gift>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftsImpl implements _Gifts {
  const _$GiftsImpl({@JsonKey(name: 'gifts') required final List<Gift> gifts})
      : _gifts = gifts;

  factory _$GiftsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftsImplFromJson(json);

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

  @override
  String toString() {
    return 'Gifts(gifts: $gifts)';
  }

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftsImplCopyWith<_$GiftsImpl> get copyWith =>
      __$$GiftsImplCopyWithImpl<_$GiftsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftsImplToJson(
      this,
    );
  }
}

abstract class _Gifts implements Gifts {
  const factory _Gifts(
      {@JsonKey(name: 'gifts') required final List<Gift> gifts}) = _$GiftsImpl;

  factory _Gifts.fromJson(Map<String, dynamic> json) = _$GiftsImpl.fromJson;

  /// The list of gifts.
  @override
  @JsonKey(name: 'gifts')
  List<Gift> get gifts;

  /// Create a copy of Gifts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftsImplCopyWith<_$GiftsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
