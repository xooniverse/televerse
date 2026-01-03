// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReactionType _$ReactionTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emoji':
      return ReactionTypeEmoji.fromJson(json);
    case 'custom_emoji':
      return ReactionTypeCustomEmoji.fromJson(json);
    case 'paid':
      return ReactionTypePaid.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'ReactionType',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$ReactionType {
  /// Type of the reaction, must be "emoji"
  @JsonKey(name: 'type')
  ReactionTypeType get type;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReactionTypeCopyWith<ReactionType> get copyWith =>
      _$ReactionTypeCopyWithImpl<ReactionType>(
        this as ReactionType,
        _$identity,
      );

  /// Serializes this ReactionType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ReactionType(type: $type)';
  }
}

/// @nodoc
abstract mixin class $ReactionTypeCopyWith<$Res> {
  factory $ReactionTypeCopyWith(
    ReactionType value,
    $Res Function(ReactionType) _then,
  ) = _$ReactionTypeCopyWithImpl;
  @useResult
  $Res call({ReactionTypeType type});
}

/// @nodoc
class _$ReactionTypeCopyWithImpl<$Res> implements $ReactionTypeCopyWith<$Res> {
  _$ReactionTypeCopyWithImpl(this._self, this._then);

  final ReactionType _self;
  final $Res Function(ReactionType) _then;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _self.copyWith(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionTypeType,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ReactionType].
extension ReactionTypePatterns on ReactionType {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReactionTypeEmoji value)? emoji,
    TResult Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult Function(ReactionTypePaid value)? paid,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ReactionTypeEmoji() when emoji != null:
        return emoji(_that);
      case ReactionTypeCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
      case ReactionTypePaid() when paid != null:
        return paid(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ReactionTypeEmoji value) emoji,
    required TResult Function(ReactionTypeCustomEmoji value) customEmoji,
    required TResult Function(ReactionTypePaid value) paid,
  }) {
    final _that = this;
    switch (_that) {
      case ReactionTypeEmoji():
        return emoji(_that);
      case ReactionTypeCustomEmoji():
        return customEmoji(_that);
      case ReactionTypePaid():
        return paid(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReactionTypeEmoji value)? emoji,
    TResult? Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult? Function(ReactionTypePaid value)? paid,
  }) {
    final _that = this;
    switch (_that) {
      case ReactionTypeEmoji() when emoji != null:
        return emoji(_that);
      case ReactionTypeCustomEmoji() when customEmoji != null:
        return customEmoji(_that);
      case ReactionTypePaid() when paid != null:
        return paid(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class ReactionTypeEmoji implements ReactionType {
  const ReactionTypeEmoji({
    this.type = ReactionTypeType.emoji,
    @JsonKey(name: 'emoji') required this.emoji,
  }) : assert(
         type == ReactionTypeType.emoji,
         'type must be ReactionTypeType.emoji',
       );
  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) =>
      _$ReactionTypeEmojiFromJson(json);

  /// Type of the reaction, must be "emoji"
  @override
  @JsonKey()
  final ReactionTypeType type;

  /// The reaction emoji.
  ///
  /// Currently, it can be one of: "👍", "👎", "❤", "🔥", "🥰", "👏", "😁",
  /// "🤔", "🤯", "😱", "🤬", "😢", "🎉", "🤩", "🤮", "💩", "🙏", "👌", "🕊",
  /// "🤡", "🥱", "🥴", "😍", "🐳", "❤‍🔥", "🌚", "🌭", "💯", "🤣", "⚡", "🍌",
  /// "🏆", "💔", "🤨", "😐", "🍓", "🍾", "💋", "🖕", "😈", "😴", "😭", "🤓",
  /// "👻", "👨‍💻", "👀", "🎃", "🙈", "😇", "😨", "🤝", "✍", "🤗", "🫡",
  /// "🎅", "🎄", "☃", "💅", "🤪", "🗿", "🆒", "💘", "🙉", "🦄", "😘", "💊",
  /// "🙊", "😎", "👾", "🤷‍♂", "🤷", "🤷‍♀", "😡"
  @JsonKey(name: 'emoji')
  final String emoji;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReactionTypeEmojiCopyWith<ReactionTypeEmoji> get copyWith =>
      _$ReactionTypeEmojiCopyWithImpl<ReactionTypeEmoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReactionTypeEmojiToJson(this);
  }

  @override
  String toString() {
    return 'ReactionType.emoji(type: $type, emoji: $emoji)';
  }
}

/// @nodoc
abstract mixin class $ReactionTypeEmojiCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory $ReactionTypeEmojiCopyWith(
    ReactionTypeEmoji value,
    $Res Function(ReactionTypeEmoji) _then,
  ) = _$ReactionTypeEmojiCopyWithImpl;
  @override
  @useResult
  $Res call({ReactionTypeType type, @JsonKey(name: 'emoji') String emoji});
}

/// @nodoc
class _$ReactionTypeEmojiCopyWithImpl<$Res>
    implements $ReactionTypeEmojiCopyWith<$Res> {
  _$ReactionTypeEmojiCopyWithImpl(this._self, this._then);

  final ReactionTypeEmoji _self;
  final $Res Function(ReactionTypeEmoji) _then;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? emoji = null}) {
    return _then(
      ReactionTypeEmoji(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionTypeType,
        emoji: null == emoji
            ? _self.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class ReactionTypeCustomEmoji implements ReactionType {
  const ReactionTypeCustomEmoji({
    @JsonKey(name: 'type') this.type = ReactionTypeType.customEmoji,
    @JsonKey(name: 'custom_emoji_id') required this.customEmojiId,
  }) : assert(
         type == ReactionTypeType.customEmoji,
         'type must be ReactionTypeType.customEmoji',
       );
  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) =>
      _$ReactionTypeCustomEmojiFromJson(json);

  /// Type of the reaction, must be "custom_emoji"
  @override
  @JsonKey(name: 'type')
  final ReactionTypeType type;

  /// Custom emoji identifier
  @JsonKey(name: 'custom_emoji_id')
  final String customEmojiId;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReactionTypeCustomEmojiCopyWith<ReactionTypeCustomEmoji> get copyWith =>
      _$ReactionTypeCustomEmojiCopyWithImpl<ReactionTypeCustomEmoji>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ReactionTypeCustomEmojiToJson(this);
  }

  @override
  String toString() {
    return 'ReactionType.customEmoji(type: $type, customEmojiId: $customEmojiId)';
  }
}

/// @nodoc
abstract mixin class $ReactionTypeCustomEmojiCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory $ReactionTypeCustomEmojiCopyWith(
    ReactionTypeCustomEmoji value,
    $Res Function(ReactionTypeCustomEmoji) _then,
  ) = _$ReactionTypeCustomEmojiCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'type') ReactionTypeType type,
    @JsonKey(name: 'custom_emoji_id') String customEmojiId,
  });
}

/// @nodoc
class _$ReactionTypeCustomEmojiCopyWithImpl<$Res>
    implements $ReactionTypeCustomEmojiCopyWith<$Res> {
  _$ReactionTypeCustomEmojiCopyWithImpl(this._self, this._then);

  final ReactionTypeCustomEmoji _self;
  final $Res Function(ReactionTypeCustomEmoji) _then;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null, Object? customEmojiId = null}) {
    return _then(
      ReactionTypeCustomEmoji(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionTypeType,
        customEmojiId: null == customEmojiId
            ? _self.customEmojiId
            : customEmojiId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class ReactionTypePaid implements ReactionType {
  const ReactionTypePaid({
    @JsonKey(name: 'type') this.type = ReactionTypeType.paid,
  }) : assert(
         type == ReactionTypeType.paid,
         'type must be ReactionTypeType.paid',
       );
  factory ReactionTypePaid.fromJson(Map<String, dynamic> json) =>
      _$ReactionTypePaidFromJson(json);

  /// Type of the reaction, must be "paid"
  @override
  @JsonKey(name: 'type')
  final ReactionTypeType type;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReactionTypePaidCopyWith<ReactionTypePaid> get copyWith =>
      _$ReactionTypePaidCopyWithImpl<ReactionTypePaid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReactionTypePaidToJson(this);
  }

  @override
  String toString() {
    return 'ReactionType.paid(type: $type)';
  }
}

/// @nodoc
abstract mixin class $ReactionTypePaidCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory $ReactionTypePaidCopyWith(
    ReactionTypePaid value,
    $Res Function(ReactionTypePaid) _then,
  ) = _$ReactionTypePaidCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') ReactionTypeType type});
}

/// @nodoc
class _$ReactionTypePaidCopyWithImpl<$Res>
    implements $ReactionTypePaidCopyWith<$Res> {
  _$ReactionTypePaidCopyWithImpl(this._self, this._then);

  final ReactionTypePaid _self;
  final $Res Function(ReactionTypePaid) _then;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null}) {
    return _then(
      ReactionTypePaid(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ReactionTypeType,
      ),
    );
  }
}
