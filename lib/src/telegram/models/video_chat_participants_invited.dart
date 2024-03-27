part of 'models.dart';

/// This object represents a service message about new members invited to a video chat.
class VideoChatParticipantsInvited {
  /// New members that were invited to the video chat
  final List<User> users;

  /// Constructs a [VideoChatParticipantsInvited] object
  const VideoChatParticipantsInvited({
    required this.users,
  });

  /// Creates a [VideoChatParticipantsInvited] object from JSON object
  factory VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) {
    return VideoChatParticipantsInvited(
      users: List<User>.from(
        (json['users'] as List<dynamic>).map(
          (x) => User.fromJson(x),
        ),
      ),
    );
  }

  /// Converts a [VideoChatParticipantsInvited] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'users': List<dynamic>.from(users.map((x) => x.toJson())),
    }..removeWhere(_nullFilter);
  }
}
