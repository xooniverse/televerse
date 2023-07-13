part of televerse.models;

/// Class for handling inline menu displayed text and callback data used in [InlineMenu]
class InlineMenuData {
  /// Create a [InlineMenuData], if [data] is null, [text] will be used as callback data in [InlineMenu]
  InlineMenuData(this.text, [this.data]);

  /// Text displayed
  final String text;

  /// Callback data
  final String? data;
}
