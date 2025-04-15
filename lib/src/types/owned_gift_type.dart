import 'package:freezed_annotation/freezed_annotation.dart';

part 'owned_gift_type.g.dart';

/// Type of the owned gift.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
enum OwnedGiftType {
  /// Regular gift type
  @JsonValue('regular')
  regular,

  /// Unique gift type
  @JsonValue('unique')
  unique;

  /// Converts the [OwnedGiftType] to its corresponding JSON value.
  String toJson() => _$OwnedGiftTypeEnumMap[this]!;
}
