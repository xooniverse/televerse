// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'video_chat_participants_invited.freezed.dart';
part 'video_chat_participants_invited.g.dart';

/// This object represents a service message about new members invited to a
/// video chat.
@freezed
class VideoChatParticipantsInvited with _$VideoChatParticipantsInvited {
  /// Constructs a [VideoChatParticipantsInvited] object.
  const factory VideoChatParticipantsInvited({
    /// New members that were invited to the video chat.
    @JsonKey(name: 'users') required List<User> users,
  }) = _VideoChatParticipantsInvited;

  /// Creates a [VideoChatParticipantsInvited] object from JSON object.
  factory VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) =>
      _$VideoChatParticipantsInvitedFromJson(json);
}
