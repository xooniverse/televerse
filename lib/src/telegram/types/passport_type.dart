import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents a Telegram Passport element containing the user's personal details.
@JsonEnum(fieldRename: FieldRename.snake)
enum PassportType {
  /// Passport of the user
  @JsonValue('passport')
  passport,

  /// Driver's license of the user
  @JsonValue('driver_license')
  driverLicense,

  /// Identity card of the user
  @JsonValue('identity_card')
  identityCard,

  /// Internal passport of the user
  @JsonValue('internal_passport')
  internalPassport,

  /// Address of the user
  @JsonValue('address')
  address,

  /// Utility bill of the user
  @JsonValue('utility_bill')
  utilityBill,

  /// Bank statement of the user
  @JsonValue('bank_statement')
  bankStatement,

  /// Rental agreement of the user
  @JsonValue('rental_agreement')
  rentalAgreement,

  /// Passport registration page of the user
  @JsonValue('passport_registration')
  passportRegistration,

  /// Temporary registration page of the user
  @JsonValue('temporary_registration')
  temporaryRegistration,

  /// Phone number of the user
  @JsonValue('phone_number')
  phoneNumber,

  /// Email of the user
  @JsonValue('email')
  email,

  /// Personal Details of the user
  @JsonValue('personal_details')
  personalDetails,
}
