import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/src/telegram/models/location.dart';
import 'package:televerse/src/telegram/models/user.dart';

part 'chosen_inline_result.freezed.dart';
part 'chosen_inline_result.g.dart';

/// Represents a result of an inline query that was chosen by the user and sent
/// to their chat partner.
@freezed
class ChosenInlineResult with _$ChosenInlineResult implements WithUser {
  /// Creates a new [ChosenInlineResult] object.
  const factory ChosenInlineResult({
    /// The unique identifier for the result that was chosen
    @JsonKey(name: 'result_id') required String resultId,

    /// The user that chose the result
    @JsonKey(name: 'from') required User from,

    /// Optional. Sender location, only for bots that require user location
    @JsonKey(name: 'location') Location? location,

    /// Optional. Identifier of the sent inline message. Available only if there
    /// is an inline keyboard attached to the message. Will be also received in
    /// callback queries and can be used to edit the message.
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,

    /// The query that was used to obtain the result
    @JsonKey(name: 'query') required String query,
  }) = _ChosenInlineResult;

  /// Creates a new [ChosenInlineResult] object from json.
  factory ChosenInlineResult.fromJson(Map<String, dynamic> json) =>
      _$ChosenInlineResultFromJson(json);
}
