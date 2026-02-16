// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_paid_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputPaidMedia {
  /// Type of the media, must be "photo"
  @JsonKey(name: 'type')
  InputPaidMediaType get type;

  /// File to send.
  @InputFileConverter()
  @JsonKey(name: 'media')
  InputFile get media;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputPaidMediaCopyWith<InputPaidMedia> get copyWith =>
      _$InputPaidMediaCopyWithImpl<InputPaidMedia>(
        this as InputPaidMedia,
        _$identity,
      );

  /// Serializes this InputPaidMedia to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputPaidMedia(type: $type, media: $media)';
  }
}

/// @nodoc
abstract mixin class $InputPaidMediaCopyWith<$Res> {
  factory $InputPaidMediaCopyWith(
    InputPaidMedia value,
    $Res Function(InputPaidMedia) _then,
  ) = _$InputPaidMediaCopyWithImpl;
  @useResult
  $Res call({InputPaidMediaType type, @InputFileConverter() InputFile media});
}

/// @nodoc
class _$InputPaidMediaCopyWithImpl<$Res>
    implements $InputPaidMediaCopyWith<$Res> {
  _$InputPaidMediaCopyWithImpl(this._self, this._then);

  final InputPaidMedia _self;
  final $Res Function(InputPaidMedia) _then;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? media = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputPaidMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [InputPaidMedia].
extension InputPaidMediaPatterns on InputPaidMedia {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPaidMediaPhoto value)? photo,
    TResult Function(InputPaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InputPaidMediaPhoto() when photo != null:
        return photo(_that);
      case InputPaidMediaVideo() when video != null:
        return video(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(InputPaidMediaPhoto value) photo,
    required TResult Function(InputPaidMediaVideo value) video,
  }) {
    final _that = this;
    switch (_that) {
      case InputPaidMediaPhoto():
        return photo(_that);
      case InputPaidMediaVideo():
        return video(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPaidMediaPhoto value)? photo,
    TResult? Function(InputPaidMediaVideo value)? video,
  }) {
    final _that = this;
    switch (_that) {
      case InputPaidMediaPhoto() when photo != null:
        return photo(_that);
      case InputPaidMediaVideo() when video != null:
        return video(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputPaidMediaPhoto extends InputPaidMedia {
  const InputPaidMediaPhoto({
    this.type = InputPaidMediaType.photo,
    @InputFileConverter() required this.media,
  }) : assert(
         type == InputPaidMediaType.photo,
         'type must be InputPaidMediaType.photo',
       ),
       super._();

  /// Type of the media, must be "photo"
  @override
  @JsonKey()
  final InputPaidMediaType type;

  /// File to send.
  @override
  @InputFileConverter()
  final InputFile media;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputPaidMediaPhotoCopyWith<InputPaidMediaPhoto> get copyWith =>
      _$InputPaidMediaPhotoCopyWithImpl<InputPaidMediaPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputPaidMediaPhotoToJson(this);
  }

  @override
  String toString() {
    return 'InputPaidMedia.photo(type: $type, media: $media)';
  }
}

/// @nodoc
abstract mixin class $InputPaidMediaPhotoCopyWith<$Res>
    implements $InputPaidMediaCopyWith<$Res> {
  factory $InputPaidMediaPhotoCopyWith(
    InputPaidMediaPhoto value,
    $Res Function(InputPaidMediaPhoto) _then,
  ) = _$InputPaidMediaPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({InputPaidMediaType type, @InputFileConverter() InputFile media});
}

/// @nodoc
class _$InputPaidMediaPhotoCopyWithImpl<$Res>
    implements $InputPaidMediaPhotoCopyWith<$Res> {
  _$InputPaidMediaPhotoCopyWithImpl(this._self, this._then);

  final InputPaidMediaPhoto _self;
  final $Res Function(InputPaidMediaPhoto) _then;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? media = null}) {
    return _then(
      InputPaidMediaPhoto(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputPaidMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputPaidMediaVideo extends InputPaidMedia {
  const InputPaidMediaVideo({
    @JsonKey(name: 'type') this.type = InputPaidMediaType.video,
    @InputFileConverter() @JsonKey(name: 'media') required this.media,
    @InputFileConverter() @JsonKey(name: 'thumbnail') this.thumbnail,
    @JsonKey(name: 'width') this.width,
    @JsonKey(name: 'height') this.height,
    @JsonKey(name: 'duration') this.duration,
    @JsonKey(name: 'supports_streaming') this.supportsStreaming,
    @JsonKey(name: 'start_timestamp') this.startTimestamp,
    @InputFileConverter() @JsonKey(name: 'cover') this.cover,
  }) : assert(
         type == InputPaidMediaType.video,
         'type must be InputPaidMediaType.video',
       ),
       super._();

  /// Type of the media, must be "video".
  @override
  @JsonKey(name: 'type')
  final InputPaidMediaType type;

  /// File to send.
  @override
  @InputFileConverter()
  @JsonKey(name: 'media')
  final InputFile media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail
  /// generation for the file is supported server-side.
  @InputFileConverter()
  @JsonKey(name: 'thumbnail')
  final InputFile? thumbnail;

  /// Optional. Video width.
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Video height.
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Video duration in seconds.
  @JsonKey(name: 'duration')
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming.
  @JsonKey(name: 'supports_streaming')
  final bool? supportsStreaming;

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;

  /// Optional. Cover for the video in the message.
  @InputFileConverter()
  @JsonKey(name: 'cover')
  final InputFile? cover;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputPaidMediaVideoCopyWith<InputPaidMediaVideo> get copyWith =>
      _$InputPaidMediaVideoCopyWithImpl<InputPaidMediaVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputPaidMediaVideoToJson(this);
  }

  @override
  String toString() {
    return 'InputPaidMedia.video(type: $type, media: $media, thumbnail: $thumbnail, width: $width, height: $height, duration: $duration, supportsStreaming: $supportsStreaming, startTimestamp: $startTimestamp, cover: $cover)';
  }
}

/// @nodoc
abstract mixin class $InputPaidMediaVideoCopyWith<$Res>
    implements $InputPaidMediaCopyWith<$Res> {
  factory $InputPaidMediaVideoCopyWith(
    InputPaidMediaVideo value,
    $Res Function(InputPaidMediaVideo) _then,
  ) = _$InputPaidMediaVideoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') InputPaidMediaType type,
    @InputFileConverter() @JsonKey(name: 'media') InputFile media,
    @InputFileConverter() @JsonKey(name: 'thumbnail') InputFile? thumbnail,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'supports_streaming') bool? supportsStreaming,
    @JsonKey(name: 'start_timestamp') int? startTimestamp,
    @InputFileConverter() @JsonKey(name: 'cover') InputFile? cover,
  });
}

/// @nodoc
class _$InputPaidMediaVideoCopyWithImpl<$Res>
    implements $InputPaidMediaVideoCopyWith<$Res> {
  _$InputPaidMediaVideoCopyWithImpl(this._self, this._then);

  final InputPaidMediaVideo _self;
  final $Res Function(InputPaidMediaVideo) _then;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? duration = freezed,
    Object? supportsStreaming = freezed,
    Object? startTimestamp = freezed,
    Object? cover = freezed,
  }) {
    return _then(
      InputPaidMediaVideo(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as InputPaidMediaType,
        media: null == media
            ? _self.media
            : media // ignore: cast_nullable_to_non_nullable
                  as InputFile,
        thumbnail: freezed == thumbnail
            ? _self.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as InputFile?,
        width: freezed == width
            ? _self.width
            : width // ignore: cast_nullable_to_non_nullable
                  as int?,
        height: freezed == height
            ? _self.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int?,
        duration: freezed == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int?,
        supportsStreaming: freezed == supportsStreaming
            ? _self.supportsStreaming
            : supportsStreaming // ignore: cast_nullable_to_non_nullable
                  as bool?,
        startTimestamp: freezed == startTimestamp
            ? _self.startTimestamp
            : startTimestamp // ignore: cast_nullable_to_non_nullable
                  as int?,
        cover: freezed == cover
            ? _self.cover
            : cover // ignore: cast_nullable_to_non_nullable
                  as InputFile?,
      ),
    );
  }
}
