// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_paid_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputPaidMedia {
  /// Type of the media, must be "photo"
  InputPaidMediaType get type => throw _privateConstructorUsedError;

  /// File to send.
  @InputFileConverter()
  InputFile get media => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPaidMediaPhoto value) photo,
    required TResult Function(InputPaidMediaVideo value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPaidMediaPhoto value)? photo,
    TResult? Function(InputPaidMediaVideo value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPaidMediaPhoto value)? photo,
    TResult Function(InputPaidMediaVideo value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this InputPaidMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputPaidMediaCopyWith<InputPaidMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPaidMediaCopyWith<$Res> {
  factory $InputPaidMediaCopyWith(
          InputPaidMedia value, $Res Function(InputPaidMedia) then) =
      _$InputPaidMediaCopyWithImpl<$Res, InputPaidMedia>;
  @useResult
  $Res call({InputPaidMediaType type, @InputFileConverter() InputFile media});
}

/// @nodoc
class _$InputPaidMediaCopyWithImpl<$Res, $Val extends InputPaidMedia>
    implements $InputPaidMediaCopyWith<$Res> {
  _$InputPaidMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputPaidMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputPaidMediaPhotoImplCopyWith<$Res>
    implements $InputPaidMediaCopyWith<$Res> {
  factory _$$InputPaidMediaPhotoImplCopyWith(_$InputPaidMediaPhotoImpl value,
          $Res Function(_$InputPaidMediaPhotoImpl) then) =
      __$$InputPaidMediaPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputPaidMediaType type, @InputFileConverter() InputFile media});
}

/// @nodoc
class __$$InputPaidMediaPhotoImplCopyWithImpl<$Res>
    extends _$InputPaidMediaCopyWithImpl<$Res, _$InputPaidMediaPhotoImpl>
    implements _$$InputPaidMediaPhotoImplCopyWith<$Res> {
  __$$InputPaidMediaPhotoImplCopyWithImpl(_$InputPaidMediaPhotoImpl _value,
      $Res Function(_$InputPaidMediaPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
  }) {
    return _then(_$InputPaidMediaPhotoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputPaidMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputPaidMediaPhotoImpl implements InputPaidMediaPhoto {
  const _$InputPaidMediaPhotoImpl(
      {this.type = InputPaidMediaType.photo,
      @InputFileConverter() required this.media,
      final String? $type})
      : assert(type == InputPaidMediaType.photo,
            'type must be InputPaidMediaType.photo'),
        $type = $type ?? 'photo';

  /// Type of the media, must be "photo"
  @override
  @JsonKey()
  final InputPaidMediaType type;

  /// File to send.
  @override
  @InputFileConverter()
  final InputFile media;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputPaidMedia.photo(type: $type, media: $media)';
  }

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPaidMediaPhotoImplCopyWith<_$InputPaidMediaPhotoImpl> get copyWith =>
      __$$InputPaidMediaPhotoImplCopyWithImpl<_$InputPaidMediaPhotoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPaidMediaPhoto value) photo,
    required TResult Function(InputPaidMediaVideo value) video,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPaidMediaPhoto value)? photo,
    TResult? Function(InputPaidMediaVideo value)? video,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPaidMediaPhoto value)? photo,
    TResult Function(InputPaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputPaidMediaPhotoImplToJson(
      this,
    );
  }
}

abstract class InputPaidMediaPhoto implements InputPaidMedia {
  const factory InputPaidMediaPhoto(
          {final InputPaidMediaType type,
          @InputFileConverter() required final InputFile media}) =
      _$InputPaidMediaPhotoImpl;

  /// Type of the media, must be "photo"
  @override
  InputPaidMediaType get type;

  /// File to send.
  @override
  @InputFileConverter()
  InputFile get media;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPaidMediaPhotoImplCopyWith<_$InputPaidMediaPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPaidMediaVideoImplCopyWith<$Res>
    implements $InputPaidMediaCopyWith<$Res> {
  factory _$$InputPaidMediaVideoImplCopyWith(_$InputPaidMediaVideoImpl value,
          $Res Function(_$InputPaidMediaVideoImpl) then) =
      __$$InputPaidMediaVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputPaidMediaType type,
      @InputFileConverter() @JsonKey(name: 'media') InputFile media,
      @InputFileConverter() @JsonKey(name: 'thumbnail') InputFile? thumbnail,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'supports_streaming') bool? supportsStreaming,
      @JsonKey(name: 'start_timestamp') int? startTimestamp,
      @InputFileConverter() @JsonKey(name: 'cover') InputFile? cover});
}

/// @nodoc
class __$$InputPaidMediaVideoImplCopyWithImpl<$Res>
    extends _$InputPaidMediaCopyWithImpl<$Res, _$InputPaidMediaVideoImpl>
    implements _$$InputPaidMediaVideoImplCopyWith<$Res> {
  __$$InputPaidMediaVideoImplCopyWithImpl(_$InputPaidMediaVideoImpl _value,
      $Res Function(_$InputPaidMediaVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$InputPaidMediaVideoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputPaidMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
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
      supportsStreaming: freezed == supportsStreaming
          ? _value.supportsStreaming
          : supportsStreaming // ignore: cast_nullable_to_non_nullable
              as bool?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as InputFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputPaidMediaVideoImpl implements InputPaidMediaVideo {
  const _$InputPaidMediaVideoImpl(
      {@JsonKey(name: 'type') this.type = InputPaidMediaType.video,
      @InputFileConverter() @JsonKey(name: 'media') required this.media,
      @InputFileConverter() @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'supports_streaming') this.supportsStreaming,
      @JsonKey(name: 'start_timestamp') this.startTimestamp,
      @InputFileConverter() @JsonKey(name: 'cover') this.cover,
      final String? $type})
      : assert(type == InputPaidMediaType.video,
            'type must be InputPaidMediaType.video'),
        $type = $type ?? 'video';

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
  @override
  @InputFileConverter()
  @JsonKey(name: 'thumbnail')
  final InputFile? thumbnail;

  /// Optional. Video width.
  @override
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Video height.
  @override
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Video duration in seconds.
  @override
  @JsonKey(name: 'duration')
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming.
  @override
  @JsonKey(name: 'supports_streaming')
  final bool? supportsStreaming;

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @override
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;

  /// Optional. Cover for the video in the message.
  @override
  @InputFileConverter()
  @JsonKey(name: 'cover')
  final InputFile? cover;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputPaidMedia.video(type: $type, media: $media, thumbnail: $thumbnail, width: $width, height: $height, duration: $duration, supportsStreaming: $supportsStreaming, startTimestamp: $startTimestamp, cover: $cover)';
  }

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPaidMediaVideoImplCopyWith<_$InputPaidMediaVideoImpl> get copyWith =>
      __$$InputPaidMediaVideoImplCopyWithImpl<_$InputPaidMediaVideoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputPaidMediaPhoto value) photo,
    required TResult Function(InputPaidMediaVideo value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputPaidMediaPhoto value)? photo,
    TResult? Function(InputPaidMediaVideo value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputPaidMediaPhoto value)? photo,
    TResult Function(InputPaidMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputPaidMediaVideoImplToJson(
      this,
    );
  }
}

abstract class InputPaidMediaVideo implements InputPaidMedia {
  const factory InputPaidMediaVideo(
      {@JsonKey(name: 'type') final InputPaidMediaType type,
      @InputFileConverter()
      @JsonKey(name: 'media')
      required final InputFile media,
      @InputFileConverter()
      @JsonKey(name: 'thumbnail')
      final InputFile? thumbnail,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'supports_streaming') final bool? supportsStreaming,
      @JsonKey(name: 'start_timestamp') final int? startTimestamp,
      @InputFileConverter()
      @JsonKey(name: 'cover')
      final InputFile? cover}) = _$InputPaidMediaVideoImpl;

  /// Type of the media, must be "video".
  @override
  @JsonKey(name: 'type')
  InputPaidMediaType get type;

  /// File to send.
  @override
  @InputFileConverter()
  @JsonKey(name: 'media')
  InputFile get media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail
  /// generation for the file is supported server-side.
  @InputFileConverter()
  @JsonKey(name: 'thumbnail')
  InputFile? get thumbnail;

  /// Optional. Video width.
  @JsonKey(name: 'width')
  int? get width;

  /// Optional. Video height.
  @JsonKey(name: 'height')
  int? get height;

  /// Optional. Video duration in seconds.
  @JsonKey(name: 'duration')
  int? get duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming.
  @JsonKey(name: 'supports_streaming')
  bool? get supportsStreaming;

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @JsonKey(name: 'start_timestamp')
  int? get startTimestamp;

  /// Optional. Cover for the video in the message.
  @InputFileConverter()
  @JsonKey(name: 'cover')
  InputFile? get cover;

  /// Create a copy of InputPaidMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputPaidMediaVideoImplCopyWith<_$InputPaidMediaVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
