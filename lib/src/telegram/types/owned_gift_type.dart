import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of the owned gift.
@JsonEnum(fieldRename: FieldRename.snake)
enum OwnedGiftType {
  /// Regular gift type
  @JsonValue('regular')
  regular,

  /// Unique gift type
  @JsonValue('unique')
  unique,
}
