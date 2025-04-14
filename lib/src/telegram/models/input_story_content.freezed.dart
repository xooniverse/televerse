// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_story_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InputStoryContent _$InputStoryContentFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'photo':
      return InputStoryContentPhoto.fromJson(json);
    case 'video':
      return InputStoryContentVideo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'InputStoryContent',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$InputStoryContent {
  /// Type of the content, always "photo"
  @JsonKey(name: 'type')
  StoryContentType get type;

  /// Create a copy of InputStoryContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputStoryContentCopyWith<InputStoryContent> get copyWith =>
      _$InputStoryContentCopyWithImpl<InputStoryContent>(
          this as InputStoryContent, _$identity);

  /// Serializes this InputStoryContent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputStoryContent(type: $type)';
  }
}

/// @nodoc
abstract mixin class $InputStoryContentCopyWith<$Res> {
  factory $InputStoryContentCopyWith(
          InputStoryContent value, $Res Function(InputStoryContent) _then) =
      _$InputStoryContentCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') StoryContentType type});
}

/// @nodoc
class _$InputStoryContentCopyWithImpl<$Res>
    implements $InputStoryContentCopyWith<$Res> {
  _$InputStoryContentCopyWithImpl(this._self, this._then);

  final InputStoryContent _self;
  final $Res Function(InputStoryContent) _then;

  /// Create a copy of InputStoryContent
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
              as StoryContentType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class InputStoryContentPhoto extends InputStoryContent {
  const InputStoryContentPhoto(
      {@JsonKey(name: 'type') this.type = StoryContentType.photo,
      @JsonKey(name: 'photo') @InputFileConverter() required this.photo})
      : super._();
  factory InputStoryContentPhoto.fromJson(Map<String, dynamic> json) =>
      _$InputStoryContentPhotoFromJson(json);

  /// Type of the content, always "photo"
  @override
  @JsonKey(name: 'type')
  final StoryContentType type;

  /// The photo to post as a story. The photo must be of the size 1080x1920 and
  /// must not exceed 10 MB.
  @JsonKey(name: 'photo')
  @InputFileConverter()
  final InputFile photo;

  /// Create a copy of InputStoryContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputStoryContentPhotoCopyWith<InputStoryContentPhoto> get copyWith =>
      _$InputStoryContentPhotoCopyWithImpl<InputStoryContentPhoto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputStoryContentPhotoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputStoryContent.photo(type: $type, photo: $photo)';
  }
}

/// @nodoc
abstract mixin class $InputStoryContentPhotoCopyWith<$Res>
    implements $InputStoryContentCopyWith<$Res> {
  factory $InputStoryContentPhotoCopyWith(InputStoryContentPhoto value,
          $Res Function(InputStoryContentPhoto) _then) =
      _$InputStoryContentPhotoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') StoryContentType type,
      @JsonKey(name: 'photo') @InputFileConverter() InputFile photo});
}

/// @nodoc
class _$InputStoryContentPhotoCopyWithImpl<$Res>
    implements $InputStoryContentPhotoCopyWith<$Res> {
  _$InputStoryContentPhotoCopyWithImpl(this._self, this._then);

  final InputStoryContentPhoto _self;
  final $Res Function(InputStoryContentPhoto) _then;

  /// Create a copy of InputStoryContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? photo = null,
  }) {
    return _then(InputStoryContentPhoto(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoryContentType,
      photo: null == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as InputFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class InputStoryContentVideo extends InputStoryContent {
  const InputStoryContentVideo(
      {@JsonKey(name: 'type') this.type = StoryContentType.video,
      @JsonKey(name: 'video') @InputFileConverter() required this.video,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'cover_frame_timestamp') this.coverFrameTimestamp,
      @JsonKey(name: 'is_animation') this.isAnimation})
      : super._();
  factory InputStoryContentVideo.fromJson(Map<String, dynamic> json) =>
      _$InputStoryContentVideoFromJson(json);

  /// Type of the content, always "video"
  @override
  @JsonKey(name: 'type')
  final StoryContentType type;

  /// The video to post as a story. The video must be of the size 720x1280,
  /// streamable, encoded with H.265 codec, with key frames added each second
  /// in the MPEG4 format, and must not exceed 30 MB.
  @JsonKey(name: 'video')
  @InputFileConverter()
  final InputFile video;

  /// Optional. Precise duration of the video in seconds; 0-60
  @JsonKey(name: 'duration')
  final double? duration;

  /// Optional. Timestamp in seconds of the frame that will be used as the
  /// static cover for the story. Defaults to 0.0.
  @JsonKey(name: 'cover_frame_timestamp')
  final double? coverFrameTimestamp;

  /// Optional. Pass True if the video has no sound
  @JsonKey(name: 'is_animation')
  final bool? isAnimation;

  /// Create a copy of InputStoryContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputStoryContentVideoCopyWith<InputStoryContentVideo> get copyWith =>
      _$InputStoryContentVideoCopyWithImpl<InputStoryContentVideo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputStoryContentVideoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputStoryContent.video(type: $type, video: $video, duration: $duration, coverFrameTimestamp: $coverFrameTimestamp, isAnimation: $isAnimation)';
  }
}

/// @nodoc
abstract mixin class $InputStoryContentVideoCopyWith<$Res>
    implements $InputStoryContentCopyWith<$Res> {
  factory $InputStoryContentVideoCopyWith(InputStoryContentVideo value,
          $Res Function(InputStoryContentVideo) _then) =
      _$InputStoryContentVideoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') StoryContentType type,
      @JsonKey(name: 'video') @InputFileConverter() InputFile video,
      @JsonKey(name: 'duration') double? duration,
      @JsonKey(name: 'cover_frame_timestamp') double? coverFrameTimestamp,
      @JsonKey(name: 'is_animation') bool? isAnimation});
}

/// @nodoc
class _$InputStoryContentVideoCopyWithImpl<$Res>
    implements $InputStoryContentVideoCopyWith<$Res> {
  _$InputStoryContentVideoCopyWithImpl(this._self, this._then);

  final InputStoryContentVideo _self;
  final $Res Function(InputStoryContentVideo) _then;

  /// Create a copy of InputStoryContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? video = null,
    Object? duration = freezed,
    Object? coverFrameTimestamp = freezed,
    Object? isAnimation = freezed,
  }) {
    return _then(InputStoryContentVideo(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoryContentType,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as InputFile,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      coverFrameTimestamp: freezed == coverFrameTimestamp
          ? _self.coverFrameTimestamp
          : coverFrameTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
      isAnimation: freezed == isAnimation
          ? _self.isAnimation
          : isAnimation // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
