// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Animation {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Video width as defined by sender
  @JsonKey(name: 'width')
  int get width;

  /// Video height as defined by sender
  @JsonKey(name: 'height')
  int get height;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. Animation thumbnail as defined by sender
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Optional. Original animation filename as defined by sender
  @JsonKey(name: 'file_name')
  String? get fileName;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: 'mime_type')
  String? get mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<Animation> get copyWith =>
      _$AnimationCopyWithImpl<Animation>(this as Animation, _$identity);

  /// Serializes this Animation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Animation(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumbnail: $thumbnail, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $AnimationCopyWith<$Res> {
  factory $AnimationCopyWith(Animation value, $Res Function(Animation) _then) =
      _$AnimationCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'width') int width,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$AnimationCopyWithImpl<$Res> implements $AnimationCopyWith<$Res> {
  _$AnimationCopyWithImpl(this._self, this._then);

  final Animation _self;
  final $Res Function(Animation) _then;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _self.copyWith(
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        width: null == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail: freezed == thumbnail
            ? _self.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as PhotoSize?,
        fileName: freezed == fileName
            ? _self.fileName
            : fileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_self.thumbnail!, (value) {
      return _then(_self.copyWith(thumbnail: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Animation].
extension AnimationPatterns on Animation {
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
    TResult Function(_Animation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Animation() when $default != null:
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
    TResult Function(_Animation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Animation():
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
    TResult? Function(_Animation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Animation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Animation implements Animation {
  const _Animation({
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    @JsonKey(name: 'width') required this.width,
    @JsonKey(name: 'height') required this.height,
    @JsonKey(name: 'duration') required this.duration,
    @JsonKey(name: 'thumbnail') this.thumbnail,
    @JsonKey(name: 'file_name') this.fileName,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'file_size') this.fileSize,
  });
  factory _Animation.fromJson(Map<String, dynamic> json) =>
      _$AnimationFromJson(json);

  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  final String fileUniqueId;

  /// Video width as defined by sender
  @override
  @JsonKey(name: 'width')
  final int width;

  /// Video height as defined by sender
  @override
  @JsonKey(name: 'height')
  final int height;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @override
  @JsonKey(name: 'duration')
  final int duration;

  /// Optional. Animation thumbnail as defined by sender
  @override
  @JsonKey(name: 'thumbnail')
  final PhotoSize? thumbnail;

  /// Optional. Original animation filename as defined by sender
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;

  /// Optional. MIME type of the file as defined by sender
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimationCopyWith<_Animation> get copyWith =>
      __$AnimationCopyWithImpl<_Animation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimationToJson(this);
  }

  @override
  String toString() {
    return 'Animation(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumbnail: $thumbnail, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$AnimationCopyWith<$Res>
    implements $AnimationCopyWith<$Res> {
  factory _$AnimationCopyWith(
    _Animation value,
    $Res Function(_Animation) _then,
  ) = __$AnimationCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'width') int width,
    @JsonKey(name: 'height') int height,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$AnimationCopyWithImpl<$Res> implements _$AnimationCopyWith<$Res> {
  __$AnimationCopyWithImpl(this._self, this._then);

  final _Animation _self;
  final $Res Function(_Animation) _then;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _Animation(
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        width: null == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail: freezed == thumbnail
            ? _self.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as PhotoSize?,
        fileName: freezed == fileName
            ? _self.fileName
            : fileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_self.thumbnail!, (value) {
      return _then(_self.copyWith(thumbnail: value));
    });
  }
}
