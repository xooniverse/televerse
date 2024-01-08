part of 'models.dart';

/// This object represents a service message about the creation of a scheduled giveaway. Currently holds no information.
class GiveawayCreated {
  /// Creates a `GiveawayCreated` object.
  const GiveawayCreated();

  /// Creates a `GiveawayCreated` object from a JSON object.
  factory GiveawayCreated.fromJson(Map<String, dynamic> json) {
    return GiveawayCreated();
  }

  /// Converts the `GiveawayCreated` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {};
  }
}
