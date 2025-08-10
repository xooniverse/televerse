// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportFile {
  /// Unique identifier for this file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// File size
  @JsonKey(name: 'file_size')
  int get fileSize;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as `fileDateTime` getter.
  @JsonKey(name: 'file_date')
  int get fileDate;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<PassportFile> get copyWith =>
      _$PassportFileCopyWithImpl<PassportFile>(
          this as PassportFile, _$identity);

  /// Serializes this PassportFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PassportFile(fileId: $fileId, fileUniqueId: $fileUniqueId, fileSize: $fileSize, fileDate: $fileDate)';
  }
}

/// @nodoc
abstract mixin class $PassportFileCopyWith<$Res> {
  factory $PassportFileCopyWith(
          PassportFile value, $Res Function(PassportFile) _then) =
      _$PassportFileCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int fileSize,
      @JsonKey(name: 'file_date') int fileDate});
}

/// @nodoc
class _$PassportFileCopyWithImpl<$Res> implements $PassportFileCopyWith<$Res> {
  _$PassportFileCopyWithImpl(this._self, this._then);

  final PassportFile _self;
  final $Res Function(PassportFile) _then;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? fileSize = null,
    Object? fileDate = null,
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
      fileSize: null == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileDate: null == fileDate
          ? _self.fileDate
          : fileDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PassportFile implements PassportFile {
  const _PassportFile(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'file_size') required this.fileSize,
      @JsonKey(name: 'file_date') required this.fileDate});
  factory _PassportFile.fromJson(Map<String, dynamic> json) =>
      _$PassportFileFromJson(json);

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

  /// File size
  @override
  @JsonKey(name: 'file_size')
  final int fileSize;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as `fileDateTime` getter.
  @override
  @JsonKey(name: 'file_date')
  final int fileDate;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportFileCopyWith<_PassportFile> get copyWith =>
      __$PassportFileCopyWithImpl<_PassportFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportFileToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportFile(fileId: $fileId, fileUniqueId: $fileUniqueId, fileSize: $fileSize, fileDate: $fileDate)';
  }
}

/// @nodoc
abstract mixin class _$PassportFileCopyWith<$Res>
    implements $PassportFileCopyWith<$Res> {
  factory _$PassportFileCopyWith(
          _PassportFile value, $Res Function(_PassportFile) _then) =
      __$PassportFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int fileSize,
      @JsonKey(name: 'file_date') int fileDate});
}

/// @nodoc
class __$PassportFileCopyWithImpl<$Res>
    implements _$PassportFileCopyWith<$Res> {
  __$PassportFileCopyWithImpl(this._self, this._then);

  final _PassportFile _self;
  final $Res Function(_PassportFile) _then;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? fileSize = null,
    Object? fileDate = null,
  }) {
    return _then(_PassportFile(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileDate: null == fileDate
          ? _self.fileDate
          : fileDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
