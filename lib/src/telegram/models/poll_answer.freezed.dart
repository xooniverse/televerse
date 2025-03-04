// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollAnswer _$PollAnswerFromJson(Map<String, dynamic> json) {
  return _PollAnswer.fromJson(json);
}

/// @nodoc
mixin _$PollAnswer {
  /// Unique poll identifier
  @JsonKey(name: 'poll_id')
  String get pollId => throw _privateConstructorUsedError;

  /// The user, who changed the answer to the poll
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;

  /// 0-based identifiers of answer options, chosen by the user. May be empty
  /// if the user retracted their vote.
  @JsonKey(name: 'option_ids')
  List<int> get optionIds => throw _privateConstructorUsedError;

  /// Optional. The chat that changed the answer to the poll, if the voter is
  /// anonymous
  @JsonKey(name: 'voter_chat')
  Chat? get voterChat => throw _privateConstructorUsedError;

  /// Serializes this PollAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollAnswerCopyWith<PollAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollAnswerCopyWith<$Res> {
  factory $PollAnswerCopyWith(
          PollAnswer value, $Res Function(PollAnswer) then) =
      _$PollAnswerCopyWithImpl<$Res, PollAnswer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'poll_id') String pollId,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'option_ids') List<int> optionIds,
      @JsonKey(name: 'voter_chat') Chat? voterChat});

  $UserCopyWith<$Res>? get user;
  $ChatCopyWith<$Res>? get voterChat;
}

/// @nodoc
class _$PollAnswerCopyWithImpl<$Res, $Val extends PollAnswer>
    implements $PollAnswerCopyWith<$Res> {
  _$PollAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pollId = null,
    Object? user = freezed,
    Object? optionIds = null,
    Object? voterChat = freezed,
  }) {
    return _then(_value.copyWith(
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      optionIds: null == optionIds
          ? _value.optionIds
          : optionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voterChat: freezed == voterChat
          ? _value.voterChat
          : voterChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ) as $Val);
  }

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get voterChat {
    if (_value.voterChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.voterChat!, (value) {
      return _then(_value.copyWith(voterChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PollAnswerImplCopyWith<$Res>
    implements $PollAnswerCopyWith<$Res> {
  factory _$$PollAnswerImplCopyWith(
          _$PollAnswerImpl value, $Res Function(_$PollAnswerImpl) then) =
      __$$PollAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'poll_id') String pollId,
      @JsonKey(name: 'user') User? user,
      @JsonKey(name: 'option_ids') List<int> optionIds,
      @JsonKey(name: 'voter_chat') Chat? voterChat});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ChatCopyWith<$Res>? get voterChat;
}

/// @nodoc
class __$$PollAnswerImplCopyWithImpl<$Res>
    extends _$PollAnswerCopyWithImpl<$Res, _$PollAnswerImpl>
    implements _$$PollAnswerImplCopyWith<$Res> {
  __$$PollAnswerImplCopyWithImpl(
      _$PollAnswerImpl _value, $Res Function(_$PollAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pollId = null,
    Object? user = freezed,
    Object? optionIds = null,
    Object? voterChat = freezed,
  }) {
    return _then(_$PollAnswerImpl(
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      optionIds: null == optionIds
          ? _value._optionIds
          : optionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voterChat: freezed == voterChat
          ? _value.voterChat
          : voterChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollAnswerImpl implements _PollAnswer {
  const _$PollAnswerImpl(
      {@JsonKey(name: 'poll_id') required this.pollId,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'option_ids') required final List<int> optionIds,
      @JsonKey(name: 'voter_chat') this.voterChat})
      : _optionIds = optionIds;

  factory _$PollAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollAnswerImplFromJson(json);

  /// Unique poll identifier
  @override
  @JsonKey(name: 'poll_id')
  final String pollId;

  /// The user, who changed the answer to the poll
  @override
  @JsonKey(name: 'user')
  final User? user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty
  /// if the user retracted their vote.
  final List<int> _optionIds;

  /// 0-based identifiers of answer options, chosen by the user. May be empty
  /// if the user retracted their vote.
  @override
  @JsonKey(name: 'option_ids')
  List<int> get optionIds {
    if (_optionIds is EqualUnmodifiableListView) return _optionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionIds);
  }

  /// Optional. The chat that changed the answer to the poll, if the voter is
  /// anonymous
  @override
  @JsonKey(name: 'voter_chat')
  final Chat? voterChat;

  @override
  String toString() {
    return 'PollAnswer(pollId: $pollId, user: $user, optionIds: $optionIds, voterChat: $voterChat)';
  }

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollAnswerImplCopyWith<_$PollAnswerImpl> get copyWith =>
      __$$PollAnswerImplCopyWithImpl<_$PollAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollAnswerImplToJson(
      this,
    );
  }
}

abstract class _PollAnswer implements PollAnswer {
  const factory _PollAnswer(
      {@JsonKey(name: 'poll_id') required final String pollId,
      @JsonKey(name: 'user') final User? user,
      @JsonKey(name: 'option_ids') required final List<int> optionIds,
      @JsonKey(name: 'voter_chat') final Chat? voterChat}) = _$PollAnswerImpl;

  factory _PollAnswer.fromJson(Map<String, dynamic> json) =
      _$PollAnswerImpl.fromJson;

  /// Unique poll identifier
  @override
  @JsonKey(name: 'poll_id')
  String get pollId;

  /// The user, who changed the answer to the poll
  @override
  @JsonKey(name: 'user')
  User? get user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty
  /// if the user retracted their vote.
  @override
  @JsonKey(name: 'option_ids')
  List<int> get optionIds;

  /// Optional. The chat that changed the answer to the poll, if the voter is
  /// anonymous
  @override
  @JsonKey(name: 'voter_chat')
  Chat? get voterChat;

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollAnswerImplCopyWith<_$PollAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
