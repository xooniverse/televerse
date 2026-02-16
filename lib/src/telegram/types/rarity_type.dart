import 'package:freezed_annotation/freezed_annotation.dart';

/// Rarity of the model if it is a crafted model.
@JsonEnum(fieldRename: FieldRename.snake)
enum RarityType {
  /// Uncommon rarity
  @JsonValue('uncommon')
  uncommon,

  /// Rare rarity
  @JsonValue('rare')
  rare,

  /// Epic rarity
  @JsonValue('epic')
  epic,

  /// Legendary rarity
  @JsonValue('legendary')
  legendary,
}
