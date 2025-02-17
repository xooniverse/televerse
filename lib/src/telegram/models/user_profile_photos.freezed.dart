// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfilePhotos _$UserProfilePhotosFromJson(Map<String, dynamic> json) {
  return _UserProfilePhotos.fromJson(json);
}

/// @nodoc
mixin _$UserProfilePhotos {
  /// Total number of profile pictures the target user has
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Requested profile pictures (in up to 4 sizes each)
  List<List<PhotoSize>> get photos => throw _privateConstructorUsedError;

  /// Serializes this UserProfilePhotos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfilePhotosCopyWith<UserProfilePhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfilePhotosCopyWith<$Res> {
  factory $UserProfilePhotosCopyWith(
          UserProfilePhotos value, $Res Function(UserProfilePhotos) then) =
      _$UserProfilePhotosCopyWithImpl<$Res, UserProfilePhotos>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      List<List<PhotoSize>> photos});
}

/// @nodoc
class _$UserProfilePhotosCopyWithImpl<$Res, $Val extends UserProfilePhotos>
    implements $UserProfilePhotosCopyWith<$Res> {
  _$UserProfilePhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<List<PhotoSize>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfilePhotosImplCopyWith<$Res>
    implements $UserProfilePhotosCopyWith<$Res> {
  factory _$$UserProfilePhotosImplCopyWith(_$UserProfilePhotosImpl value,
          $Res Function(_$UserProfilePhotosImpl) then) =
      __$$UserProfilePhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      List<List<PhotoSize>> photos});
}

/// @nodoc
class __$$UserProfilePhotosImplCopyWithImpl<$Res>
    extends _$UserProfilePhotosCopyWithImpl<$Res, _$UserProfilePhotosImpl>
    implements _$$UserProfilePhotosImplCopyWith<$Res> {
  __$$UserProfilePhotosImplCopyWithImpl(_$UserProfilePhotosImpl _value,
      $Res Function(_$UserProfilePhotosImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? photos = null,
  }) {
    return _then(_$UserProfilePhotosImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<List<PhotoSize>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfilePhotosImpl implements _UserProfilePhotos {
  const _$UserProfilePhotosImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      required final List<List<PhotoSize>> photos})
      : _photos = photos;

  factory _$UserProfilePhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfilePhotosImplFromJson(json);

  /// Total number of profile pictures the target user has
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  final List<List<PhotoSize>> _photos;

  /// Requested profile pictures (in up to 4 sizes each)
  @override
  List<List<PhotoSize>> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'UserProfilePhotos(totalCount: $totalCount, photos: $photos)';
  }

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfilePhotosImplCopyWith<_$UserProfilePhotosImpl> get copyWith =>
      __$$UserProfilePhotosImplCopyWithImpl<_$UserProfilePhotosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfilePhotosImplToJson(
      this,
    );
  }
}

abstract class _UserProfilePhotos implements UserProfilePhotos {
  const factory _UserProfilePhotos(
      {@JsonKey(name: 'total_count') required final int totalCount,
      required final List<List<PhotoSize>> photos}) = _$UserProfilePhotosImpl;

  factory _UserProfilePhotos.fromJson(Map<String, dynamic> json) =
      _$UserProfilePhotosImpl.fromJson;

  /// Total number of profile pictures the target user has
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  @override
  List<List<PhotoSize>> get photos;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfilePhotosImplCopyWith<_$UserProfilePhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
