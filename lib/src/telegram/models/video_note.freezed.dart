// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoNote _$VideoNoteFromJson(Map<String, dynamic> json) {
  return _VideoNote.fromJson(json);
}

/// @nodoc
mixin _$VideoNote {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId => throw _privateConstructorUsedError;

  /// Video width and height (diameter of the video message) as defined by
  /// sender
  int get length => throw _privateConstructorUsedError;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int get duration => throw _privateConstructorUsedError;

  /// Optional. Animation thumbnail as defined by sender
  PhotoSize? get thumbnail => throw _privateConstructorUsedError;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @JsonKey(name: 'file_size')
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this VideoNote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoNoteCopyWith<VideoNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoNoteCopyWith<$Res> {
  factory $VideoNoteCopyWith(VideoNote value, $Res Function(VideoNote) then) =
      _$VideoNoteCopyWithImpl<$Res, VideoNote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      int length,
      int duration,
      PhotoSize? thumbnail,
      @JsonKey(name: 'file_size') int? fileSize});

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$VideoNoteCopyWithImpl<$Res, $Val extends VideoNote>
    implements $VideoNoteCopyWith<$Res> {
  _$VideoNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoNoteImplCopyWith<$Res>
    implements $VideoNoteCopyWith<$Res> {
  factory _$$VideoNoteImplCopyWith(
          _$VideoNoteImpl value, $Res Function(_$VideoNoteImpl) then) =
      __$$VideoNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      int length,
      int duration,
      PhotoSize? thumbnail,
      @JsonKey(name: 'file_size') int? fileSize});

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$VideoNoteImplCopyWithImpl<$Res>
    extends _$VideoNoteCopyWithImpl<$Res, _$VideoNoteImpl>
    implements _$$VideoNoteImplCopyWith<$Res> {
  __$$VideoNoteImplCopyWithImpl(
      _$VideoNoteImpl _value, $Res Function(_$VideoNoteImpl) _then)
      : super(_value, _then);

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
    return _then(_$VideoNoteImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoNoteImpl implements _VideoNote {
  const _$VideoNoteImpl(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      required this.length,
      required this.duration,
      this.thumbnail,
      @JsonKey(name: 'file_size') this.fileSize});

  factory _$VideoNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoNoteImplFromJson(json);

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
  final int length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @override
  final int duration;

  /// Optional. Animation thumbnail as defined by sender
  @override
  final PhotoSize? thumbnail;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  @override
  String toString() {
    return 'VideoNote(fileId: $fileId, fileUniqueId: $fileUniqueId, length: $length, duration: $duration, thumbnail: $thumbnail, fileSize: $fileSize)';
  }

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoNoteImplCopyWith<_$VideoNoteImpl> get copyWith =>
      __$$VideoNoteImplCopyWithImpl<_$VideoNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoNoteImplToJson(
      this,
    );
  }
}

abstract class _VideoNote implements VideoNote {
  const factory _VideoNote(
      {@JsonKey(name: 'file_id') required final String fileId,
      @JsonKey(name: 'file_unique_id') required final String fileUniqueId,
      required final int length,
      required final int duration,
      final PhotoSize? thumbnail,
      @JsonKey(name: 'file_size') final int? fileSize}) = _$VideoNoteImpl;

  factory _VideoNote.fromJson(Map<String, dynamic> json) =
      _$VideoNoteImpl.fromJson;

  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @override
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Video width and height (diameter of the video message) as defined by
  /// sender
  @override
  int get length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @override
  int get duration;

  /// Optional. Animation thumbnail as defined by sender
  @override
  PhotoSize? get thumbnail;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @override
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of VideoNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoNoteImplCopyWith<_$VideoNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
