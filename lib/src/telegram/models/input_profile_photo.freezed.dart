// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_profile_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InputProfilePhoto _$InputProfilePhotoFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'static':
      return InputProfilePhotoStatic.fromJson(json);
    case 'animated':
      return InputProfilePhotoAnimated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'InputProfilePhoto',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$InputProfilePhoto {
  /// Type of the profile photo, always "static"
  @JsonKey(name: 'type')
  InputProfilePhotoType get type;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputProfilePhotoCopyWith<InputProfilePhoto> get copyWith =>
      _$InputProfilePhotoCopyWithImpl<InputProfilePhoto>(
          this as InputProfilePhoto, _$identity);

  /// Serializes this InputProfilePhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputProfilePhoto(type: $type)';
  }
}

/// @nodoc
abstract mixin class $InputProfilePhotoCopyWith<$Res> {
  factory $InputProfilePhotoCopyWith(
          InputProfilePhoto value, $Res Function(InputProfilePhoto) _then) =
      _$InputProfilePhotoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') InputProfilePhotoType type});
}

/// @nodoc
class _$InputProfilePhotoCopyWithImpl<$Res>
    implements $InputProfilePhotoCopyWith<$Res> {
  _$InputProfilePhotoCopyWithImpl(this._self, this._then);

  final InputProfilePhoto _self;
  final $Res Function(InputProfilePhoto) _then;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputProfilePhotoType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class InputProfilePhotoStatic extends InputProfilePhoto {
  const InputProfilePhotoStatic(
      {@JsonKey(name: 'type') this.type = InputProfilePhotoType.static,
      @JsonKey(name: 'photo') @InputFileConverter() required this.photo})
      : super._();
  factory InputProfilePhotoStatic.fromJson(Map<String, dynamic> json) =>
      _$InputProfilePhotoStaticFromJson(json);

  /// Type of the profile photo, always "static"
  @override
  @JsonKey(name: 'type')
  final InputProfilePhotoType type;

  /// The static profile photo. Profile photos can't be reused and can only be
  /// uploaded as a new file.
  @JsonKey(name: 'photo')
  @InputFileConverter()
  final InputFile photo;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputProfilePhotoStaticCopyWith<InputProfilePhotoStatic> get copyWith =>
      _$InputProfilePhotoStaticCopyWithImpl<InputProfilePhotoStatic>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputProfilePhotoStaticToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputProfilePhoto.static(type: $type, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class $InputProfilePhotoStaticCopyWith<$Res>
    implements $InputProfilePhotoCopyWith<$Res> {
  factory $InputProfilePhotoStaticCopyWith(InputProfilePhotoStatic value,
          $Res Function(InputProfilePhotoStatic) _then) =
      _$InputProfilePhotoStaticCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputProfilePhotoType type,
      @JsonKey(name: 'photo') @InputFileConverter() InputFile photo});
}

/// @nodoc
class _$InputProfilePhotoStaticCopyWithImpl<$Res>
    implements $InputProfilePhotoStaticCopyWith<$Res> {
  _$InputProfilePhotoStaticCopyWithImpl(this._self, this._then);

  final InputProfilePhotoStatic _self;
  final $Res Function(InputProfilePhotoStatic) _then;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? photo = null,
  }) {
    return _then(InputProfilePhotoStatic(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputProfilePhotoType,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as InputFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class InputProfilePhotoAnimated extends InputProfilePhoto {
  const InputProfilePhotoAnimated(
      {@JsonKey(name: 'type') this.type = InputProfilePhotoType.animated,
      @JsonKey(name: 'animation') @InputFileConverter() required this.animation,
      @JsonKey(name: 'main_frame_timestamp') this.mainFrameTimestamp})
      : super._();
  factory InputProfilePhotoAnimated.fromJson(Map<String, dynamic> json) =>
      _$InputProfilePhotoAnimatedFromJson(json);

  /// Type of the profile photo, always "animated"
  @override
  @JsonKey(name: 'type')
  final InputProfilePhotoType type;

  /// The animated profile photo. Profile photos can't be reused and can only be
  /// uploaded as a new file.
  @JsonKey(name: 'animation')
  @InputFileConverter()
  final InputFile animation;

  /// Optional. Timestamp in seconds of the frame that will be used as the
  /// static profile photo. Defaults to 0.0.
  @JsonKey(name: 'main_frame_timestamp')
  final double? mainFrameTimestamp;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputProfilePhotoAnimatedCopyWith<InputProfilePhotoAnimated> get copyWith =>
      _$InputProfilePhotoAnimatedCopyWithImpl<InputProfilePhotoAnimated>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputProfilePhotoAnimatedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputProfilePhoto.animated(type: $type, animation: $animation, mainFrameTimestamp: $mainFrameTimestamp)';
  }
}

/// @nodoc
abstract mixin class $InputProfilePhotoAnimatedCopyWith<$Res>
    implements $InputProfilePhotoCopyWith<$Res> {
  factory $InputProfilePhotoAnimatedCopyWith(InputProfilePhotoAnimated value,
          $Res Function(InputProfilePhotoAnimated) _then) =
      _$InputProfilePhotoAnimatedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputProfilePhotoType type,
      @JsonKey(name: 'animation') @InputFileConverter() InputFile animation,
      @JsonKey(name: 'main_frame_timestamp') double? mainFrameTimestamp});
}

/// @nodoc
class _$InputProfilePhotoAnimatedCopyWithImpl<$Res>
    implements $InputProfilePhotoAnimatedCopyWith<$Res> {
  _$InputProfilePhotoAnimatedCopyWithImpl(this._self, this._then);

  final InputProfilePhotoAnimated _self;
  final $Res Function(InputProfilePhotoAnimated) _then;

  /// Create a copy of InputProfilePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? animation = null,
    Object? mainFrameTimestamp = freezed,
  }) {
    return _then(InputProfilePhotoAnimated(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputProfilePhotoType,
      animation: null == animation
          ? _self.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as InputFile,
      mainFrameTimestamp: freezed == mainFrameTimestamp
          ? _self.mainFrameTimestamp
          : mainFrameTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}
