part of 'models.dart';

/// Describes a transaction with a chat.
class TransactionPartnerChat extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.chat;

  /// Information about the chat.
  final Chat chat;

  /// The gift sent to the chat by the bot.
  final Gift? gift;

  /// Constructs a [TransactionPartnerChat] object.
  const TransactionPartnerChat({
    required this.chat,
    this.gift,
  });

  /// Creates a [TransactionPartnerChat] object from JSON.
  factory TransactionPartnerChat.fromJson(
    Map<String, dynamic> json,
  ) {
    return TransactionPartnerChat(
      chat: Chat.fromJson(json['chat']),
      gift: json['gift'] != null ? Gift.fromJson(json['gift']) : null,
    );
  }

  /// Converts a [TransactionPartnerChat] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'chat': chat.toJson(),
      'gift': gift?.toJson(),
    };
  }
}
