// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatPhoto {
  /// File identifier of small (160x160) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @JsonKey(name: 'small_file_id')
  String get smallFileId;

  /// Unique file identifier of small (160x160) chat photo, which is supposed
  /// to be the same over time and for different bots. Can't be used to
  /// download or reuse the file.
  @JsonKey(name: 'small_file_unique_id')
  String get smallFileUniqueId;

  /// File identifier of big (640x640) chat photo. This file_id can be used
  /// only for photo download and only for as long as the photo is not
  /// changed.
  @JsonKey(name: 'big_file_id')
  String get bigFileId;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to
  /// be the same over time and for different bots. Can't be used to download
  /// or reuse the file.
  @JsonKey(name: 'big_file_unique_id')
  String get bigFileUniqueId;

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatPhotoCopyWith<ChatPhoto> get copyWith =>
      _$ChatPhotoCopyWithImpl<ChatPhoto>(this as ChatPhoto, _$identity);

  /// Serializes this ChatPhoto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatPhoto(smallFileId: $smallFileId, smallFileUniqueId: $smallFileUniqueId, bigFileId: $bigFileId, bigFileUniqueId: $bigFileUniqueId)';
  }
}

/// @nodoc
abstract mixin class $ChatPhotoCopyWith<$Res> {
  factory $ChatPhotoCopyWith(ChatPhoto value, $Res Function(ChatPhoto) _then) =
      _$ChatPhotoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'small_file_id') String smallFileId,
    @JsonKey(name: 'small_file_unique_id') String smallFileUniqueId,
    @JsonKey(name: 'big_file_id') String bigFileId,
    @JsonKey(name: 'big_file_unique_id') String bigFileUniqueId,
  });
}

/// @nodoc
class _$ChatPhotoCopyWithImpl<$Res> implements $ChatPhotoCopyWith<$Res> {
  _$ChatPhotoCopyWithImpl(this._self, this._then);

  final ChatPhoto _self;
  final $Res Function(ChatPhoto) _then;

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
    return _then(
      _self.copyWith(
        smallFileId: null == smallFileId
            ? _self.smallFileId
            : smallFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        smallFileUniqueId: null == smallFileUniqueId
            ? _self.smallFileUniqueId
            : smallFileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        bigFileId: null == bigFileId
            ? _self.bigFileId
            : bigFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        bigFileUniqueId: null == bigFileUniqueId
            ? _self.bigFileUniqueId
            : bigFileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ChatPhoto].
extension ChatPhotoPatterns on ChatPhoto {
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
    TResult Function(_ChatPhoto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatPhoto() when $default != null:
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
    TResult Function(_ChatPhoto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatPhoto():
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
    TResult? Function(_ChatPhoto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatPhoto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatPhoto implements ChatPhoto {
  const _ChatPhoto({
    @JsonKey(name: 'small_file_id') required this.smallFileId,
    @JsonKey(name: 'small_file_unique_id') required this.smallFileUniqueId,
    @JsonKey(name: 'big_file_id') required this.bigFileId,
    @JsonKey(name: 'big_file_unique_id') required this.bigFileUniqueId,
  });
  factory _ChatPhoto.fromJson(Map<String, dynamic> json) =>
      _$ChatPhotoFromJson(json);

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

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatPhotoCopyWith<_ChatPhoto> get copyWith =>
      __$ChatPhotoCopyWithImpl<_ChatPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatPhotoToJson(this);
  }

  @override
  String toString() {
    return 'ChatPhoto(smallFileId: $smallFileId, smallFileUniqueId: $smallFileUniqueId, bigFileId: $bigFileId, bigFileUniqueId: $bigFileUniqueId)';
  }
}

/// @nodoc
abstract mixin class _$ChatPhotoCopyWith<$Res>
    implements $ChatPhotoCopyWith<$Res> {
  factory _$ChatPhotoCopyWith(
    _ChatPhoto value,
    $Res Function(_ChatPhoto) _then,
  ) = __$ChatPhotoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'small_file_id') String smallFileId,
    @JsonKey(name: 'small_file_unique_id') String smallFileUniqueId,
    @JsonKey(name: 'big_file_id') String bigFileId,
    @JsonKey(name: 'big_file_unique_id') String bigFileUniqueId,
  });
}

/// @nodoc
class __$ChatPhotoCopyWithImpl<$Res> implements _$ChatPhotoCopyWith<$Res> {
  __$ChatPhotoCopyWithImpl(this._self, this._then);

  final _ChatPhoto _self;
  final $Res Function(_ChatPhoto) _then;

  /// Create a copy of ChatPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? smallFileId = null,
    Object? smallFileUniqueId = null,
    Object? bigFileId = null,
    Object? bigFileUniqueId = null,
  }) {
    return _then(
      _ChatPhoto(
        smallFileId: null == smallFileId
            ? _self.smallFileId
            : smallFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        smallFileUniqueId: null == smallFileUniqueId
            ? _self.smallFileUniqueId
            : smallFileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
        bigFileId: null == bigFileId
            ? _self.bigFileId
            : bigFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        bigFileUniqueId: null == bigFileUniqueId
            ? _self.bigFileUniqueId
            : bigFileUniqueId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
