part of 'models.dart';

/// This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
class ProximityAlertTriggered {
  /// User that triggered the alert
  User traveler;

  /// User that set the alert
  User watcher;

  /// The distance between the users
  int distance;

  /// Constructs a [ProximityAlertTriggered] object
  ProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });

  /// Creates a [ProximityAlertTriggered] object from JSON object
  factory ProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    return ProximityAlertTriggered(
      traveler: User.fromJson(json['traveler']!),
      watcher: User.fromJson(json['watcher']!),
      distance: json['distance']!,
    );
  }

  /// Converts a [ProximityAlertTriggered] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'traveler': traveler.toJson(),
      'watcher': watcher.toJson(),
      'distance': distance,
    }..removeWhere((key, value) => value == null);
  }
}
