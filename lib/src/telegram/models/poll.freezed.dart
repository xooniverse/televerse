// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Poll {
  /// Unique poll identifier
  @JsonKey(name: 'id')
  String get id;

  /// Poll question, 1-300 characters
  @JsonKey(name: 'question')
  String get question;

  /// List of poll options
  @JsonKey(name: 'options')
  List<PollOption> get options;

  /// Total number of users that voted in the poll
  @JsonKey(name: 'total_voter_count')
  int get totalVoterCount;

  /// True, if the poll is closed
  @JsonKey(name: 'is_closed')
  bool get isClosed;

  /// True, if the poll is anonymous
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// Poll type, currently can be "regular" or "quiz"
  @JsonKey(name: 'type')
  PollType get type;

  /// True, if the poll allows multiple answers
  @JsonKey(name: 'allows_multiple_answers')
  bool get allowsMultipleAnswers;

  /// Optional. 0-based identifier of the correct answer option. Available
  /// only for polls in the quiz mode, which are closed, or was sent (not
  /// forwarded) by the bot or to the private chat with the bot.
  @JsonKey(name: 'correct_option_id')
  int? get correctOptionId;

  /// Optional. Text that is shown when a user chooses an incorrect answer or
  /// taps on the lamp icon in a quiz-style poll, 0-200 characters
  @JsonKey(name: 'explanation')
  String? get explanation;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that
  /// appear in the explanation
  @JsonKey(name: 'explanation_entities')
  List<MessageEntity>? get explanationEntities;

  /// Optional. Amount of time in seconds the poll will be active after
  /// creation
  ///
  /// A handy [Duration] object is available as `openPeriodDuration` getter
  @JsonKey(name: 'open_period')
  int? get openPeriod;

  /// Optional. Point in time (Unix timestamp) when the poll will be
  /// automatically closed
  ///
  /// A handy [DateTime] object is available as `closeDateTime` getter
  @JsonKey(name: 'close_date')
  int? get closeDate;

  /// Optional. Special entities that appear in the question. Currently, only
  /// custom emoji entities are allowed in poll questions
  @JsonKey(name: 'question_entities')
  List<MessageEntity>? get questionEntities;

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PollCopyWith<Poll> get copyWith =>
      _$PollCopyWithImpl<Poll>(this as Poll, _$identity);

  /// Serializes this Poll to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Poll(id: $id, question: $question, options: $options, totalVoterCount: $totalVoterCount, isClosed: $isClosed, isAnonymous: $isAnonymous, type: $type, allowsMultipleAnswers: $allowsMultipleAnswers, correctOptionId: $correctOptionId, explanation: $explanation, explanationEntities: $explanationEntities, openPeriod: $openPeriod, closeDate: $closeDate, questionEntities: $questionEntities)';
  }
}

/// @nodoc
abstract mixin class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) _then) =
      _$PollCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'question') String question,
    @JsonKey(name: 'options') List<PollOption> options,
    @JsonKey(name: 'total_voter_count') int totalVoterCount,
    @JsonKey(name: 'is_closed') bool isClosed,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'type') PollType type,
    @JsonKey(name: 'allows_multiple_answers') bool allowsMultipleAnswers,
    @JsonKey(name: 'correct_option_id') int? correctOptionId,
    @JsonKey(name: 'explanation') String? explanation,
    @JsonKey(name: 'explanation_entities')
    List<MessageEntity>? explanationEntities,
    @JsonKey(name: 'open_period') int? openPeriod,
    @JsonKey(name: 'close_date') int? closeDate,
    @JsonKey(name: 'question_entities') List<MessageEntity>? questionEntities,
  });
}

/// @nodoc
class _$PollCopyWithImpl<$Res> implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._self, this._then);

  final Poll _self;
  final $Res Function(Poll) _then;

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? totalVoterCount = null,
    Object? isClosed = null,
    Object? isAnonymous = null,
    Object? type = null,
    Object? allowsMultipleAnswers = null,
    Object? correctOptionId = freezed,
    Object? explanation = freezed,
    Object? explanationEntities = freezed,
    Object? openPeriod = freezed,
    Object? closeDate = freezed,
    Object? questionEntities = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        question: null == question
            ? _self.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        options: null == options
            ? _self.options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<PollOption>,
        totalVoterCount: null == totalVoterCount
            ? _self.totalVoterCount
            : totalVoterCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isClosed: null == isClosed
            ? _self.isClosed
            : isClosed // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAnonymous: null == isAnonymous
            ? _self.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PollType,
        allowsMultipleAnswers: null == allowsMultipleAnswers
            ? _self.allowsMultipleAnswers
            : allowsMultipleAnswers // ignore: cast_nullable_to_non_nullable
                  as bool,
        correctOptionId: freezed == correctOptionId
            ? _self.correctOptionId
            : correctOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        explanation: freezed == explanation
            ? _self.explanation
            : explanation // ignore: cast_nullable_to_non_nullable
                  as String?,
        explanationEntities: freezed == explanationEntities
            ? _self.explanationEntities
            : explanationEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        openPeriod: freezed == openPeriod
            ? _self.openPeriod
            : openPeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        closeDate: freezed == closeDate
            ? _self.closeDate
            : closeDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        questionEntities: freezed == questionEntities
            ? _self.questionEntities
            : questionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Poll].
extension PollPatterns on Poll {
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
    TResult Function(_Poll value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Poll() when $default != null:
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
  TResult map<TResult extends Object?>(TResult Function(_Poll value) $default) {
    final _that = this;
    switch (_that) {
      case _Poll():
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
    TResult? Function(_Poll value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Poll() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Poll implements Poll {
  const _Poll({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'question') required this.question,
    @JsonKey(name: 'options') required final List<PollOption> options,
    @JsonKey(name: 'total_voter_count') required this.totalVoterCount,
    @JsonKey(name: 'is_closed') required this.isClosed,
    @JsonKey(name: 'is_anonymous') required this.isAnonymous,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'allows_multiple_answers')
    required this.allowsMultipleAnswers,
    @JsonKey(name: 'correct_option_id') this.correctOptionId,
    @JsonKey(name: 'explanation') this.explanation,
    @JsonKey(name: 'explanation_entities')
    final List<MessageEntity>? explanationEntities,
    @JsonKey(name: 'open_period') this.openPeriod,
    @JsonKey(name: 'close_date') this.closeDate,
    @JsonKey(name: 'question_entities')
    final List<MessageEntity>? questionEntities,
  }) : _options = options,
       _explanationEntities = explanationEntities,
       _questionEntities = questionEntities;
  factory _Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);

  /// Unique poll identifier
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Poll question, 1-300 characters
  @override
  @JsonKey(name: 'question')
  final String question;

  /// List of poll options
  final List<PollOption> _options;

  /// List of poll options
  @override
  @JsonKey(name: 'options')
  List<PollOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// Total number of users that voted in the poll
  @override
  @JsonKey(name: 'total_voter_count')
  final int totalVoterCount;

  /// True, if the poll is closed
  @override
  @JsonKey(name: 'is_closed')
  final bool isClosed;

  /// True, if the poll is anonymous
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// Poll type, currently can be "regular" or "quiz"
  @override
  @JsonKey(name: 'type')
  final PollType type;

  /// True, if the poll allows multiple answers
  @override
  @JsonKey(name: 'allows_multiple_answers')
  final bool allowsMultipleAnswers;

  /// Optional. 0-based identifier of the correct answer option. Available
  /// only for polls in the quiz mode, which are closed, or was sent (not
  /// forwarded) by the bot or to the private chat with the bot.
  @override
  @JsonKey(name: 'correct_option_id')
  final int? correctOptionId;

  /// Optional. Text that is shown when a user chooses an incorrect answer or
  /// taps on the lamp icon in a quiz-style poll, 0-200 characters
  @override
  @JsonKey(name: 'explanation')
  final String? explanation;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that
  /// appear in the explanation
  final List<MessageEntity>? _explanationEntities;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that
  /// appear in the explanation
  @override
  @JsonKey(name: 'explanation_entities')
  List<MessageEntity>? get explanationEntities {
    final value = _explanationEntities;
    if (value == null) return null;
    if (_explanationEntities is EqualUnmodifiableListView)
      return _explanationEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Amount of time in seconds the poll will be active after
  /// creation
  ///
  /// A handy [Duration] object is available as `openPeriodDuration` getter
  @override
  @JsonKey(name: 'open_period')
  final int? openPeriod;

  /// Optional. Point in time (Unix timestamp) when the poll will be
  /// automatically closed
  ///
  /// A handy [DateTime] object is available as `closeDateTime` getter
  @override
  @JsonKey(name: 'close_date')
  final int? closeDate;

  /// Optional. Special entities that appear in the question. Currently, only
  /// custom emoji entities are allowed in poll questions
  final List<MessageEntity>? _questionEntities;

  /// Optional. Special entities that appear in the question. Currently, only
  /// custom emoji entities are allowed in poll questions
  @override
  @JsonKey(name: 'question_entities')
  List<MessageEntity>? get questionEntities {
    final value = _questionEntities;
    if (value == null) return null;
    if (_questionEntities is EqualUnmodifiableListView)
      return _questionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PollCopyWith<_Poll> get copyWith =>
      __$PollCopyWithImpl<_Poll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PollToJson(this);
  }

  @override
  String toString() {
    return 'Poll(id: $id, question: $question, options: $options, totalVoterCount: $totalVoterCount, isClosed: $isClosed, isAnonymous: $isAnonymous, type: $type, allowsMultipleAnswers: $allowsMultipleAnswers, correctOptionId: $correctOptionId, explanation: $explanation, explanationEntities: $explanationEntities, openPeriod: $openPeriod, closeDate: $closeDate, questionEntities: $questionEntities)';
  }
}

/// @nodoc
abstract mixin class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) _then) =
      __$PollCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'question') String question,
    @JsonKey(name: 'options') List<PollOption> options,
    @JsonKey(name: 'total_voter_count') int totalVoterCount,
    @JsonKey(name: 'is_closed') bool isClosed,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'type') PollType type,
    @JsonKey(name: 'allows_multiple_answers') bool allowsMultipleAnswers,
    @JsonKey(name: 'correct_option_id') int? correctOptionId,
    @JsonKey(name: 'explanation') String? explanation,
    @JsonKey(name: 'explanation_entities')
    List<MessageEntity>? explanationEntities,
    @JsonKey(name: 'open_period') int? openPeriod,
    @JsonKey(name: 'close_date') int? closeDate,
    @JsonKey(name: 'question_entities') List<MessageEntity>? questionEntities,
  });
}

/// @nodoc
class __$PollCopyWithImpl<$Res> implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(this._self, this._then);

  final _Poll _self;
  final $Res Function(_Poll) _then;

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? totalVoterCount = null,
    Object? isClosed = null,
    Object? isAnonymous = null,
    Object? type = null,
    Object? allowsMultipleAnswers = null,
    Object? correctOptionId = freezed,
    Object? explanation = freezed,
    Object? explanationEntities = freezed,
    Object? openPeriod = freezed,
    Object? closeDate = freezed,
    Object? questionEntities = freezed,
  }) {
    return _then(
      _Poll(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        question: null == question
            ? _self.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        options: null == options
            ? _self._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<PollOption>,
        totalVoterCount: null == totalVoterCount
            ? _self.totalVoterCount
            : totalVoterCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isClosed: null == isClosed
            ? _self.isClosed
            : isClosed // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAnonymous: null == isAnonymous
            ? _self.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PollType,
        allowsMultipleAnswers: null == allowsMultipleAnswers
            ? _self.allowsMultipleAnswers
            : allowsMultipleAnswers // ignore: cast_nullable_to_non_nullable
                  as bool,
        correctOptionId: freezed == correctOptionId
            ? _self.correctOptionId
            : correctOptionId // ignore: cast_nullable_to_non_nullable
                  as int?,
        explanation: freezed == explanation
            ? _self.explanation
            : explanation // ignore: cast_nullable_to_non_nullable
                  as String?,
        explanationEntities: freezed == explanationEntities
            ? _self._explanationEntities
            : explanationEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
        openPeriod: freezed == openPeriod
            ? _self.openPeriod
            : openPeriod // ignore: cast_nullable_to_non_nullable
                  as int?,
        closeDate: freezed == closeDate
            ? _self.closeDate
            : closeDate // ignore: cast_nullable_to_non_nullable
                  as int?,
        questionEntities: freezed == questionEntities
            ? _self._questionEntities
            : questionEntities // ignore: cast_nullable_to_non_nullable
                  as List<MessageEntity>?,
      ),
    );
  }
}
