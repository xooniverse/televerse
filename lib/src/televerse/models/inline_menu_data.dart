part of televerse.models;

/// Class for handling inline menu displayed text and callback data used in [InlineMenu]
class InlineMenuData {
  /// Create a [InlineMenuData], if [data] is null, [text] will be used as callback data in [InlineMenu]
  InlineMenuData(this.text, [this.data]);

  /// Text displayed
  final String text;

  /// Callback data
  final String? data;

  /// Gets ID part
  String get id => data ?? text;

  /// String representation - this is just the ID itself
  @override
  String toString() => id;
}
