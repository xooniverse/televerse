// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionType _$ReactionTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'emoji':
      return ReactionTypeEmoji.fromJson(json);
    case 'custom_emoji':
      return ReactionTypeCustomEmoji.fromJson(json);
    case 'paid':
      return ReactionTypePaid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ReactionType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ReactionType {
  /// Type of the reaction, must be "emoji"
  ReactionTypeType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReactionTypeEmoji value) emoji,
    required TResult Function(ReactionTypeCustomEmoji value) customEmoji,
    required TResult Function(ReactionTypePaid value) paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReactionTypeEmoji value)? emoji,
    TResult? Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult? Function(ReactionTypePaid value)? paid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReactionTypeEmoji value)? emoji,
    TResult Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult Function(ReactionTypePaid value)? paid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ReactionType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionTypeCopyWith<ReactionType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionTypeCopyWith<$Res> {
  factory $ReactionTypeCopyWith(
          ReactionType value, $Res Function(ReactionType) then) =
      _$ReactionTypeCopyWithImpl<$Res, ReactionType>;
  @useResult
  $Res call({ReactionTypeType type});
}

/// @nodoc
class _$ReactionTypeCopyWithImpl<$Res, $Val extends ReactionType>
    implements $ReactionTypeCopyWith<$Res> {
  _$ReactionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionTypeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionTypeEmojiImplCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory _$$ReactionTypeEmojiImplCopyWith(_$ReactionTypeEmojiImpl value,
          $Res Function(_$ReactionTypeEmojiImpl) then) =
      __$$ReactionTypeEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReactionTypeType type, @JsonKey(name: 'emoji') String emoji});
}

/// @nodoc
class __$$ReactionTypeEmojiImplCopyWithImpl<$Res>
    extends _$ReactionTypeCopyWithImpl<$Res, _$ReactionTypeEmojiImpl>
    implements _$$ReactionTypeEmojiImplCopyWith<$Res> {
  __$$ReactionTypeEmojiImplCopyWithImpl(_$ReactionTypeEmojiImpl _value,
      $Res Function(_$ReactionTypeEmojiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? emoji = null,
  }) {
    return _then(_$ReactionTypeEmojiImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionTypeType,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionTypeEmojiImpl implements ReactionTypeEmoji {
  const _$ReactionTypeEmojiImpl(
      {this.type = ReactionTypeType.emoji,
      @JsonKey(name: 'emoji') required this.emoji})
      : assert(type == ReactionTypeType.emoji,
            'type must be ReactionTypeType.emoji');

  factory _$ReactionTypeEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionTypeEmojiImplFromJson(json);

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
  @override
  @JsonKey(name: 'emoji')
  final String emoji;

  @override
  String toString() {
    return 'ReactionType.emoji(type: $type, emoji: $emoji)';
  }

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionTypeEmojiImplCopyWith<_$ReactionTypeEmojiImpl> get copyWith =>
      __$$ReactionTypeEmojiImplCopyWithImpl<_$ReactionTypeEmojiImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReactionTypeEmoji value) emoji,
    required TResult Function(ReactionTypeCustomEmoji value) customEmoji,
    required TResult Function(ReactionTypePaid value) paid,
  }) {
    return emoji(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReactionTypeEmoji value)? emoji,
    TResult? Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult? Function(ReactionTypePaid value)? paid,
  }) {
    return emoji?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReactionTypeEmoji value)? emoji,
    TResult Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult Function(ReactionTypePaid value)? paid,
    required TResult orElse(),
  }) {
    if (emoji != null) {
      return emoji(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionTypeEmojiImplToJson(
      this,
    );
  }
}

abstract class ReactionTypeEmoji implements ReactionType {
  const factory ReactionTypeEmoji(
          {final ReactionTypeType type,
          @JsonKey(name: 'emoji') required final String emoji}) =
      _$ReactionTypeEmojiImpl;

  factory ReactionTypeEmoji.fromJson(Map<String, dynamic> json) =
      _$ReactionTypeEmojiImpl.fromJson;

  /// Type of the reaction, must be "emoji"
  @override
  ReactionTypeType get type;

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
  String get emoji;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionTypeEmojiImplCopyWith<_$ReactionTypeEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReactionTypeCustomEmojiImplCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory _$$ReactionTypeCustomEmojiImplCopyWith(
          _$ReactionTypeCustomEmojiImpl value,
          $Res Function(_$ReactionTypeCustomEmojiImpl) then) =
      __$$ReactionTypeCustomEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') ReactionTypeType type,
      @JsonKey(name: 'custom_emoji_id') String customEmojiId});
}

/// @nodoc
class __$$ReactionTypeCustomEmojiImplCopyWithImpl<$Res>
    extends _$ReactionTypeCopyWithImpl<$Res, _$ReactionTypeCustomEmojiImpl>
    implements _$$ReactionTypeCustomEmojiImplCopyWith<$Res> {
  __$$ReactionTypeCustomEmojiImplCopyWithImpl(
      _$ReactionTypeCustomEmojiImpl _value,
      $Res Function(_$ReactionTypeCustomEmojiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? customEmojiId = null,
  }) {
    return _then(_$ReactionTypeCustomEmojiImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionTypeType,
      customEmojiId: null == customEmojiId
          ? _value.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionTypeCustomEmojiImpl implements ReactionTypeCustomEmoji {
  const _$ReactionTypeCustomEmojiImpl(
      {@JsonKey(name: 'type') this.type = ReactionTypeType.customEmoji,
      @JsonKey(name: 'custom_emoji_id') required this.customEmojiId})
      : assert(type == ReactionTypeType.customEmoji,
            'type must be ReactionTypeType.customEmoji');

  factory _$ReactionTypeCustomEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionTypeCustomEmojiImplFromJson(json);

  /// Type of the reaction, must be "custom_emoji"
  @override
  @JsonKey(name: 'type')
  final ReactionTypeType type;

  /// Custom emoji identifier
  @override
  @JsonKey(name: 'custom_emoji_id')
  final String customEmojiId;

  @override
  String toString() {
    return 'ReactionType.customEmoji(type: $type, customEmojiId: $customEmojiId)';
  }

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionTypeCustomEmojiImplCopyWith<_$ReactionTypeCustomEmojiImpl>
      get copyWith => __$$ReactionTypeCustomEmojiImplCopyWithImpl<
          _$ReactionTypeCustomEmojiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReactionTypeEmoji value) emoji,
    required TResult Function(ReactionTypeCustomEmoji value) customEmoji,
    required TResult Function(ReactionTypePaid value) paid,
  }) {
    return customEmoji(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReactionTypeEmoji value)? emoji,
    TResult? Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult? Function(ReactionTypePaid value)? paid,
  }) {
    return customEmoji?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReactionTypeEmoji value)? emoji,
    TResult Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult Function(ReactionTypePaid value)? paid,
    required TResult orElse(),
  }) {
    if (customEmoji != null) {
      return customEmoji(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionTypeCustomEmojiImplToJson(
      this,
    );
  }
}

abstract class ReactionTypeCustomEmoji implements ReactionType {
  const factory ReactionTypeCustomEmoji(
      {@JsonKey(name: 'type') final ReactionTypeType type,
      @JsonKey(name: 'custom_emoji_id')
      required final String customEmojiId}) = _$ReactionTypeCustomEmojiImpl;

  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) =
      _$ReactionTypeCustomEmojiImpl.fromJson;

  /// Type of the reaction, must be "custom_emoji"
  @override
  @JsonKey(name: 'type')
  ReactionTypeType get type;

  /// Custom emoji identifier
  @JsonKey(name: 'custom_emoji_id')
  String get customEmojiId;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionTypeCustomEmojiImplCopyWith<_$ReactionTypeCustomEmojiImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReactionTypePaidImplCopyWith<$Res>
    implements $ReactionTypeCopyWith<$Res> {
  factory _$$ReactionTypePaidImplCopyWith(_$ReactionTypePaidImpl value,
          $Res Function(_$ReactionTypePaidImpl) then) =
      __$$ReactionTypePaidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') ReactionTypeType type});
}

/// @nodoc
class __$$ReactionTypePaidImplCopyWithImpl<$Res>
    extends _$ReactionTypeCopyWithImpl<$Res, _$ReactionTypePaidImpl>
    implements _$$ReactionTypePaidImplCopyWith<$Res> {
  __$$ReactionTypePaidImplCopyWithImpl(_$ReactionTypePaidImpl _value,
      $Res Function(_$ReactionTypePaidImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ReactionTypePaidImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionTypeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionTypePaidImpl implements ReactionTypePaid {
  const _$ReactionTypePaidImpl(
      {@JsonKey(name: 'type') this.type = ReactionTypeType.paid})
      : assert(type == ReactionTypeType.paid,
            'type must be ReactionTypeType.paid');

  factory _$ReactionTypePaidImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionTypePaidImplFromJson(json);

  /// Type of the reaction, must be "paid"
  @override
  @JsonKey(name: 'type')
  final ReactionTypeType type;

  @override
  String toString() {
    return 'ReactionType.paid(type: $type)';
  }

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionTypePaidImplCopyWith<_$ReactionTypePaidImpl> get copyWith =>
      __$$ReactionTypePaidImplCopyWithImpl<_$ReactionTypePaidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReactionTypeEmoji value) emoji,
    required TResult Function(ReactionTypeCustomEmoji value) customEmoji,
    required TResult Function(ReactionTypePaid value) paid,
  }) {
    return paid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReactionTypeEmoji value)? emoji,
    TResult? Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult? Function(ReactionTypePaid value)? paid,
  }) {
    return paid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReactionTypeEmoji value)? emoji,
    TResult Function(ReactionTypeCustomEmoji value)? customEmoji,
    TResult Function(ReactionTypePaid value)? paid,
    required TResult orElse(),
  }) {
    if (paid != null) {
      return paid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionTypePaidImplToJson(
      this,
    );
  }
}

abstract class ReactionTypePaid implements ReactionType {
  const factory ReactionTypePaid(
          {@JsonKey(name: 'type') final ReactionTypeType type}) =
      _$ReactionTypePaidImpl;

  factory ReactionTypePaid.fromJson(Map<String, dynamic> json) =
      _$ReactionTypePaidImpl.fromJson;

  /// Type of the reaction, must be "paid"
  @override
  @JsonKey(name: 'type')
  ReactionTypeType get type;

  /// Create a copy of ReactionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionTypePaidImplCopyWith<_$ReactionTypePaidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
