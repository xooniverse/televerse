import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/location.dart';

part 'chat_location.freezed.dart';
part 'chat_location.g.dart';

/// Represents a location to which a chat is connected.
@freezed
class ChatLocation with _$ChatLocation {
  /// Creates a new [ChatLocation] object.
  const factory ChatLocation({
    /// The location to which the supergroup is connected.
    required Location location,

    /// Location address; 1-64 characters, as defined by the chat owner
    required String address,
  }) = _ChatLocation;

  /// Creates a new [ChatLocation] object from json.
  factory ChatLocation.fromJson(Map<String, dynamic> json) =>
      _$ChatLocationFromJson(json);
}
