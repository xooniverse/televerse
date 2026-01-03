// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaidMedia _$PaidMediaFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'preview':
      return PaidMediaPreview.fromJson(json);
    case 'photo':
      return PaidMediaPhoto.fromJson(json);
    case 'video':
      return PaidMediaVideo.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'PaidMedia',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$PaidMedia {
  /// Type of the paid media, must be "preview"
  @JsonKey(name: 'type')
  PaidMediaType get type;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaCopyWith<PaidMedia> get copyWith =>
      _$PaidMediaCopyWithImpl<PaidMedia>(this as PaidMedia, _$identity);

  /// Serializes this PaidMedia to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PaidMedia(type: $type)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaCopyWith<$Res> {
  factory $PaidMediaCopyWith(PaidMedia value, $Res Function(PaidMedia) _then) =
      _$PaidMediaCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') PaidMediaType type});
}

/// @nodoc
class _$PaidMediaCopyWithImpl<$Res> implements $PaidMediaCopyWith<$Res> {
  _$PaidMediaCopyWithImpl(this._self, this._then);

  final PaidMedia _self;
  final $Res Function(PaidMedia) _then;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PaidMediaType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PaidMedia].
extension PaidMediaPatterns on PaidMedia {
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
    TResult Function(PaidMediaPreview value)? preview,
    TResult Function(PaidMediaPhoto value)? photo,
    TResult Function(PaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PaidMediaPreview() when preview != null:
        return preview(_that);
      case PaidMediaPhoto() when photo != null:
        return photo(_that);
      case PaidMediaVideo() when video != null:
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
    required TResult Function(PaidMediaPreview value) preview,
    required TResult Function(PaidMediaPhoto value) photo,
    required TResult Function(PaidMediaVideo value) video,
  }) {
    final _that = this;
    switch (_that) {
      case PaidMediaPreview():
        return preview(_that);
      case PaidMediaPhoto():
        return photo(_that);
      case PaidMediaVideo():
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
    TResult? Function(PaidMediaPreview value)? preview,
    TResult? Function(PaidMediaPhoto value)? photo,
    TResult? Function(PaidMediaVideo value)? video,
  }) {
    final _that = this;
    switch (_that) {
      case PaidMediaPreview() when preview != null:
        return preview(_that);
      case PaidMediaPhoto() when photo != null:
        return photo(_that);
      case PaidMediaVideo() when video != null:
        return video(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class PaidMediaPreview implements PaidMedia {
  const PaidMediaPreview({
    @JsonKey(name: 'type') this.type = PaidMediaType.preview,
    @JsonKey(name: 'width') this.width,
    @JsonKey(name: 'height') this.height,
    @JsonKey(name: 'duration') this.duration,
  }) : assert(
         type == PaidMediaType.preview,
         'type must be PaidMediaType.preview',
       );
  factory PaidMediaPreview.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaPreviewFromJson(json);

  /// Type of the paid media, must be "preview"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// Optional. Media width as defined by the sender.
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Media height as defined by the sender.
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Duration of the media in seconds as defined by the sender.
  @JsonKey(name: 'duration')
  final int? duration;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaPreviewCopyWith<PaidMediaPreview> get copyWith =>
      _$PaidMediaPreviewCopyWithImpl<PaidMediaPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMediaPreviewToJson(this);
  }

  @override
  String toString() {
    return 'PaidMedia.preview(type: $type, width: $width, height: $height, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaPreviewCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory $PaidMediaPreviewCopyWith(
    PaidMediaPreview value,
    $Res Function(PaidMediaPreview) _then,
  ) = _$PaidMediaPreviewCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') PaidMediaType type,
    @JsonKey(name: 'width') int? width,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'duration') int? duration,
  });
}

/// @nodoc
class _$PaidMediaPreviewCopyWithImpl<$Res>
    implements $PaidMediaPreviewCopyWith<$Res> {
  _$PaidMediaPreviewCopyWithImpl(this._self, this._then);

  final PaidMediaPreview _self;
  final $Res Function(PaidMediaPreview) _then;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      PaidMediaPreview(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PaidMediaType,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class PaidMediaPhoto implements PaidMedia {
  const PaidMediaPhoto({
    @JsonKey(name: 'type') this.type = PaidMediaType.photo,
    @JsonKey(name: 'photo') required final List<PhotoSize> photo,
  }) : assert(type == PaidMediaType.photo, 'type must be PaidMediaType.photo'),
       _photo = photo;
  factory PaidMediaPhoto.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaPhotoFromJson(json);

  /// Type of the paid media, must be "photo"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// The photo.
  final List<PhotoSize> _photo;

  /// The photo.
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaPhotoCopyWith<PaidMediaPhoto> get copyWith =>
      _$PaidMediaPhotoCopyWithImpl<PaidMediaPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMediaPhotoToJson(this);
  }

  @override
  String toString() {
    return 'PaidMedia.photo(type: $type, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaPhotoCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory $PaidMediaPhotoCopyWith(
    PaidMediaPhoto value,
    $Res Function(PaidMediaPhoto) _then,
  ) = _$PaidMediaPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') PaidMediaType type,
    @JsonKey(name: 'photo') List<PhotoSize> photo,
  });
}

/// @nodoc
class _$PaidMediaPhotoCopyWithImpl<$Res>
    implements $PaidMediaPhotoCopyWith<$Res> {
  _$PaidMediaPhotoCopyWithImpl(this._self, this._then);

  final PaidMediaPhoto _self;
  final $Res Function(PaidMediaPhoto) _then;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? photo = null}) {
    return _then(
      PaidMediaPhoto(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PaidMediaType,
        photo: null == photo
            ? _self._photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as List<PhotoSize>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class PaidMediaVideo implements PaidMedia {
  const PaidMediaVideo({
    @JsonKey(name: 'type') this.type = PaidMediaType.video,
    @JsonKey(name: 'video') required this.video,
  }) : assert(type == PaidMediaType.video, 'type must be PaidMediaType.video');
  factory PaidMediaVideo.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaVideoFromJson(json);

  /// Type of the paid media, must be "video"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// The video.
  @JsonKey(name: 'video')
  final Video video;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaidMediaVideoCopyWith<PaidMediaVideo> get copyWith =>
      _$PaidMediaVideoCopyWithImpl<PaidMediaVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaidMediaVideoToJson(this);
  }

  @override
  String toString() {
    return 'PaidMedia.video(type: $type, video: $video)';
  }
}

/// @nodoc
abstract mixin class $PaidMediaVideoCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory $PaidMediaVideoCopyWith(
    PaidMediaVideo value,
    $Res Function(PaidMediaVideo) _then,
  ) = _$PaidMediaVideoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') PaidMediaType type,
    @JsonKey(name: 'video') Video video,
  });

  $VideoCopyWith<$Res> get video;
}

/// @nodoc
class _$PaidMediaVideoCopyWithImpl<$Res>
    implements $PaidMediaVideoCopyWith<$Res> {
  _$PaidMediaVideoCopyWithImpl(this._self, this._then);

  final PaidMediaVideo _self;
  final $Res Function(PaidMediaVideo) _then;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? video = null}) {
    return _then(
      PaidMediaVideo(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PaidMediaType,
        video: null == video
            ? _self.video
            : video // ignore: cast_nullable_to_non_nullable
                  as Video,
      ),
    );
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get video {
    return $VideoCopyWith<$Res>(_self.video, (value) {
      return _then(_self.copyWith(video: value));
    });
  }
}
