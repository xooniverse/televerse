// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Voice {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @JsonKey(name: 'duration')
  int get duration;

  /// Optional. MIME type of the file as defined by sender
  @JsonKey(name: 'mime_type')
  String? get mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this value.
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Create a copy of Voice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VoiceCopyWith<Voice> get copyWith =>
      _$VoiceCopyWithImpl<Voice>(this as Voice, _$identity);

  /// Serializes this Voice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Voice(fileId: $fileId, fileUniqueId: $fileUniqueId, duration: $duration, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class $VoiceCopyWith<$Res> {
  factory $VoiceCopyWith(Voice value, $Res Function(Voice) _then) =
      _$VoiceCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class _$VoiceCopyWithImpl<$Res> implements $VoiceCopyWith<$Res> {
  _$VoiceCopyWithImpl(this._self, this._then);

  final Voice _self;
  final $Res Function(Voice) _then;

  /// Create a copy of Voice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? duration = null,
    Object? mimeType = freezed,
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
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Voice].
extension VoicePatterns on Voice {
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
    TResult Function(_Voice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Voice() when $default != null:
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
    TResult Function(_Voice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Voice():
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
    TResult? Function(_Voice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Voice() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Voice implements Voice {
  const _Voice({
    @JsonKey(name: 'file_id') required this.fileId,
    @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
    @JsonKey(name: 'duration') required this.duration,
    @JsonKey(name: 'mime_type') this.mimeType,
    @JsonKey(name: 'file_size') this.fileSize,
  });
  factory _Voice.fromJson(Map<String, dynamic> json) => _$VoiceFromJson(json);

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

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as `durationTime`
  @override
  @JsonKey(name: 'duration')
  final int duration;

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

  /// Create a copy of Voice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VoiceCopyWith<_Voice> get copyWith =>
      __$VoiceCopyWithImpl<_Voice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VoiceToJson(this);
  }

  @override
  String toString() {
    return 'Voice(fileId: $fileId, fileUniqueId: $fileUniqueId, duration: $duration, mimeType: $mimeType, fileSize: $fileSize)';
  }
}

/// @nodoc
abstract mixin class _$VoiceCopyWith<$Res> implements $VoiceCopyWith<$Res> {
  factory _$VoiceCopyWith(_Voice value, $Res Function(_Voice) _then) =
      __$VoiceCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'file_id') String fileId,
    @JsonKey(name: 'file_unique_id') String fileUniqueId,
    @JsonKey(name: 'duration') int duration,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'file_size') int? fileSize,
  });
}

/// @nodoc
class __$VoiceCopyWithImpl<$Res> implements _$VoiceCopyWith<$Res> {
  __$VoiceCopyWithImpl(this._self, this._then);

  final _Voice _self;
  final $Res Function(_Voice) _then;

  /// Create a copy of Voice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? duration = null,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(
      _Voice(
        fileId: null == fileId
            ? _self.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUniqueId: null == fileUniqueId
            ? _self.fileUniqueId
            : fileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        duration: null == duration
            ? _self.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        mimeType: freezed == mimeType
            ? _self.mimeType
            : mimeType // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileSize: freezed == fileSize
            ? _self.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
