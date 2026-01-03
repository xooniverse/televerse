// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Audio {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. Performer of the audio as defined by sender or by audio tags
  @JsonKey(name: 'performer')
  String? get performer;

  /// Optional. Title of the audio as defined by sender or by audio tags
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Original filename as defined by sender
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

  /// Optional. Thumbnail of the album cover to which the music file belongs
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Create a copy of Audio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AudioCopyWith<Audio> get copyWith =>
      _$AudioCopyWithImpl<Audio>(this as Audio, _$identity);

  /// Serializes this Audio to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Audio(fileId: $fileId, fileUniqueId: $fileUniqueId, duration: $duration, performer: $performer, title: $title, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class $AudioCopyWith<$Res> {
  factory $AudioCopyWith(Audio value, $Res Function(Audio) _then) =
      _$AudioCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'performer') String? performer,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
  });

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$AudioCopyWithImpl<$Res> implements $AudioCopyWith<$Res> {
  _$AudioCopyWithImpl(this._self, this._then);

  final Audio _self;
  final $Res Function(Audio) _then;

  /// Create a copy of Audio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? duration = null,
    Object? performer = freezed,
    Object? title = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
    Object? thumbnail = freezed,
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
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        performer: freezed == performer
            ? _self.performer
            : performer // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        thumbnail: freezed == thumbnail
            ? _self.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as PhotoSize?,
      ),
    );
  }

  /// Create a copy of Audio
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

/// Adds pattern-matching-related methods to [Audio].
extension AudioPatterns on Audio {
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
    TResult Function(_Audio value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Audio() when $default != null:
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
    TResult Function(_Audio value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Audio():
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
    TResult? Function(_Audio value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Audio() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Audio implements Audio {
  const _Audio({
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    @JsonKey(name: 'duration') required this.duration,
    @JsonKey(name: 'performer') this.performer,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'file_name') this.fileName,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'file_size') this.fileSize,
    @JsonKey(name: 'thumbnail') this.thumbnail,
  });
  factory _Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

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

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @override
  @JsonKey(name: 'duration')
  final int duration;

  /// Optional. Performer of the audio as defined by sender or by audio tags
  @override
  @JsonKey(name: 'performer')
  final String? performer;

  /// Optional. Title of the audio as defined by sender or by audio tags
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Original filename as defined by sender
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

  /// Optional. Thumbnail of the album cover to which the music file belongs
  @override
  @JsonKey(name: 'thumbnail')
  final PhotoSize? thumbnail;

  /// Create a copy of Audio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AudioCopyWith<_Audio> get copyWith =>
      __$AudioCopyWithImpl<_Audio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AudioToJson(this);
  }

  @override
  String toString() {
    return 'Audio(fileId: $fileId, fileUniqueId: $fileUniqueId, duration: $duration, performer: $performer, title: $title, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class _$AudioCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory _$AudioCopyWith(_Audio value, $Res Function(_Audio) _then) =
      __$AudioCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'performer') String? performer,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
  });

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$AudioCopyWithImpl<$Res> implements _$AudioCopyWith<$Res> {
  __$AudioCopyWithImpl(this._self, this._then);

  final _Audio _self;
  final $Res Function(_Audio) _then;

  /// Create a copy of Audio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? duration = null,
    Object? performer = freezed,
    Object? title = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(
      _Audio(
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        performer: freezed == performer
            ? _self.performer
            : performer // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        thumbnail: freezed == thumbnail
            ? _self.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as PhotoSize?,
      ),
    );
  }

  /// Create a copy of Audio
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
