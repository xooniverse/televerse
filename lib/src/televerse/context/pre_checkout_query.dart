part of televerse.context;

/// This class is used to represent the context of a [UpdateType.preCheckoutQuery] event.
class PreCheckoutQueryContext extends Context with MessageMixin {
  /// The [PreCheckoutQuery] instance.
  ///
  /// This represents the pre-checkout query for which the context is created.
  PreCheckoutQuery get preCheckoutQuery => update.preCheckoutQuery!;

  /// The ID of the pre-checkout query.
  String get queryId => preCheckoutQuery.id;

  /// The currency of the pre-checkout query.
  String get currency => preCheckoutQuery.currency;

  /// The total amount of the pre-checkout query.
  int get totalAmount => preCheckoutQuery.totalAmount;

  /// The invoice payload of the pre-checkout query.
  String get invoicePayload => preCheckoutQuery.invoicePayload;

  /// The shipping option ID of the pre-checkout query.
  ///
  /// This is optional.
  String? get shippingOptionID => preCheckoutQuery.shippingOptionId;

  /// The order information of the pre-checkout query.
  ///
  /// This is optional.
  OrderInfo? get orderInfo => preCheckoutQuery.orderInfo;

  /// The user who sent the pre-checkout query.
  User get from => preCheckoutQuery.from;

  /// Creates a new pre-checkout query context.
  PreCheckoutQueryContext(
    super._bot, {
    required Update update,
  }) : super(update: update);

  /// Sends an answer to the pre-checkout query.
  ///
  /// [ok] represents if the pre-checkout query is accepted or not.
  ///
  /// [errorMessage] represents the error message in case the pre-checkout query is not accepted.
  Future<void> answer({
    required bool ok,
    String? errorMessage,
  }) async {
    await api.answerPreCheckoutQuery(
      queryId,
      ok,
      errorMessage: errorMessage,
    );
  }
}
