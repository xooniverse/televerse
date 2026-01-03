// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_messages_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectMessagesTopic {
  /// Unique identifier of the topic
  @JsonKey(name: 'topic_id')
  int get topicId;

  /// Optional. Information about the user that created the topic.
  /// Currently, it is always present according to Telegram documentation.
  @JsonKey(name: 'user')
  User? get user;

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DirectMessagesTopicCopyWith<DirectMessagesTopic> get copyWith =>
      _$DirectMessagesTopicCopyWithImpl<DirectMessagesTopic>(
        this as DirectMessagesTopic,
        _$identity,
      );

  /// Serializes this DirectMessagesTopic to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'DirectMessagesTopic(topicId: $topicId, user: $user)';
  }
}

/// @nodoc
abstract mixin class $DirectMessagesTopicCopyWith<$Res> {
  factory $DirectMessagesTopicCopyWith(
    DirectMessagesTopic value,
    $Res Function(DirectMessagesTopic) _then,
  ) = _$DirectMessagesTopicCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'topic_id') int topicId,
    @JsonKey(name: 'user') User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DirectMessagesTopicCopyWithImpl<$Res>
    implements $DirectMessagesTopicCopyWith<$Res> {
  _$DirectMessagesTopicCopyWithImpl(this._self, this._then);

  final DirectMessagesTopic _self;
  final $Res Function(DirectMessagesTopic) _then;

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? topicId = null, Object? user = freezed}) {
    return _then(
      _self.copyWith(
        topicId: null == topicId
            ? _self.topicId
            : topicId // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DirectMessagesTopic].
extension DirectMessagesTopicPatterns on DirectMessagesTopic {
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
    TResult Function(_DirectMessagesTopic value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DirectMessagesTopic() when $default != null:
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
    TResult Function(_DirectMessagesTopic value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectMessagesTopic():
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
    TResult? Function(_DirectMessagesTopic value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectMessagesTopic() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DirectMessagesTopic implements DirectMessagesTopic {
  const _DirectMessagesTopic({
    @JsonKey(name: 'topic_id') required this.topicId,
    @JsonKey(name: 'user') this.user,
  });
  factory _DirectMessagesTopic.fromJson(Map<String, dynamic> json) =>
      _$DirectMessagesTopicFromJson(json);

  /// Unique identifier of the topic
  @override
  @JsonKey(name: 'topic_id')
  final int topicId;

  /// Optional. Information about the user that created the topic.
  /// Currently, it is always present according to Telegram documentation.
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DirectMessagesTopicCopyWith<_DirectMessagesTopic> get copyWith =>
      __$DirectMessagesTopicCopyWithImpl<_DirectMessagesTopic>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$DirectMessagesTopicToJson(this);
  }

  @override
  String toString() {
    return 'DirectMessagesTopic(topicId: $topicId, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$DirectMessagesTopicCopyWith<$Res>
    implements $DirectMessagesTopicCopyWith<$Res> {
  factory _$DirectMessagesTopicCopyWith(
    _DirectMessagesTopic value,
    $Res Function(_DirectMessagesTopic) _then,
  ) = __$DirectMessagesTopicCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'topic_id') int topicId,
    @JsonKey(name: 'user') User? user,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$DirectMessagesTopicCopyWithImpl<$Res>
    implements _$DirectMessagesTopicCopyWith<$Res> {
  __$DirectMessagesTopicCopyWithImpl(this._self, this._then);

  final _DirectMessagesTopic _self;
  final $Res Function(_DirectMessagesTopic) _then;

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? topicId = null, Object? user = freezed}) {
    return _then(
      _DirectMessagesTopic(
        topicId: null == topicId
            ? _self.topicId
            : topicId // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of DirectMessagesTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
