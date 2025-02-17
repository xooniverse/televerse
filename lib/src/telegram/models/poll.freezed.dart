// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
mixin _$Poll {
  /// Unique poll identifier
  String get id => throw _privateConstructorUsedError;

  /// Poll question, 1-300 characters
  String get question => throw _privateConstructorUsedError;

  /// List of poll options
  List<PollOption> get options => throw _privateConstructorUsedError;

  /// Total number of users that voted in the poll
  @JsonKey(name: 'total_voter_count')
  int get totalVoterCount => throw _privateConstructorUsedError;

  /// True, if the poll is closed
  @JsonKey(name: 'is_closed')
  bool get isClosed => throw _privateConstructorUsedError;

  /// True, if the poll is anonymous
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;

  /// Poll type, currently can be "regular" or "quiz"
  PollType get type => throw _privateConstructorUsedError;

  /// True, if the poll allows multiple answers
  @JsonKey(name: 'allows_multiple_answers')
  bool get allowsMultipleAnswers => throw _privateConstructorUsedError;

  /// Optional. 0-based identifier of the correct answer option. Available
  /// only for polls in the quiz mode, which are closed, or was sent (not
  /// forwarded) by the bot or to the private chat with the bot.
  @JsonKey(name: 'correct_option_id')
  int? get correctOptionId => throw _privateConstructorUsedError;

  /// Optional. Text that is shown when a user chooses an incorrect answer or
  /// taps on the lamp icon in a quiz-style poll, 0-200 characters
  String? get explanation => throw _privateConstructorUsedError;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that
  /// appear in the explanation
  @JsonKey(name: 'explanation_entities')
  List<MessageEntity>? get explanationEntities =>
      throw _privateConstructorUsedError;

  /// Optional. Amount of time in seconds the poll will be active after
  /// creation
  ///
  /// A handy [Duration] object is available as [openPeriodDuration] getter
  @JsonKey(name: 'open_period')
  int? get openPeriod => throw _privateConstructorUsedError;

  /// Optional. Point in time (Unix timestamp) when the poll will be
  /// automatically closed
  ///
  /// A handy [DateTime] object is available as [closeDateTime] getter
  @JsonKey(name: 'close_date')
  int? get closeDate => throw _privateConstructorUsedError;

  /// Optional. Special entities that appear in the question. Currently, only
  /// custom emoji entities are allowed in poll questions
  @JsonKey(name: 'question_entities')
  List<MessageEntity>? get questionEntities =>
      throw _privateConstructorUsedError;

  /// Serializes this Poll to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res, Poll>;
  @useResult
  $Res call(
      {String id,
      String question,
      List<PollOption> options,
      @JsonKey(name: 'total_voter_count') int totalVoterCount,
      @JsonKey(name: 'is_closed') bool isClosed,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      PollType type,
      @JsonKey(name: 'allows_multiple_answers') bool allowsMultipleAnswers,
      @JsonKey(name: 'correct_option_id') int? correctOptionId,
      String? explanation,
      @JsonKey(name: 'explanation_entities')
      List<MessageEntity>? explanationEntities,
      @JsonKey(name: 'open_period') int? openPeriod,
      @JsonKey(name: 'close_date') int? closeDate,
      @JsonKey(name: 'question_entities')
      List<MessageEntity>? questionEntities});
}

/// @nodoc
class _$PollCopyWithImpl<$Res, $Val extends Poll>
    implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
      totalVoterCount: null == totalVoterCount
          ? _value.totalVoterCount
          : totalVoterCount // ignore: cast_nullable_to_non_nullable
              as int,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PollType,
      allowsMultipleAnswers: null == allowsMultipleAnswers
          ? _value.allowsMultipleAnswers
          : allowsMultipleAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
      correctOptionId: freezed == correctOptionId
          ? _value.correctOptionId
          : correctOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      explanationEntities: freezed == explanationEntities
          ? _value.explanationEntities
          : explanationEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      openPeriod: freezed == openPeriod
          ? _value.openPeriod
          : openPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      closeDate: freezed == closeDate
          ? _value.closeDate
          : closeDate // ignore: cast_nullable_to_non_nullable
              as int?,
      questionEntities: freezed == questionEntities
          ? _value.questionEntities
          : questionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollImplCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$$PollImplCopyWith(
          _$PollImpl value, $Res Function(_$PollImpl) then) =
      __$$PollImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      List<PollOption> options,
      @JsonKey(name: 'total_voter_count') int totalVoterCount,
      @JsonKey(name: 'is_closed') bool isClosed,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      PollType type,
      @JsonKey(name: 'allows_multiple_answers') bool allowsMultipleAnswers,
      @JsonKey(name: 'correct_option_id') int? correctOptionId,
      String? explanation,
      @JsonKey(name: 'explanation_entities')
      List<MessageEntity>? explanationEntities,
      @JsonKey(name: 'open_period') int? openPeriod,
      @JsonKey(name: 'close_date') int? closeDate,
      @JsonKey(name: 'question_entities')
      List<MessageEntity>? questionEntities});
}

/// @nodoc
class __$$PollImplCopyWithImpl<$Res>
    extends _$PollCopyWithImpl<$Res, _$PollImpl>
    implements _$$PollImplCopyWith<$Res> {
  __$$PollImplCopyWithImpl(_$PollImpl _value, $Res Function(_$PollImpl) _then)
      : super(_value, _then);

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
    return _then(_$PollImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PollOption>,
      totalVoterCount: null == totalVoterCount
          ? _value.totalVoterCount
          : totalVoterCount // ignore: cast_nullable_to_non_nullable
              as int,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PollType,
      allowsMultipleAnswers: null == allowsMultipleAnswers
          ? _value.allowsMultipleAnswers
          : allowsMultipleAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
      correctOptionId: freezed == correctOptionId
          ? _value.correctOptionId
          : correctOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      explanationEntities: freezed == explanationEntities
          ? _value._explanationEntities
          : explanationEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      openPeriod: freezed == openPeriod
          ? _value.openPeriod
          : openPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      closeDate: freezed == closeDate
          ? _value.closeDate
          : closeDate // ignore: cast_nullable_to_non_nullable
              as int?,
      questionEntities: freezed == questionEntities
          ? _value._questionEntities
          : questionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollImpl implements _Poll {
  const _$PollImpl(
      {required this.id,
      required this.question,
      required final List<PollOption> options,
      @JsonKey(name: 'total_voter_count') required this.totalVoterCount,
      @JsonKey(name: 'is_closed') required this.isClosed,
      @JsonKey(name: 'is_anonymous') required this.isAnonymous,
      required this.type,
      @JsonKey(name: 'allows_multiple_answers')
      required this.allowsMultipleAnswers,
      @JsonKey(name: 'correct_option_id') this.correctOptionId,
      this.explanation,
      @JsonKey(name: 'explanation_entities')
      final List<MessageEntity>? explanationEntities,
      @JsonKey(name: 'open_period') this.openPeriod,
      @JsonKey(name: 'close_date') this.closeDate,
      @JsonKey(name: 'question_entities')
      final List<MessageEntity>? questionEntities})
      : _options = options,
        _explanationEntities = explanationEntities,
        _questionEntities = questionEntities;

  factory _$PollImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollImplFromJson(json);

  /// Unique poll identifier
  @override
  final String id;

  /// Poll question, 1-300 characters
  @override
  final String question;

  /// List of poll options
  final List<PollOption> _options;

  /// List of poll options
  @override
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
  /// A handy [Duration] object is available as [openPeriodDuration] getter
  @override
  @JsonKey(name: 'open_period')
  final int? openPeriod;

  /// Optional. Point in time (Unix timestamp) when the poll will be
  /// automatically closed
  ///
  /// A handy [DateTime] object is available as [closeDateTime] getter
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

  @override
  String toString() {
    return 'Poll(id: $id, question: $question, options: $options, totalVoterCount: $totalVoterCount, isClosed: $isClosed, isAnonymous: $isAnonymous, type: $type, allowsMultipleAnswers: $allowsMultipleAnswers, correctOptionId: $correctOptionId, explanation: $explanation, explanationEntities: $explanationEntities, openPeriod: $openPeriod, closeDate: $closeDate, questionEntities: $questionEntities)';
  }

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollImplCopyWith<_$PollImpl> get copyWith =>
      __$$PollImplCopyWithImpl<_$PollImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollImplToJson(
      this,
    );
  }
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required final String id,
      required final String question,
      required final List<PollOption> options,
      @JsonKey(name: 'total_voter_count') required final int totalVoterCount,
      @JsonKey(name: 'is_closed') required final bool isClosed,
      @JsonKey(name: 'is_anonymous') required final bool isAnonymous,
      required final PollType type,
      @JsonKey(name: 'allows_multiple_answers')
      required final bool allowsMultipleAnswers,
      @JsonKey(name: 'correct_option_id') final int? correctOptionId,
      final String? explanation,
      @JsonKey(name: 'explanation_entities')
      final List<MessageEntity>? explanationEntities,
      @JsonKey(name: 'open_period') final int? openPeriod,
      @JsonKey(name: 'close_date') final int? closeDate,
      @JsonKey(name: 'question_entities')
      final List<MessageEntity>? questionEntities}) = _$PollImpl;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$PollImpl.fromJson;

  /// Unique poll identifier
  @override
  String get id;

  /// Poll question, 1-300 characters
  @override
  String get question;

  /// List of poll options
  @override
  List<PollOption> get options;

  /// Total number of users that voted in the poll
  @override
  @JsonKey(name: 'total_voter_count')
  int get totalVoterCount;

  /// True, if the poll is closed
  @override
  @JsonKey(name: 'is_closed')
  bool get isClosed;

  /// True, if the poll is anonymous
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// Poll type, currently can be "regular" or "quiz"
  @override
  PollType get type;

  /// True, if the poll allows multiple answers
  @override
  @JsonKey(name: 'allows_multiple_answers')
  bool get allowsMultipleAnswers;

  /// Optional. 0-based identifier of the correct answer option. Available
  /// only for polls in the quiz mode, which are closed, or was sent (not
  /// forwarded) by the bot or to the private chat with the bot.
  @override
  @JsonKey(name: 'correct_option_id')
  int? get correctOptionId;

  /// Optional. Text that is shown when a user chooses an incorrect answer or
  /// taps on the lamp icon in a quiz-style poll, 0-200 characters
  @override
  String? get explanation;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that
  /// appear in the explanation
  @override
  @JsonKey(name: 'explanation_entities')
  List<MessageEntity>? get explanationEntities;

  /// Optional. Amount of time in seconds the poll will be active after
  /// creation
  ///
  /// A handy [Duration] object is available as [openPeriodDuration] getter
  @override
  @JsonKey(name: 'open_period')
  int? get openPeriod;

  /// Optional. Point in time (Unix timestamp) when the poll will be
  /// automatically closed
  ///
  /// A handy [DateTime] object is available as [closeDateTime] getter
  @override
  @JsonKey(name: 'close_date')
  int? get closeDate;

  /// Optional. Special entities that appear in the question. Currently, only
  /// custom emoji entities are allowed in poll questions
  @override
  @JsonKey(name: 'question_entities')
  List<MessageEntity>? get questionEntities;

  /// Create a copy of Poll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollImplCopyWith<_$PollImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
