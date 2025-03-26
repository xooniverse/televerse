// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';

import 'user.dart';
import 'shipping_address.dart';

part 'shipping_query.freezed.dart';
part 'shipping_query.g.dart';

/// This object contains information about an incoming shipping query.
@freezed
abstract class ShippingQuery with _$ShippingQuery implements WithUser {
  /// Constructs a [ShippingQuery] object
  const factory ShippingQuery({
    /// Unique query identifier
    @JsonKey(name: 'id') required String id,

    /// User who sent the query
    @JsonKey(name: 'from') required User from,

    /// Bot specified invoice payload
    @JsonKey(name: 'invoice_payload') required String invoicePayload,

    /// User specified shipping address
    @JsonKey(name: 'shipping_address') required ShippingAddress shippingAddress,
  }) = _ShippingQuery;

  /// Creates a [ShippingQuery] object from a JSON object
  factory ShippingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShippingQueryFromJson(json);
}
