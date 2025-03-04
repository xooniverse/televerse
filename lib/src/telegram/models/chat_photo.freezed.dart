// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatPhoto _$ChatPhotoFromJson(Map<String, dynamic> json) {
  return _ChatPhoto.fromJson(json);
}

/// @nodoc
mixin _$ChatPhoto {
  /// File identifier of small (160x160) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @JsonKey(name: 'small_file_id')
  String get smallFileId => throw _privateConstructorUsedError;

  /// Unique file identifier of small (160x160) chat photo, which is supposed
  /// to be the same over time and for different bots. Can't be used to
  /// download or reuse the file.
  @JsonKey(name: 'small_file_unique_id')
  String get smallFileUniqueId => throw _privateConstructorUsedError;

  /// File identifier of big (640x640) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @JsonKey(name: 'big_file_id')
  String get bigFileId => throw _privateConstructorUsedError;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to
  /// be the same over time and for different bots. Can't be used to download
  /// or reuse the file.
  @JsonKey(name: 'big_file_unique_id')
  String get bigFileUniqueId => throw _privateConstructorUsedError;

  /// Serializes this ChatPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatPhotoCopyWith<ChatPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPhotoCopyWith<$Res> {
  factory $ChatPhotoCopyWith(ChatPhoto value, $Res Function(ChatPhoto) then) =
      _$ChatPhotoCopyWithImpl<$Res, ChatPhoto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'small_file_id') String smallFileId,
      @JsonKey(name: 'small_file_unique_id') String smallFileUniqueId,
      @JsonKey(name: 'big_file_id') String bigFileId,
      @JsonKey(name: 'big_file_unique_id') String bigFileUniqueId});
}

/// @nodoc
class _$ChatPhotoCopyWithImpl<$Res, $Val extends ChatPhoto>
    implements $ChatPhotoCopyWith<$Res> {
  _$ChatPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallFileId = null,
    Object? smallFileUniqueId = null,
    Object? bigFileId = null,
    Object? bigFileUniqueId = null,
  }) {
    return _then(_value.copyWith(
      smallFileId: null == smallFileId
          ? _value.smallFileId
          : smallFileId // ignore: cast_nullable_to_non_nullable
              as String,
      smallFileUniqueId: null == smallFileUniqueId
          ? _value.smallFileUniqueId
          : smallFileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      bigFileId: null == bigFileId
          ? _value.bigFileId
          : bigFileId // ignore: cast_nullable_to_non_nullable
              as String,
      bigFileUniqueId: null == bigFileUniqueId
          ? _value.bigFileUniqueId
          : bigFileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatPhotoImplCopyWith<$Res>
    implements $ChatPhotoCopyWith<$Res> {
  factory _$$ChatPhotoImplCopyWith(
          _$ChatPhotoImpl value, $Res Function(_$ChatPhotoImpl) then) =
      __$$ChatPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'small_file_id') String smallFileId,
      @JsonKey(name: 'small_file_unique_id') String smallFileUniqueId,
      @JsonKey(name: 'big_file_id') String bigFileId,
      @JsonKey(name: 'big_file_unique_id') String bigFileUniqueId});
}

/// @nodoc
class __$$ChatPhotoImplCopyWithImpl<$Res>
    extends _$ChatPhotoCopyWithImpl<$Res, _$ChatPhotoImpl>
    implements _$$ChatPhotoImplCopyWith<$Res> {
  __$$ChatPhotoImplCopyWithImpl(
      _$ChatPhotoImpl _value, $Res Function(_$ChatPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallFileId = null,
    Object? smallFileUniqueId = null,
    Object? bigFileId = null,
    Object? bigFileUniqueId = null,
  }) {
    return _then(_$ChatPhotoImpl(
      smallFileId: null == smallFileId
          ? _value.smallFileId
          : smallFileId // ignore: cast_nullable_to_non_nullable
              as String,
      smallFileUniqueId: null == smallFileUniqueId
          ? _value.smallFileUniqueId
          : smallFileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      bigFileId: null == bigFileId
          ? _value.bigFileId
          : bigFileId // ignore: cast_nullable_to_non_nullable
              as String,
      bigFileUniqueId: null == bigFileUniqueId
          ? _value.bigFileUniqueId
          : bigFileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatPhotoImpl implements _ChatPhoto {
  const _$ChatPhotoImpl(
      {@JsonKey(name: 'small_file_id') required this.smallFileId,
      @JsonKey(name: 'small_file_unique_id') required this.smallFileUniqueId,
      @JsonKey(name: 'big_file_id') required this.bigFileId,
      @JsonKey(name: 'big_file_unique_id') required this.bigFileUniqueId});

  factory _$ChatPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatPhotoImplFromJson(json);

  /// File identifier of small (160x160) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @override
  @JsonKey(name: 'small_file_id')
  final String smallFileId;

  /// Unique file identifier of small (160x160) chat photo, which is supposed
  /// to be the same over time and for different bots. Can't be used to
  /// download or reuse the file.
  @override
  @JsonKey(name: 'small_file_unique_id')
  final String smallFileUniqueId;

  /// File identifier of big (640x640) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @override
  @JsonKey(name: 'big_file_id')
  final String bigFileId;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to
  /// be the same over time and for different bots. Can't be used to download
  /// or reuse the file.
  @override
  @JsonKey(name: 'big_file_unique_id')
  final String bigFileUniqueId;

  @override
  String toString() {
    return 'ChatPhoto(smallFileId: $smallFileId, smallFileUniqueId: $smallFileUniqueId, bigFileId: $bigFileId, bigFileUniqueId: $bigFileUniqueId)';
  }

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatPhotoImplCopyWith<_$ChatPhotoImpl> get copyWith =>
      __$$ChatPhotoImplCopyWithImpl<_$ChatPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatPhotoImplToJson(
      this,
    );
  }
}

abstract class _ChatPhoto implements ChatPhoto {
  const factory _ChatPhoto(
      {@JsonKey(name: 'small_file_id') required final String smallFileId,
      @JsonKey(name: 'small_file_unique_id')
      required final String smallFileUniqueId,
      @JsonKey(name: 'big_file_id') required final String bigFileId,
      @JsonKey(name: 'big_file_unique_id')
      required final String bigFileUniqueId}) = _$ChatPhotoImpl;

  factory _ChatPhoto.fromJson(Map<String, dynamic> json) =
      _$ChatPhotoImpl.fromJson;

  /// File identifier of small (160x160) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @override
  @JsonKey(name: 'small_file_id')
  String get smallFileId;

  /// Unique file identifier of small (160x160) chat photo, which is supposed
  /// to be the same over time and for different bots. Can't be used to
  /// download or reuse the file.
  @override
  @JsonKey(name: 'small_file_unique_id')
  String get smallFileUniqueId;

  /// File identifier of big (640x640) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @override
  @JsonKey(name: 'big_file_id')
  String get bigFileId;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to
  /// be the same over time and for different bots. Can't be used to download
  /// or reuse the file.
  @override
  @JsonKey(name: 'big_file_unique_id')
  String get bigFileUniqueId;

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatPhotoImplCopyWith<_$ChatPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
