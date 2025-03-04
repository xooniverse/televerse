// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_intro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessIntro _$BusinessIntroFromJson(Map<String, dynamic> json) {
  return _BusinessIntro.fromJson(json);
}

/// @nodoc
mixin _$BusinessIntro {
  /// Optional. Title text of the business intro.
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  /// Optional. Message text of the business intro.
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Optional. Sticker of the business intro.
  @JsonKey(name: 'sticker')
  Sticker? get sticker => throw _privateConstructorUsedError;

  /// Serializes this BusinessIntro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessIntroCopyWith<BusinessIntro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessIntroCopyWith<$Res> {
  factory $BusinessIntroCopyWith(
          BusinessIntro value, $Res Function(BusinessIntro) then) =
      _$BusinessIntroCopyWithImpl<$Res, BusinessIntro>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'sticker') Sticker? sticker});

  $StickerCopyWith<$Res>? get sticker;
}

/// @nodoc
class _$BusinessIntroCopyWithImpl<$Res, $Val extends BusinessIntro>
    implements $BusinessIntroCopyWith<$Res> {
  _$BusinessIntroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? sticker = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sticker: freezed == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker?,
    ) as $Val);
  }

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_value.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_value.sticker!, (value) {
      return _then(_value.copyWith(sticker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessIntroImplCopyWith<$Res>
    implements $BusinessIntroCopyWith<$Res> {
  factory _$$BusinessIntroImplCopyWith(
          _$BusinessIntroImpl value, $Res Function(_$BusinessIntroImpl) then) =
      __$$BusinessIntroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'sticker') Sticker? sticker});

  @override
  $StickerCopyWith<$Res>? get sticker;
}

/// @nodoc
class __$$BusinessIntroImplCopyWithImpl<$Res>
    extends _$BusinessIntroCopyWithImpl<$Res, _$BusinessIntroImpl>
    implements _$$BusinessIntroImplCopyWith<$Res> {
  __$$BusinessIntroImplCopyWithImpl(
      _$BusinessIntroImpl _value, $Res Function(_$BusinessIntroImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? sticker = freezed,
  }) {
    return _then(_$BusinessIntroImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sticker: freezed == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessIntroImpl implements _BusinessIntro {
  const _$BusinessIntroImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'sticker') this.sticker});

  factory _$BusinessIntroImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessIntroImplFromJson(json);

  /// Optional. Title text of the business intro.
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Message text of the business intro.
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Optional. Sticker of the business intro.
  @override
  @JsonKey(name: 'sticker')
  final Sticker? sticker;

  @override
  String toString() {
    return 'BusinessIntro(title: $title, message: $message, sticker: $sticker)';
  }

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessIntroImplCopyWith<_$BusinessIntroImpl> get copyWith =>
      __$$BusinessIntroImplCopyWithImpl<_$BusinessIntroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessIntroImplToJson(
      this,
    );
  }
}

abstract class _BusinessIntro implements BusinessIntro {
  const factory _BusinessIntro(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'sticker') final Sticker? sticker}) = _$BusinessIntroImpl;

  factory _BusinessIntro.fromJson(Map<String, dynamic> json) =
      _$BusinessIntroImpl.fromJson;

  /// Optional. Title text of the business intro.
  @override
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Message text of the business intro.
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Optional. Sticker of the business intro.
  @override
  @JsonKey(name: 'sticker')
  Sticker? get sticker;

  /// Create a copy of BusinessIntro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessIntroImplCopyWith<_$BusinessIntroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
