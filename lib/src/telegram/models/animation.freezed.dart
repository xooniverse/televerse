// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Animation _$AnimationFromJson(Map<String, dynamic> json) {
  return _Animation.fromJson(json);
}

/// @nodoc
mixin _$Animation {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId => throw _privateConstructorUsedError;

  /// Video width as defined by sender
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;

  /// Video height as defined by sender
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;

  /// Optional. Animation thumbnail as defined by sender
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail => throw _privateConstructorUsedError;

  /// Optional. Original animation filename as defined by sender
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @JsonKey(name: 'file_size')
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this Animation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimationCopyWith<Animation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationCopyWith<$Res> {
  factory $AnimationCopyWith(Animation value, $Res Function(Animation) then) =
      _$AnimationCopyWithImpl<$Res, Animation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'file_size') int? fileSize});

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$AnimationCopyWithImpl<$Res, $Val extends Animation>
    implements $AnimationCopyWith<$Res> {
  _$AnimationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Animation
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
abstract class _$$AnimationImplCopyWith<$Res>
    implements $AnimationCopyWith<$Res> {
  factory _$$AnimationImplCopyWith(
          _$AnimationImpl value, $Res Function(_$AnimationImpl) then) =
      __$$AnimationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'file_size') int? fileSize});

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$AnimationImplCopyWithImpl<$Res>
    extends _$AnimationCopyWithImpl<$Res, _$AnimationImpl>
    implements _$$AnimationImplCopyWith<$Res> {
  __$$AnimationImplCopyWithImpl(
      _$AnimationImpl _value, $Res Function(_$AnimationImpl) _then)
      : super(_value, _then);

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
    return _then(_$AnimationImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimationImpl implements _Animation {
  const _$AnimationImpl(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'file_size') this.fileSize});

  factory _$AnimationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimationImplFromJson(json);

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
  /// A handy [Duration] getter is available as [durationTime]
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

  @override
  String toString() {
    return 'Animation(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, duration: $duration, thumbnail: $thumbnail, fileName: $fileName, mimeType: $mimeType, fileSize: $fileSize)';
  }

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimationImplCopyWith<_$AnimationImpl> get copyWith =>
      __$$AnimationImplCopyWithImpl<_$AnimationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimationImplToJson(
      this,
    );
  }
}

abstract class _Animation implements Animation {
  const factory _Animation(
      {@JsonKey(name: 'file_id') required final String fileId,
      @JsonKey(name: 'file_unique_id') required final String fileUniqueId,
      @JsonKey(name: 'width') required final int width,
      @JsonKey(name: 'height') required final int height,
      @JsonKey(name: 'duration') required final int duration,
      @JsonKey(name: 'thumbnail') final PhotoSize? thumbnail,
      @JsonKey(name: 'file_name') final String? fileName,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'file_size') final int? fileSize}) = _$AnimationImpl;

  factory _Animation.fromJson(Map<String, dynamic> json) =
      _$AnimationImpl.fromJson;

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

  /// Video width as defined by sender
  @override
  @JsonKey(name: 'width')
  int get width;

  /// Video height as defined by sender
  @override
  @JsonKey(name: 'height')
  int get height;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  @override
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. Animation thumbnail as defined by sender
  @override
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Optional. Original animation filename as defined by sender
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;

  /// Optional. MIME type of the file as defined by sender
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @override
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of Animation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimationImplCopyWith<_$AnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
