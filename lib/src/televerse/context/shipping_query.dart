part of televerse.context;

/// [ShippingQueryContext] is the context for a shipping query.
class ShippingQueryContext extends Context with MessageMixin {
  /// The [ShippingQuery] instance.
  ShippingQuery get shippingQuery => update.shippingQuery!;

  /// The [ShippingQueryContext] constructor.
  ShippingQueryContext(
    RawAPI api, {
    required Update update,
  }) : super(api, update: update);

  /// Invoice Payload.
  String get invoicePayload => shippingQuery.invoicePayload;

  /// Shipping Address.
  ShippingAddress get shippingAddress => shippingQuery.shippingAddress;

  /// The User ID
  ID get userID => id;

  /// Answer the shipping query.
  ///
  /// [ok] - Pass True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
  ///
  /// [shippingOptions] - Required if ok is True. A JSON-serialized array of available shipping options.
  ///
  /// [errorMessage] - Required if ok is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
  Future<bool> answer({
    required bool ok,
    String? errorMessage,
    List<ShippingOption>? shippingOptions,
  }) async {
    return await api.answerShippingQuery(
      shippingQuery.id,
      ok,
      errorMessage: errorMessage,
      shippingOptions: shippingOptions,
    );
  }
}
