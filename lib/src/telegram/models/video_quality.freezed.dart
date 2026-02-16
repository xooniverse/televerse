// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoQuality {
  /// Identifier for this file, which can be used to download or reuse the file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Video width
  int get width;

  /// Video height
  int get height;

  /// Codec that was used to encode the video, for example, “h264”,
  /// “h265”, or “av01”
  String get codec;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing
  /// this value.
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of VideoQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoQualityCopyWith<VideoQuality> get copyWith =>
      _$VideoQualityCopyWithImpl<VideoQuality>(
        this as VideoQuality,
        _$identity,
      );

  /// Serializes this VideoQuality to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VideoQuality(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, codec: $codec, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $VideoQualityCopyWith<$Res> {
  factory $VideoQualityCopyWith(
    VideoQuality value,
    $Res Function(VideoQuality) _then,
  ) = _$VideoQualityCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    int width,
    int height,
    String codec,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class _$VideoQualityCopyWithImpl<$Res> implements $VideoQualityCopyWith<$Res> {
  _$VideoQualityCopyWithImpl(this._self, this._then);

  final VideoQuality _self;
  final $Res Function(VideoQuality) _then;

  /// Create a copy of VideoQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? codec = null,
    Object? fileSize = freezed,
  }) {
    return _then(
      _self.copyWith(
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
        codec: null == codec
            ? _self.codec
            : codec // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [VideoQuality].
extension VideoQualityPatterns on VideoQuality {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoQuality value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoQuality() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoQuality value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoQuality():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoQuality value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoQuality() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoQuality implements VideoQuality {
  const _VideoQuality({
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.codec,
    @JsonKey(name: 'file_size') this.fileSize,
  });
  factory _VideoQuality.fromJson(Map<String, dynamic> json) =>
      _$VideoQualityFromJson(json);

  /// Identifier for this file, which can be used to download or reuse the file
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the file.
  @override
  @JsonKey(name: 'file_unique_id')
  final String fileUniqueId;

  /// Video width
  @override
  final int width;

  /// Video height
  @override
  final int height;

  /// Codec that was used to encode the video, for example, “h264”,
  /// “h265”, or “av01”
  @override
  final String codec;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing
  /// this value.
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Create a copy of VideoQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoQualityCopyWith<_VideoQuality> get copyWith =>
      __$VideoQualityCopyWithImpl<_VideoQuality>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoQualityToJson(this);
  }

  @override
  String toString() {
    return 'VideoQuality(fileId: $fileId, fileUniqueId: $fileUniqueId, width: $width, height: $height, codec: $codec, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$VideoQualityCopyWith<$Res>
    implements $VideoQualityCopyWith<$Res> {
  factory _$VideoQualityCopyWith(
    _VideoQuality value,
    $Res Function(_VideoQuality) _then,
  ) = __$VideoQualityCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    int width,
    int height,
    String codec,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class __$VideoQualityCopyWithImpl<$Res>
    implements _$VideoQualityCopyWith<$Res> {
  __$VideoQualityCopyWithImpl(this._self, this._then);

  final _VideoQuality _self;
  final $Res Function(_VideoQuality) _then;

  /// Create a copy of VideoQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? width = null,
    Object? height = null,
    Object? codec = null,
    Object? fileSize = freezed,
  }) {
    return _then(
      _VideoQuality(
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
        codec: null == codec
            ? _self.codec
            : codec // ignore: cast_nullable_to_non_nullable
                  as String,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
