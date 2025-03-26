// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$File {
  /// Unique identifier for this file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// File size, if known
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// File path. Use https://api.telegram.org/file/bottoken/file_path to
  /// get the file.
  @JsonKey(name: 'file_path')
  String? get filePath;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileCopyWith<File> get copyWith =>
      _$FileCopyWithImpl<File>(this as File, _$identity);

  /// Serializes this File to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'File(fileId: $fileId, fileUniqueId: $fileUniqueId, fileSize: $fileSize, filePath: $filePath)';
  }
}

/// @nodoc
abstract mixin class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) _then) =
      _$FileCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class _$FileCopyWithImpl<$Res> implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._self, this._then);

  final File _self;
  final $Res Function(File) _then;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? fileSize = freezed,
    Object? filePath = freezed,
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
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _File extends File {
  const _File(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'file_size') this.fileSize,
      @JsonKey(name: 'file_path') this.filePath})
      : super._();
  factory _File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);

  /// Unique identifier for this file
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  final String fileUniqueId;

  /// File size, if known
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// File path. Use https://api.telegram.org/file/bottoken/file_path to
  /// get the file.
  @override
  @JsonKey(name: 'file_path')
  final String? filePath;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileCopyWith<_File> get copyWith =>
      __$FileCopyWithImpl<_File>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'File(fileId: $fileId, fileUniqueId: $fileUniqueId, fileSize: $fileSize, filePath: $filePath)';
  }
}

/// @nodoc
abstract mixin class _$FileCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$FileCopyWith(_File value, $Res Function(_File) _then) =
      __$FileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class __$FileCopyWithImpl<$Res> implements _$FileCopyWith<$Res> {
  __$FileCopyWithImpl(this._self, this._then);

  final _File _self;
  final $Res Function(_File) _then;

  /// Create a copy of File
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? fileSize = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_File(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
