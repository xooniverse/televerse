part of 'models.dart';

/// Represents a location to which a chat is connected.
class ChatLocation {
  /// The location to which the supergroup is connected.
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  final String address;

  /// Creates a new [ChatLocation] object.
  const ChatLocation({
    required this.location,
    required this.address,
  });

  /// Creates a new [ChatLocation] object from json.
  factory ChatLocation.fromJson(Map<String, dynamic> json) {
    return ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
    );
  }

  /// Converts a [ChatLocation] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'address': address,
    };
  }
}
