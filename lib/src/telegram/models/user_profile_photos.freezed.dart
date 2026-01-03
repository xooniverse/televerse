// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfilePhotos {
  /// Total number of profile pictures the target user has
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  @JsonKey(name: 'photos')
  List<List<PhotoSize>> get photos;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfilePhotosCopyWith<UserProfilePhotos> get copyWith =>
      _$UserProfilePhotosCopyWithImpl<UserProfilePhotos>(
        this as UserProfilePhotos,
        _$identity,
      );

  /// Serializes this UserProfilePhotos to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UserProfilePhotos(totalCount: $totalCount, photos: $photos)';
  }
}

/// @nodoc
abstract mixin class $UserProfilePhotosCopyWith<$Res> {
  factory $UserProfilePhotosCopyWith(
    UserProfilePhotos value,
    $Res Function(UserProfilePhotos) _then,
  ) = _$UserProfilePhotosCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'photos') List<List<PhotoSize>> photos,
  });
}

/// @nodoc
class _$UserProfilePhotosCopyWithImpl<$Res>
    implements $UserProfilePhotosCopyWith<$Res> {
  _$UserProfilePhotosCopyWithImpl(this._self, this._then);

  final UserProfilePhotos _self;
  final $Res Function(UserProfilePhotos) _then;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? photos = null}) {
    return _then(
      _self.copyWith(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        photos: null == photos
            ? _self.photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<List<PhotoSize>>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UserProfilePhotos].
extension UserProfilePhotosPatterns on UserProfilePhotos {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserProfilePhotos value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfilePhotos() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserProfilePhotos value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfilePhotos():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserProfilePhotos value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfilePhotos() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserProfilePhotos implements UserProfilePhotos {
  const _UserProfilePhotos({
    @JsonKey(name: 'total_count') required this.totalCount,
    @JsonKey(name: 'photos') required final List<List<PhotoSize>> photos,
  }) : _photos = photos;
  factory _UserProfilePhotos.fromJson(Map<String, dynamic> json) =>
      _$UserProfilePhotosFromJson(json);

  /// Total number of profile pictures the target user has
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  final List<List<PhotoSize>> _photos;

  /// Requested profile pictures (in up to 4 sizes each)
  @override
  @JsonKey(name: 'photos')
  List<List<PhotoSize>> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfilePhotosCopyWith<_UserProfilePhotos> get copyWith =>
      __$UserProfilePhotosCopyWithImpl<_UserProfilePhotos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfilePhotosToJson(this);
  }

  @override
  String toString() {
    return 'UserProfilePhotos(totalCount: $totalCount, photos: $photos)';
  }
}

/// @nodoc
abstract mixin class _$UserProfilePhotosCopyWith<$Res>
    implements $UserProfilePhotosCopyWith<$Res> {
  factory _$UserProfilePhotosCopyWith(
    _UserProfilePhotos value,
    $Res Function(_UserProfilePhotos) _then,
  ) = __$UserProfilePhotosCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'photos') List<List<PhotoSize>> photos,
  });
}

/// @nodoc
class __$UserProfilePhotosCopyWithImpl<$Res>
    implements _$UserProfilePhotosCopyWith<$Res> {
  __$UserProfilePhotosCopyWithImpl(this._self, this._then);

  final _UserProfilePhotos _self;
  final $Res Function(_UserProfilePhotos) _then;

  /// Create a copy of UserProfilePhotos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? totalCount = null, Object? photos = null}) {
    return _then(
      _UserProfilePhotos(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        photos: null == photos
            ? _self._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<List<PhotoSize>>,
      ),
    );
  }
}
