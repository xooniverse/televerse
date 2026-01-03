// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_message_price_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectMessagePriceChanged {
  /// True, if direct messages are enabled for the channel chat; false otherwise
  @JsonKey(name: 'are_direct_messages_enabled')
  bool get areDirectMessagesEnabled;

  /// Optional. The new number of Telegram Stars that must be paid by users for
  /// each direct message sent to the channel. Does not apply to users who have
  /// been exempted by administrators. Defaults to 0.
  @JsonKey(name: 'direct_message_star_count')
  int? get directMessageStarCount;

  /// Create a copy of DirectMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DirectMessagePriceChangedCopyWith<DirectMessagePriceChanged> get copyWith =>
      _$DirectMessagePriceChangedCopyWithImpl<DirectMessagePriceChanged>(
        this as DirectMessagePriceChanged,
        _$identity,
      );

  /// Serializes this DirectMessagePriceChanged to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'DirectMessagePriceChanged(areDirectMessagesEnabled: $areDirectMessagesEnabled, directMessageStarCount: $directMessageStarCount)';
  }
}

/// @nodoc
abstract mixin class $DirectMessagePriceChangedCopyWith<$Res> {
  factory $DirectMessagePriceChangedCopyWith(
    DirectMessagePriceChanged value,
    $Res Function(DirectMessagePriceChanged) _then,
  ) = _$DirectMessagePriceChangedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'are_direct_messages_enabled') bool areDirectMessagesEnabled,
    @JsonKey(name: 'direct_message_star_count') int? directMessageStarCount,
  });
}

/// @nodoc
class _$DirectMessagePriceChangedCopyWithImpl<$Res>
    implements $DirectMessagePriceChangedCopyWith<$Res> {
  _$DirectMessagePriceChangedCopyWithImpl(this._self, this._then);

  final DirectMessagePriceChanged _self;
  final $Res Function(DirectMessagePriceChanged) _then;

  /// Create a copy of DirectMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areDirectMessagesEnabled = null,
    Object? directMessageStarCount = freezed,
  }) {
    return _then(
      _self.copyWith(
        areDirectMessagesEnabled: null == areDirectMessagesEnabled
            ? _self.areDirectMessagesEnabled
            : areDirectMessagesEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        directMessageStarCount: freezed == directMessageStarCount
            ? _self.directMessageStarCount
            : directMessageStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [DirectMessagePriceChanged].
extension DirectMessagePriceChangedPatterns on DirectMessagePriceChanged {
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
    TResult Function(_DirectMessagePriceChanged value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DirectMessagePriceChanged() when $default != null:
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
    TResult Function(_DirectMessagePriceChanged value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectMessagePriceChanged():
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
    TResult? Function(_DirectMessagePriceChanged value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectMessagePriceChanged() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DirectMessagePriceChanged implements DirectMessagePriceChanged {
  const _DirectMessagePriceChanged({
    @JsonKey(name: 'are_direct_messages_enabled')
    required this.areDirectMessagesEnabled,
    @JsonKey(name: 'direct_message_star_count') this.directMessageStarCount,
  });
  factory _DirectMessagePriceChanged.fromJson(Map<String, dynamic> json) =>
      _$DirectMessagePriceChangedFromJson(json);

  /// True, if direct messages are enabled for the channel chat; false otherwise
  @override
  @JsonKey(name: 'are_direct_messages_enabled')
  final bool areDirectMessagesEnabled;

  /// Optional. The new number of Telegram Stars that must be paid by users for
  /// each direct message sent to the channel. Does not apply to users who have
  /// been exempted by administrators. Defaults to 0.
  @override
  @JsonKey(name: 'direct_message_star_count')
  final int? directMessageStarCount;

  /// Create a copy of DirectMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DirectMessagePriceChangedCopyWith<_DirectMessagePriceChanged>
  get copyWith =>
      __$DirectMessagePriceChangedCopyWithImpl<_DirectMessagePriceChanged>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$DirectMessagePriceChangedToJson(this);
  }

  @override
  String toString() {
    return 'DirectMessagePriceChanged(areDirectMessagesEnabled: $areDirectMessagesEnabled, directMessageStarCount: $directMessageStarCount)';
  }
}

/// @nodoc
abstract mixin class _$DirectMessagePriceChangedCopyWith<$Res>
    implements $DirectMessagePriceChangedCopyWith<$Res> {
  factory _$DirectMessagePriceChangedCopyWith(
    _DirectMessagePriceChanged value,
    $Res Function(_DirectMessagePriceChanged) _then,
  ) = __$DirectMessagePriceChangedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'are_direct_messages_enabled') bool areDirectMessagesEnabled,
    @JsonKey(name: 'direct_message_star_count') int? directMessageStarCount,
  });
}

/// @nodoc
class __$DirectMessagePriceChangedCopyWithImpl<$Res>
    implements _$DirectMessagePriceChangedCopyWith<$Res> {
  __$DirectMessagePriceChangedCopyWithImpl(this._self, this._then);

  final _DirectMessagePriceChanged _self;
  final $Res Function(_DirectMessagePriceChanged) _then;

  /// Create a copy of DirectMessagePriceChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? areDirectMessagesEnabled = null,
    Object? directMessageStarCount = freezed,
  }) {
    return _then(
      _DirectMessagePriceChanged(
        areDirectMessagesEnabled: null == areDirectMessagesEnabled
            ? _self.areDirectMessagesEnabled
            : areDirectMessagesEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        directMessageStarCount: freezed == directMessageStarCount
            ? _self.directMessageStarCount
            : directMessageStarCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
