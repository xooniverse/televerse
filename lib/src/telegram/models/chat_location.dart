import 'location.dart';

/// Represents a location to which a chat is connected.
class ChatLocation {
  /// The location to which the supergroup is connected.
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  final String address;

  ChatLocation({
    required this.location,
    required this.address,
  });

  factory ChatLocation.fromJson(Map<String, dynamic> json) {
    return ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'address': address,
    };
  }
}
