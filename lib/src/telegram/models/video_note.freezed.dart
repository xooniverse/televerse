// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoNote {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Video width and height (diameter of the video message) as defined by
  /// sender
  @JsonKey(name: 'length')
  int get length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. Animation thumbnail as defined by sender
  @JsonKey(name: 'thumb')
  PhotoSize? get thumbnail;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoNoteCopyWith<VideoNote> get copyWith =>
      _$VideoNoteCopyWithImpl<VideoNote>(this as VideoNote, _$identity);

  /// Serializes this VideoNote to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VideoNote(fileId: $fileId, fileUniqueId: $fileUniqueId, length: $length, duration: $duration, thumbnail: $thumbnail, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $VideoNoteCopyWith<$Res> {
  factory $VideoNoteCopyWith(VideoNote value, $Res Function(VideoNote) _then) =
      _$VideoNoteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'length') int length,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'thumb') PhotoSize? thumbnail,
      @JsonKey(name: 'file_size') int? fileSize});

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$VideoNoteCopyWithImpl<$Res> implements $VideoNoteCopyWith<$Res> {
  _$VideoNoteCopyWithImpl(this._self, this._then);

  final VideoNote _self;
  final $Res Function(VideoNote) _then;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? length = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_self.copyWith(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of VideoNote
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

/// @nodoc
@JsonSerializable()
class _VideoNote implements VideoNote {
  const _VideoNote(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'length') required this.length,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'thumb') this.thumbnail,
      @JsonKey(name: 'file_size') this.fileSize});
  factory _VideoNote.fromJson(Map<String, dynamic> json) =>
      _$VideoNoteFromJson(json);

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

  /// Video width and height (diameter of the video message) as defined by
  /// sender
  @override
  @JsonKey(name: 'length')
  final int length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @override
  @JsonKey(name: 'duration')
  final int duration;

  /// Optional. Animation thumbnail as defined by sender
  @override
  @JsonKey(name: 'thumb')
  final PhotoSize? thumbnail;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoNoteCopyWith<_VideoNote> get copyWith =>
      __$VideoNoteCopyWithImpl<_VideoNote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoNoteToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'VideoNote(fileId: $fileId, fileUniqueId: $fileUniqueId, length: $length, duration: $duration, thumbnail: $thumbnail, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$VideoNoteCopyWith<$Res>
    implements $VideoNoteCopyWith<$Res> {
  factory _$VideoNoteCopyWith(
          _VideoNote value, $Res Function(_VideoNote) _then) =
      __$VideoNoteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'length') int length,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'thumb') PhotoSize? thumbnail,
      @JsonKey(name: 'file_size') int? fileSize});

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$VideoNoteCopyWithImpl<$Res> implements _$VideoNoteCopyWith<$Res> {
  __$VideoNoteCopyWithImpl(this._self, this._then);

  final _VideoNote _self;
  final $Res Function(_VideoNote) _then;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? length = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_VideoNote(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of VideoNote
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
