part of 'models.dart';

/// Represents a [ChatMember] that was banned in the chat and can't return to the chat or view chat messages.
class ChatMemberBanned implements ChatMember, WithUser {
  /// The member's status in the chat, always "kicked"
  @override
  final ChatMemberStatus status = ChatMemberStatus.kicked;

  /// Information about the user
  @override
  final User user;

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
  ///
  /// Notes:
  /// - You can use the [untilDateTime] getter to get a [DateTime] object
  /// - Check if the user is banned forever with the [isForever] getter
  final int untilDate;

  /// Creates a new [ChatMemberBanned] object.
  const ChatMemberBanned({
    required this.user,
    required this.untilDate,
  });

  /// Converts a [ChatMemberBanned] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'until_date': untilDate,
    };
  }

  /// Returns true if the user is banned forever
  bool get isForever => untilDate == 0;

  /// Returns the [untilDate] as a [DateTime] object
  ///
  /// This will return null if the user is banned forever
  DateTime? get untilDateTime => isForever ? null : untilDate.toDateTime();

  /// Creates a new [ChatMemberBanned] object from json.
  factory ChatMemberBanned.fromJson(Map<String, dynamic> json) {
    return ChatMemberBanned(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      untilDate: json['until_date'] as int,
    );
  }

  /// Information about the user
  @override
  User get from => user;
}
