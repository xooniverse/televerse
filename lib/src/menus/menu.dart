// File: lib/src/menus/menu.dart
part of '../../televerse.dart';

/// Type alias for menu handler functions.
typedef MenuHandler<CTX extends Context> = FutureOr<void> Function(CTX ctx);

/// Base class for all Televerse menus.
///
/// Menus provide a convenient way to create keyboards with associated handlers.
/// They automatically bind keyboard buttons to their corresponding handler functions
/// when attached to a bot.
abstract class TeleverseMenu<CTX extends Context> {
  /// The unique name/identifier for this menu.
  final String name;

  /// Creates a new menu with the given name.
  ///
  /// If no name is provided, a random unique name will be generated.
  TeleverseMenu({String? name}) : name = name ?? _generateRandomId();

  /// Converts this menu to a reply markup that can be sent with messages.
  ReplyMarkup toReplyMarkup();

  /// Registers all handlers for this menu with the provided bot.
  ///
  /// This method is called internally by [Bot.attachMenu] and should not
  /// be called directly by users.
  void _registerHandlers(Bot<CTX> bot);

  /// Generates a random unique identifier for menus.
  static String _generateRandomId() {
    final random = DateTime.now().millisecondsSinceEpoch.toString();
    return 'menu_$random';
  }
}
