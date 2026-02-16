// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_audios.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileAudios {
  /// Total number of profile audios for the target user.
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Requested profile audios.
  @JsonKey(name: 'audios')
  List<Audio> get audios;

  /// Create a copy of UserProfileAudios
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfileAudiosCopyWith<UserProfileAudios> get copyWith =>
      _$UserProfileAudiosCopyWithImpl<UserProfileAudios>(
        this as UserProfileAudios,
        _$identity,
      );

  /// Serializes this UserProfileAudios to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UserProfileAudios(totalCount: $totalCount, audios: $audios)';
  }
}

/// @nodoc
abstract mixin class $UserProfileAudiosCopyWith<$Res> {
  factory $UserProfileAudiosCopyWith(
    UserProfileAudios value,
    $Res Function(UserProfileAudios) _then,
  ) = _$UserProfileAudiosCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'audios') List<Audio> audios,
  });
}

/// @nodoc
class _$UserProfileAudiosCopyWithImpl<$Res>
    implements $UserProfileAudiosCopyWith<$Res> {
  _$UserProfileAudiosCopyWithImpl(this._self, this._then);

  final UserProfileAudios _self;
  final $Res Function(UserProfileAudios) _then;

  /// Create a copy of UserProfileAudios
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalCount = null, Object? audios = null}) {
    return _then(
      _self.copyWith(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        audios: null == audios
            ? _self.audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<Audio>,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [UserProfileAudios].
extension UserProfileAudiosPatterns on UserProfileAudios {
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
    TResult Function(_UserProfileAudios value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfileAudios() when $default != null:
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
    TResult Function(_UserProfileAudios value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileAudios():
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
    TResult? Function(_UserProfileAudios value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileAudios() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserProfileAudios implements UserProfileAudios {
  const _UserProfileAudios({
    @JsonKey(name: 'total_count') required this.totalCount,
    @JsonKey(name: 'audios') required final List<Audio> audios,
  }) : _audios = audios;
  factory _UserProfileAudios.fromJson(Map<String, dynamic> json) =>
      _$UserProfileAudiosFromJson(json);

  /// Total number of profile audios for the target user.
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  /// Requested profile audios.
  final List<Audio> _audios;

  /// Requested profile audios.
  @override
  @JsonKey(name: 'audios')
  List<Audio> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  /// Create a copy of UserProfileAudios
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfileAudiosCopyWith<_UserProfileAudios> get copyWith =>
      __$UserProfileAudiosCopyWithImpl<_UserProfileAudios>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfileAudiosToJson(this);
  }

  @override
  String toString() {
    return 'UserProfileAudios(totalCount: $totalCount, audios: $audios)';
  }
}

/// @nodoc
abstract mixin class _$UserProfileAudiosCopyWith<$Res>
    implements $UserProfileAudiosCopyWith<$Res> {
  factory _$UserProfileAudiosCopyWith(
    _UserProfileAudios value,
    $Res Function(_UserProfileAudios) _then,
  ) = __$UserProfileAudiosCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total_count') int totalCount,
    @JsonKey(name: 'audios') List<Audio> audios,
  });
}

/// @nodoc
class __$UserProfileAudiosCopyWithImpl<$Res>
    implements _$UserProfileAudiosCopyWith<$Res> {
  __$UserProfileAudiosCopyWithImpl(this._self, this._then);

  final _UserProfileAudios _self;
  final $Res Function(_UserProfileAudios) _then;

  /// Create a copy of UserProfileAudios
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? totalCount = null, Object? audios = null}) {
    return _then(
      _UserProfileAudios(
        totalCount: null == totalCount
            ? _self.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        audios: null == audios
            ? _self._audios
            : audios // ignore: cast_nullable_to_non_nullable
                  as List<Audio>,
      ),
    );
  }
}
