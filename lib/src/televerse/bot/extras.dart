part of '../../../televerse.dart';

/// A little bit of extra helper methods.
extension BotExtras<CTX extends Context> on Bot<CTX> {
  /// Acts as the dfault error handler
  void _defaultErrorHandler(BotError<CTX> err) {
    print("‼️ An error occurred while processing the update.");
    if (err.sourceIsMiddleware) {
      print("The exception is occurred at an attached middleware.");
    }

    print(err.error);
    print(err.stackTrace);

    print(
      "It seems you haven't set an error handler. You can do this with `bot.onError(...)` to manage most crashes.\n",
    );

    if (fetcher.isActive) stop();
    _report();
  }

  /// Prints the issue reporting statement
  static void _report() {
    print("---------------------");
    print(
      "If you believe this issue is with the library, please raise an issue on\n"
      "the repository (link below). Please make sure you remove any sensitive information\n"
      "from the crash logs before sharing. For additional help, join our discussion\n"
      "on Telegram or GitHub.\n\n"
      "Telegram: https://t.me/televersedart\n"
      "GitHub: https://github.com/xooniverse/televerse/issues",
    );
  }

  /// Let the user know of the type error.
  static void handleTypeError<CTX>() {
    print("A `TypeError` occurred while trying to create Context.\n");

    if (CTX != Context) {
      print(
        "It seems like you have specified a custom context type in the Bot definition as `Bot<$CTX>`, "
        "but you haven't registered the constructor for your custom Context.\n"
        "Generally, you can register a constructor with the following line:\n"
        "  bot.useContext($CTX.new);\n\n"
        "For example, if you have a custom context class `MyContext`:\n\n"
        "class MyContext extends Context {\n"
        "  MyContext({required super.api, required super.me, required super.update});\n"
        "}\n\n"
        "You should register the constructor in your bot setup as follows:\n\n"
        "final bot = Bot<MyContext>(token);\n"
        "bot.useContext(MyContext.new);\n\n"
        "This ensures that the bot can create instances of your custom context correctly.\n"
        "If you still encounter issues, make sure that your custom context class extends `Context` "
        "and its constructor matches the required parameters:\n\n"
        "  MyContext({required super.api, required super.me, required super.update});\n"
        "📖 Check out the complete usage documentation here: https://televerse.xooniverse.com/advanced/custom-context.html \n",
      );
    }

    BotExtras._report();
  }
}
