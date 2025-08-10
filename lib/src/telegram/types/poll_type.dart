import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/types/televerse_enum.dart';

part 'poll_type.g.dart';

/// This object contains information about a poll. Currently supported poll types are `regular` and `quiz`.
@JsonEnum(alwaysCreate: true)
enum PollType implements TeleverseEnum {
  /// Regular poll
  @JsonValue("regular")
  regular,

  /// Quiz poll
  @JsonValue("quiz")
  quiz;

  /// Converts the [PollType] to its corresponding JSON value.
  @override
  String toJson() => _$PollTypeEnumMap[this]!;
}
