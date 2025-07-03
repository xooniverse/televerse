import 'package:freezed_annotation/freezed_annotation.dart';

/// This enum represents the origin of a unique gift.
@JsonEnum(fieldRename: FieldRename.snake)
enum UniqueGiftOrigin {
  /// The gift was upgraded from a regular gift
  @JsonValue('upgrade')
  upgrade,

  /// The gift was transferred from other users or channels
  @JsonValue('transfer')
  transfer,

  /// The gift was bought from other users through resale
  @JsonValue('resale')
  resale;
}
