// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhotoSize {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Photo width
  @JsonKey(name: 'width')
  int get width;

  /// Photo height
  @JsonKey(name: 'height')
  int get height;

  /// Optional. File size in bytes
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of PhotoSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<PhotoSize> get copyWith =>
      _$PhotoSizeCopyWithImpl<PhotoSize>(this as PhotoSize, _$identity);

  /// Serializes this PhotoSize to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PhotoSize(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $PhotoSizeCopyWith<$Res> {
  factory $PhotoSizeCopyWith(PhotoSize value, $Res Function(PhotoSize) _then) =
      _$PhotoSizeCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'file_size') int? fileSize});
}

/// @nodoc
class _$PhotoSizeCopyWithImpl<$Res> implements $PhotoSizeCopyWith<$Res> {
  _$PhotoSizeCopyWithImpl(this._self, this._then);

  final PhotoSize _self;
  final $Res Function(PhotoSize) _then;

  /// Create a copy of PhotoSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
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
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PhotoSize implements PhotoSize {
  const _PhotoSize(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'file_size') this.fileSize});
  factory _PhotoSize.fromJson(Map<String, dynamic> json) =>
      _$PhotoSizeFromJson(json);

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

  /// Photo width
  @override
  @JsonKey(name: 'width')
  final int width;

  /// Photo height
  @override
  @JsonKey(name: 'height')
  final int height;

  /// Optional. File size in bytes
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Create a copy of PhotoSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhotoSizeCopyWith<_PhotoSize> get copyWith =>
      __$PhotoSizeCopyWithImpl<_PhotoSize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhotoSizeToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PhotoSize(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$PhotoSizeCopyWith<$Res>
    implements $PhotoSizeCopyWith<$Res> {
  factory _$PhotoSizeCopyWith(
          _PhotoSize value, $Res Function(_PhotoSize) _then) =
      __$PhotoSizeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'file_size') int? fileSize});
}

/// @nodoc
class __$PhotoSizeCopyWithImpl<$Res> implements _$PhotoSizeCopyWith<$Res> {
  __$PhotoSizeCopyWithImpl(this._self, this._then);

  final _PhotoSize _self;
  final $Res Function(_PhotoSize) _then;

  /// Create a copy of PhotoSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? fileSize = freezed,
  }) {
    return _then(_PhotoSize(
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
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}
