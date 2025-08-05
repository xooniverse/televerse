// File: lib/src/plugins/plugin.dart
part of '../../televerse.dart';

/// Interface for bot plugins.
///
/// Plugins extend the functionality of Telegram bots by providing
/// reusable components that can be easily installed and configured.
///
/// There are different types of plugins:
/// - **Middleware Plugins**: Add middleware to the bot's processing chain
/// - **Transformer Plugins**: Add transformers to modify API requests
/// - **Hybrid Plugins**: Provide both middleware and transformers
///
/// Example plugin implementation:
/// ```dart
/// class MyPlugin<CTX extends Context> implements BotPlugin<CTX> {
///   @override
///   String get name => 'my-plugin';
///
///   @override
///   String get version => '1.0.0';
///
///   @override
///   List<String> get dependencies => ['session'];
///
///   @override
///   void install(Bot<CTX> bot) {
///     // Add middleware
///     bot.use((ctx, next) async {
///       // Plugin logic here
///       await next();
///     });
///
///     // Add transformers
///     bot.api.addTransformer(MyTransformer());
///   }
/// }
/// ```
abstract interface class BotPlugin<CTX extends Context> {
  /// The unique name of this plugin.
  ///
  /// This should be a unique identifier for the plugin, typically
  /// in kebab-case format (e.g., 'session-manager', 'rate-limiter').
  String get name;

  /// The version of this plugin.
  ///
  /// Should follow semantic versioning (e.g., '1.0.0', '2.1.3').
  String get version => '1.0.0';

  /// List of plugin names that this plugin depends on.
  ///
  /// The bot will ensure these dependencies are installed before
  /// installing this plugin. If any dependencies are missing,
  /// a [TeleverseException] will be thrown.
  List<String> get dependencies => const [];

  /// Optional description of what this plugin does.
  String? get description => null;

  /// Installs the plugin on the given bot.
  ///
  /// This method should:
  /// - Add any required middleware using `bot.use()`
  /// - Add any required transformers using `bot.api.addTransformer()`
  /// - Set up any necessary configurations
  /// - Register any event handlers
  ///
  /// This method is called once when the plugin is installed via
  /// `bot.plugin()`. It should not be called directly.
  ///
  /// Parameters:
  /// - [bot]: The bot instance to install the plugin on
  void install(Bot<CTX> bot);

  /// Uninstalls the plugin from the given bot.
  ///
  /// This method should clean up any resources created during installation.
  /// The default implementation does nothing, but plugins that create
  /// persistent resources (timers, connections, etc.) should override this.
  ///
  /// Parameters:
  /// - [bot]: The bot instance to uninstall the plugin from
  void uninstall(Bot<CTX> bot) {}

  @override
  String toString() {
    return description != null
        ? '$name v$version: $description'
        : '$name v$version';
  }
}

/// Base class for plugins that only provide middleware.
///
/// This is a convenience base class for plugins that only need to
/// add middleware to the bot. Subclasses need only implement the
/// [middleware] getter.
///
/// Example:
/// ```dart
/// class LoggingPlugin<CTX extends Context> extends MiddlewarePlugin<CTX> {
///   @override
///   String get name => 'logging';
///
///   @override
///   String get description => 'Logs all incoming updates';
///
///   @override
///   Middleware<CTX> get middleware => (ctx, next) async {
///     print('📥 Update ${ctx.update.updateId}');
///     await next();
///     print('✅ Update ${ctx.update.updateId} processed');
///   };
/// }
/// ```
abstract class MiddlewarePlugin<CTX extends Context> implements BotPlugin<CTX> {
  /// The middleware function to install.
  Middleware<CTX> get middleware;

  @override
  void install(Bot<CTX> bot) {
    bot.use(middleware);
  }
}

/// Base class for plugins that only provide transformers.
///
/// This is a convenience base class for plugins that only need to
/// add transformers to the bot's API. Subclasses need only implement
/// the [transformer] getter.
///
/// Example:
/// ```dart
/// class RetryPlugin<CTX extends Context> extends TransformerPlugin<CTX> {
///   @override
///   String get name => 'auto-retry';
///
///   @override
///   String get description => 'Automatically retries failed API calls';
///
///   @override
///   Transformer get transformer => RetryTransformer(maxRetries: 3);
/// }
/// ```
abstract class TransformerPlugin<CTX extends Context>
    implements BotPlugin<CTX> {
  /// The transformer to install.
  Transformer get transformer;

  @override
  void install(Bot<CTX> bot) {
    bot.api.use(transformer);
  }
}
