// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Video {
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

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @JsonKey(name: 'start_timestamp')
  int? get startTimestamp;

  /// Optional. Available sizes of the cover of the video in the message
  @JsonKey(name: 'cover')
  List<PhotoSize>? get cover;

  /// Optional. List of available qualities of the video
  @JsonKey(name: 'qualities')
  List<VideoQuality>? get qualities;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoCopyWith<Video> get copyWith =>
      _$VideoCopyWithImpl<Video>(this as Video, _$identity);

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Video(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumbnail: $thumbnail, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, startTimestamp: $startTimestamp, cover: $cover, qualities: $qualities)';
  }
}

/// @nodoc
abstract mixin class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) _then) =
      _$VideoCopyWithImpl;
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
    @JsonKey(name: 'start_timestamp') int? startTimestamp,
    @JsonKey(name: 'cover') List<PhotoSize>? cover,
    @JsonKey(name: 'qualities') List<VideoQuality>? qualities,
  });

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._self, this._then);

  final Video _self;
  final $Res Function(Video) _then;

  /// Create a copy of Video
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
    Object? startTimestamp = freezed,
    Object? cover = freezed,
    Object? qualities = freezed,
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
        startTimestamp: freezed == startTimestamp
            ? _self.startTimestamp
            : startTimestamp // ignore: cast_nullable_to_non_nullable
                  as int?,
        cover: freezed == cover
            ? _self.cover
            : cover // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        qualities: freezed == qualities
            ? _self.qualities
            : qualities // ignore: cast_nullable_to_non_nullable
                  as List<VideoQuality>?,
      ),
    );
  }

  /// Create a copy of Video
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

/// Adds pattern-matching-related methods to [Video].
extension VideoPatterns on Video {
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
    TResult Function(_Video value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
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
    TResult Function(_Video value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video():
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
    TResult? Function(_Video value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Video() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Video implements Video {
  const _Video({
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    @JsonKey(name: 'width') required this.width,
    @JsonKey(name: 'height') required this.height,
    @JsonKey(name: 'duration') required this.duration,
    @JsonKey(name: 'thumbnail') this.thumbnail,
    @JsonKey(name: 'file_name') this.fileName,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'file_size') this.fileSize,
    @JsonKey(name: 'start_timestamp') this.startTimestamp,
    @JsonKey(name: 'cover') final List<PhotoSize>? cover,
    @JsonKey(name: 'qualities') final List<VideoQuality>? qualities,
  }) : _cover = cover,
       _qualities = qualities;
  factory _Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

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

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @override
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;

  /// Optional. Available sizes of the cover of the video in the message
  final List<PhotoSize>? _cover;

  /// Optional. Available sizes of the cover of the video in the message
  @override
  @JsonKey(name: 'cover')
  List<PhotoSize>? get cover {
    final value = _cover;
    if (value == null) return null;
    if (_cover is EqualUnmodifiableListView) return _cover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. List of available qualities of the video
  final List<VideoQuality>? _qualities;

  /// Optional. List of available qualities of the video
  @override
  @JsonKey(name: 'qualities')
  List<VideoQuality>? get qualities {
    final value = _qualities;
    if (value == null) return null;
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoToJson(this);
  }

  @override
  String toString() {
    return 'Video(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumbnail: $thumbnail, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, startTimestamp: $startTimestamp, cover: $cover, qualities: $qualities)';
  }
}

/// @nodoc
abstract mixin class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) _then) =
      __$VideoCopyWithImpl;
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
    @JsonKey(name: 'start_timestamp') int? startTimestamp,
    @JsonKey(name: 'cover') List<PhotoSize>? cover,
    @JsonKey(name: 'qualities') List<VideoQuality>? qualities,
  });

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(this._self, this._then);

  final _Video _self;
  final $Res Function(_Video) _then;

  /// Create a copy of Video
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
    Object? startTimestamp = freezed,
    Object? cover = freezed,
    Object? qualities = freezed,
  }) {
    return _then(
      _Video(
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
        startTimestamp: freezed == startTimestamp
            ? _self.startTimestamp
            : startTimestamp // ignore: cast_nullable_to_non_nullable
                  as int?,
        cover: freezed == cover
            ? _self._cover
            : cover // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>?,
        qualities: freezed == qualities
            ? _self._qualities
            : qualities // ignore: cast_nullable_to_non_nullable
                  as List<VideoQuality>?,
      ),
    );
  }

  /// Create a copy of Video
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
