part of 'models.dart';

/// Represents a background type where the background is taken directly from a built-in chat theme.
class BackgroundTypeChatTheme extends BackgroundType {
  @override
  BackgroundTypeType get type => BackgroundTypeType.chatTheme;

  /// Name of the chat theme, which is usually an emoji.
  final String themeName;

  /// Constructs a [BackgroundTypeChatTheme] object.
  const BackgroundTypeChatTheme({
    required this.themeName,
  });

  /// Creates a [BackgroundTypeChatTheme] object from JSON.
  factory BackgroundTypeChatTheme.fromJson(Map<String, dynamic> json) {
    return BackgroundTypeChatTheme(
      themeName: json['theme_name'],
    );
  }

  /// Converts a [BackgroundTypeChatTheme] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'theme_name': themeName,
    };
  }
}
