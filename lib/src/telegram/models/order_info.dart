import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/shipping_address.dart';

part 'order_info.freezed.dart';
part 'order_info.g.dart';

/// This object represents information about an order.
@freezed
class OrderInfo with _$OrderInfo {
  /// Creates a new [OrderInfo] object.
  const factory OrderInfo({
    /// User name
    String? name,

    /// User's phone number
    @JsonKey(name: 'phone_number') String? phoneNumber,

    /// User email
    @JsonKey(name: 'email') String? email,

    /// User shipping address
    @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress,
  }) = _OrderInfo;

  /// Creates a [OrderInfo] object from a JSON object
  factory OrderInfo.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoFromJson(json);
}
