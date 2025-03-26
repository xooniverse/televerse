// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PollAnswer {
  /// Unique poll identifier
  @JsonKey(name: 'poll_id')
  String get pollId;

  /// The user, who changed the answer to the poll
  @JsonKey(name: 'user')
  User? get user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty
  /// if the user retracted their vote.
  @JsonKey(name: 'option_ids')
  List<int> get optionIds;

  /// Optional. The chat that changed the answer to the poll, if the voter is
  /// anonymous
  @JsonKey(name: 'voter_chat')
  Chat? get voterChat;

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PollAnswerCopyWith<PollAnswer> get copyWith =>
      _$PollAnswerCopyWithImpl<PollAnswer>(this as PollAnswer, _$identity);

  /// Serializes this PollAnswer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PollAnswer(pollId: $pollId, user: $user, optionIds: $optionIds, voterChat: $voterChat)';
  }
}

/// @nodoc
abstract mixin class $PollAnswerCopyWith<$Res> {
  factory $PollAnswerCopyWith(
          PollAnswer value, $Res Function(PollAnswer) _then) =
      _$PollAnswerCopyWithImpl;
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
class _$PollAnswerCopyWithImpl<$Res> implements $PollAnswerCopyWith<$Res> {
  _$PollAnswerCopyWithImpl(this._self, this._then);

  final PollAnswer _self;
  final $Res Function(PollAnswer) _then;

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
    return _then(_self.copyWith(
      pollId: null == pollId
          ? _self.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      optionIds: null == optionIds
          ? _self.optionIds
          : optionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voterChat: freezed == voterChat
          ? _self.voterChat
          : voterChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }

  /// Create a copy of PollAnswer
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

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get voterChat {
    if (_self.voterChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.voterChat!, (value) {
      return _then(_self.copyWith(voterChat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PollAnswer implements PollAnswer {
  const _PollAnswer(
      {@JsonKey(name: 'poll_id') required this.pollId,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'option_ids') required final List<int> optionIds,
      @JsonKey(name: 'voter_chat') this.voterChat})
      : _optionIds = optionIds;
  factory _PollAnswer.fromJson(Map<String, dynamic> json) =>
      _$PollAnswerFromJson(json);

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

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PollAnswerCopyWith<_PollAnswer> get copyWith =>
      __$PollAnswerCopyWithImpl<_PollAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PollAnswerToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PollAnswer(pollId: $pollId, user: $user, optionIds: $optionIds, voterChat: $voterChat)';
  }
}

/// @nodoc
abstract mixin class _$PollAnswerCopyWith<$Res>
    implements $PollAnswerCopyWith<$Res> {
  factory _$PollAnswerCopyWith(
          _PollAnswer value, $Res Function(_PollAnswer) _then) =
      __$PollAnswerCopyWithImpl;
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
class __$PollAnswerCopyWithImpl<$Res> implements _$PollAnswerCopyWith<$Res> {
  __$PollAnswerCopyWithImpl(this._self, this._then);

  final _PollAnswer _self;
  final $Res Function(_PollAnswer) _then;

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pollId = null,
    Object? user = freezed,
    Object? optionIds = null,
    Object? voterChat = freezed,
  }) {
    return _then(_PollAnswer(
      pollId: null == pollId
          ? _self.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      optionIds: null == optionIds
          ? _self._optionIds
          : optionIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      voterChat: freezed == voterChat
          ? _self.voterChat
          : voterChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }

  /// Create a copy of PollAnswer
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

  /// Create a copy of PollAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get voterChat {
    if (_self.voterChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.voterChat!, (value) {
      return _then(_self.copyWith(voterChat: value));
    });
  }
}
