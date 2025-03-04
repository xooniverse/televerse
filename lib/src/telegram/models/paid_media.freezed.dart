// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
          json, 'type', 'PaidMedia', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PaidMedia {
  /// Type of the paid media, must be "preview"
  @JsonKey(name: 'type')
  PaidMediaType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaidMediaPreview value) preview,
    required TResult Function(PaidMediaPhoto value) photo,
    required TResult Function(PaidMediaVideo value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaidMediaPreview value)? preview,
    TResult? Function(PaidMediaPhoto value)? photo,
    TResult? Function(PaidMediaVideo value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaidMediaPreview value)? preview,
    TResult Function(PaidMediaPhoto value)? photo,
    TResult Function(PaidMediaVideo value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PaidMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaidMediaCopyWith<PaidMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaidMediaCopyWith<$Res> {
  factory $PaidMediaCopyWith(PaidMedia value, $Res Function(PaidMedia) then) =
      _$PaidMediaCopyWithImpl<$Res, PaidMedia>;
  @useResult
  $Res call({@JsonKey(name: 'type') PaidMediaType type});
}

/// @nodoc
class _$PaidMediaCopyWithImpl<$Res, $Val extends PaidMedia>
    implements $PaidMediaCopyWith<$Res> {
  _$PaidMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaidMediaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaidMediaPreviewImplCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory _$$PaidMediaPreviewImplCopyWith(_$PaidMediaPreviewImpl value,
          $Res Function(_$PaidMediaPreviewImpl) then) =
      __$$PaidMediaPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') PaidMediaType type,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration') int? duration});
}

/// @nodoc
class __$$PaidMediaPreviewImplCopyWithImpl<$Res>
    extends _$PaidMediaCopyWithImpl<$Res, _$PaidMediaPreviewImpl>
    implements _$$PaidMediaPreviewImplCopyWith<$Res> {
  __$$PaidMediaPreviewImplCopyWithImpl(_$PaidMediaPreviewImpl _value,
      $Res Function(_$PaidMediaPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$PaidMediaPreviewImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaidMediaType,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidMediaPreviewImpl implements PaidMediaPreview {
  const _$PaidMediaPreviewImpl(
      {@JsonKey(name: 'type') this.type = PaidMediaType.preview,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'duration') this.duration})
      : assert(type == PaidMediaType.preview,
            'type must be PaidMediaType.preview');

  factory _$PaidMediaPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidMediaPreviewImplFromJson(json);

  /// Type of the paid media, must be "preview"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// Optional. Media width as defined by the sender.
  @override
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Media height as defined by the sender.
  @override
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Duration of the media in seconds as defined by the sender.
  @override
  @JsonKey(name: 'duration')
  final int? duration;

  @override
  String toString() {
    return 'PaidMedia.preview(type: $type, width: $width, height: $height, duration: $duration)';
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidMediaPreviewImplCopyWith<_$PaidMediaPreviewImpl> get copyWith =>
      __$$PaidMediaPreviewImplCopyWithImpl<_$PaidMediaPreviewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaidMediaPreview value) preview,
    required TResult Function(PaidMediaPhoto value) photo,
    required TResult Function(PaidMediaVideo value) video,
  }) {
    return preview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaidMediaPreview value)? preview,
    TResult? Function(PaidMediaPhoto value)? photo,
    TResult? Function(PaidMediaVideo value)? video,
  }) {
    return preview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaidMediaPreview value)? preview,
    TResult Function(PaidMediaPhoto value)? photo,
    TResult Function(PaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (preview != null) {
      return preview(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidMediaPreviewImplToJson(
      this,
    );
  }
}

abstract class PaidMediaPreview implements PaidMedia {
  const factory PaidMediaPreview(
      {@JsonKey(name: 'type') final PaidMediaType type,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'duration') final int? duration}) = _$PaidMediaPreviewImpl;

  factory PaidMediaPreview.fromJson(Map<String, dynamic> json) =
      _$PaidMediaPreviewImpl.fromJson;

  /// Type of the paid media, must be "preview"
  @override
  @JsonKey(name: 'type')
  PaidMediaType get type;

  /// Optional. Media width as defined by the sender.
  @JsonKey(name: 'width')
  int? get width;

  /// Optional. Media height as defined by the sender.
  @JsonKey(name: 'height')
  int? get height;

  /// Optional. Duration of the media in seconds as defined by the sender.
  @JsonKey(name: 'duration')
  int? get duration;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidMediaPreviewImplCopyWith<_$PaidMediaPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaidMediaPhotoImplCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory _$$PaidMediaPhotoImplCopyWith(_$PaidMediaPhotoImpl value,
          $Res Function(_$PaidMediaPhotoImpl) then) =
      __$$PaidMediaPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') PaidMediaType type,
      @JsonKey(name: 'photo') List<PhotoSize> photo});
}

/// @nodoc
class __$$PaidMediaPhotoImplCopyWithImpl<$Res>
    extends _$PaidMediaCopyWithImpl<$Res, _$PaidMediaPhotoImpl>
    implements _$$PaidMediaPhotoImplCopyWith<$Res> {
  __$$PaidMediaPhotoImplCopyWithImpl(
      _$PaidMediaPhotoImpl _value, $Res Function(_$PaidMediaPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? photo = null,
  }) {
    return _then(_$PaidMediaPhotoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaidMediaType,
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidMediaPhotoImpl implements PaidMediaPhoto {
  const _$PaidMediaPhotoImpl(
      {@JsonKey(name: 'type') this.type = PaidMediaType.photo,
      @JsonKey(name: 'photo') required final List<PhotoSize> photo})
      : assert(type == PaidMediaType.photo, 'type must be PaidMediaType.photo'),
        _photo = photo;

  factory _$PaidMediaPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidMediaPhotoImplFromJson(json);

  /// Type of the paid media, must be "photo"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// The photo.
  final List<PhotoSize> _photo;

  /// The photo.
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  @override
  String toString() {
    return 'PaidMedia.photo(type: $type, photo: $photo)';
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidMediaPhotoImplCopyWith<_$PaidMediaPhotoImpl> get copyWith =>
      __$$PaidMediaPhotoImplCopyWithImpl<_$PaidMediaPhotoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaidMediaPreview value) preview,
    required TResult Function(PaidMediaPhoto value) photo,
    required TResult Function(PaidMediaVideo value) video,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaidMediaPreview value)? preview,
    TResult? Function(PaidMediaPhoto value)? photo,
    TResult? Function(PaidMediaVideo value)? video,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaidMediaPreview value)? preview,
    TResult Function(PaidMediaPhoto value)? photo,
    TResult Function(PaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidMediaPhotoImplToJson(
      this,
    );
  }
}

abstract class PaidMediaPhoto implements PaidMedia {
  const factory PaidMediaPhoto(
          {@JsonKey(name: 'type') final PaidMediaType type,
          @JsonKey(name: 'photo') required final List<PhotoSize> photo}) =
      _$PaidMediaPhotoImpl;

  factory PaidMediaPhoto.fromJson(Map<String, dynamic> json) =
      _$PaidMediaPhotoImpl.fromJson;

  /// Type of the paid media, must be "photo"
  @override
  @JsonKey(name: 'type')
  PaidMediaType get type;

  /// The photo.
  @JsonKey(name: 'photo')
  List<PhotoSize> get photo;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidMediaPhotoImplCopyWith<_$PaidMediaPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaidMediaVideoImplCopyWith<$Res>
    implements $PaidMediaCopyWith<$Res> {
  factory _$$PaidMediaVideoImplCopyWith(_$PaidMediaVideoImpl value,
          $Res Function(_$PaidMediaVideoImpl) then) =
      __$$PaidMediaVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') PaidMediaType type,
      @JsonKey(name: 'video') Video video});

  $VideoCopyWith<$Res> get video;
}

/// @nodoc
class __$$PaidMediaVideoImplCopyWithImpl<$Res>
    extends _$PaidMediaCopyWithImpl<$Res, _$PaidMediaVideoImpl>
    implements _$$PaidMediaVideoImplCopyWith<$Res> {
  __$$PaidMediaVideoImplCopyWithImpl(
      _$PaidMediaVideoImpl _value, $Res Function(_$PaidMediaVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? video = null,
  }) {
    return _then(_$PaidMediaVideoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaidMediaType,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video,
    ));
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get video {
    return $VideoCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidMediaVideoImpl implements PaidMediaVideo {
  const _$PaidMediaVideoImpl(
      {@JsonKey(name: 'type') this.type = PaidMediaType.video,
      @JsonKey(name: 'video') required this.video})
      : assert(type == PaidMediaType.video, 'type must be PaidMediaType.video');

  factory _$PaidMediaVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidMediaVideoImplFromJson(json);

  /// Type of the paid media, must be "video"
  @override
  @JsonKey(name: 'type')
  final PaidMediaType type;

  /// The video.
  @override
  @JsonKey(name: 'video')
  final Video video;

  @override
  String toString() {
    return 'PaidMedia.video(type: $type, video: $video)';
  }

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidMediaVideoImplCopyWith<_$PaidMediaVideoImpl> get copyWith =>
      __$$PaidMediaVideoImplCopyWithImpl<_$PaidMediaVideoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaidMediaPreview value) preview,
    required TResult Function(PaidMediaPhoto value) photo,
    required TResult Function(PaidMediaVideo value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaidMediaPreview value)? preview,
    TResult? Function(PaidMediaPhoto value)? photo,
    TResult? Function(PaidMediaVideo value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaidMediaPreview value)? preview,
    TResult Function(PaidMediaPhoto value)? photo,
    TResult Function(PaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidMediaVideoImplToJson(
      this,
    );
  }
}

abstract class PaidMediaVideo implements PaidMedia {
  const factory PaidMediaVideo(
          {@JsonKey(name: 'type') final PaidMediaType type,
          @JsonKey(name: 'video') required final Video video}) =
      _$PaidMediaVideoImpl;

  factory PaidMediaVideo.fromJson(Map<String, dynamic> json) =
      _$PaidMediaVideoImpl.fromJson;

  /// Type of the paid media, must be "video"
  @override
  @JsonKey(name: 'type')
  PaidMediaType get type;

  /// The video.
  @JsonKey(name: 'video')
  Video get video;

  /// Create a copy of PaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidMediaVideoImplCopyWith<_$PaidMediaVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
