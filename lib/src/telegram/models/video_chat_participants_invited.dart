import 'user.dart';

/// This object represents a service message about new members invited to a video chat.
class VideoChatParticipantsInvited {
  /// New members that were invited to the video chat
  List<User> users;

  VideoChatParticipantsInvited({required this.users});

  factory VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) {
    return VideoChatParticipantsInvited(
      users: List<User>.from(json['users'].map((x) => User.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'users': List<dynamic>.from(users.map((x) => x.toJson())),
    };
  }
}
