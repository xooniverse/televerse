// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PassportFile _$PassportFileFromJson(Map<String, dynamic> json) {
  return _PassportFile.fromJson(json);
}

/// @nodoc
mixin _$PassportFile {
  /// Unique identifier for this file
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId => throw _privateConstructorUsedError;

  /// File size
  @JsonKey(name: 'file_size')
  int get fileSize => throw _privateConstructorUsedError;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as [fileDateTime] getter.
  @JsonKey(name: 'file_date')
  int get fileDate => throw _privateConstructorUsedError;

  /// Serializes this PassportFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassportFileCopyWith<PassportFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportFileCopyWith<$Res> {
  factory $PassportFileCopyWith(
          PassportFile value, $Res Function(PassportFile) then) =
      _$PassportFileCopyWithImpl<$Res, PassportFile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int fileSize,
      @JsonKey(name: 'file_date') int fileDate});
}

/// @nodoc
class _$PassportFileCopyWithImpl<$Res, $Val extends PassportFile>
    implements $PassportFileCopyWith<$Res> {
  _$PassportFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileDate: null == fileDate
          ? _value.fileDate
          : fileDate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassportFileImplCopyWith<$Res>
    implements $PassportFileCopyWith<$Res> {
  factory _$$PassportFileImplCopyWith(
          _$PassportFileImpl value, $Res Function(_$PassportFileImpl) then) =
      __$$PassportFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'file_size') int fileSize,
      @JsonKey(name: 'file_date') int fileDate});
}

/// @nodoc
class __$$PassportFileImplCopyWithImpl<$Res>
    extends _$PassportFileCopyWithImpl<$Res, _$PassportFileImpl>
    implements _$$PassportFileImplCopyWith<$Res> {
  __$$PassportFileImplCopyWithImpl(
      _$PassportFileImpl _value, $Res Function(_$PassportFileImpl) _then)
      : super(_value, _then);

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
    return _then(_$PassportFileImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileDate: null == fileDate
          ? _value.fileDate
          : fileDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportFileImpl implements _PassportFile {
  const _$PassportFileImpl(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'file_size') required this.fileSize,
      @JsonKey(name: 'file_date') required this.fileDate});

  factory _$PassportFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportFileImplFromJson(json);

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
  /// You can get the [DateTime] object as [fileDateTime] getter.
  @override
  @JsonKey(name: 'file_date')
  final int fileDate;

  @override
  String toString() {
    return 'PassportFile(fileId: $fileId, fileUniqueId: $fileUniqueId, fileSize: $fileSize, fileDate: $fileDate)';
  }

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportFileImplCopyWith<_$PassportFileImpl> get copyWith =>
      __$$PassportFileImplCopyWithImpl<_$PassportFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportFileImplToJson(
      this,
    );
  }
}

abstract class _PassportFile implements PassportFile {
  const factory _PassportFile(
          {@JsonKey(name: 'file_id') required final String fileId,
          @JsonKey(name: 'file_unique_id') required final String fileUniqueId,
          @JsonKey(name: 'file_size') required final int fileSize,
          @JsonKey(name: 'file_date') required final int fileDate}) =
      _$PassportFileImpl;

  factory _PassportFile.fromJson(Map<String, dynamic> json) =
      _$PassportFileImpl.fromJson;

  /// Unique identifier for this file
  @override
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// File size
  @override
  @JsonKey(name: 'file_size')
  int get fileSize;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as [fileDateTime] getter.
  @override
  @JsonKey(name: 'file_date')
  int get fileDate;

  /// Create a copy of PassportFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportFileImplCopyWith<_$PassportFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
