part of passport;

enum PassportType {
  /// Passport of the user
  passport("passport"),

  /// Driver's license of the user
  driverLicense("driver_license"),

  /// Identity card of the user
  identityCard("identity_card"),

  /// Internal passport of the user
  internalPassport("internal_passport"),

  /// Address of the user
  address("address"),

  /// Utility bill of the user
  utilityBill("utility_bill"),

  /// Bank statement of the user
  bankStatement("bank_statement"),

  /// Rental agreement of the user
  rentalAgreement("rental_agreement"),

  /// Passport registration page of the user
  passportRegistration("passport_registration"),

  /// Temporary registration page of the user
  temporaryRegistration("temporary_registration"),

  /// Phone number of the user
  phoneNumber("phone_number"),

  /// Email of the user
  email("email"),

  /// Personal Details of the user
  personalDetails("personal_details");

  final String value;
  const PassportType(this.value);

  static PassportType fromJson(String value) {
    return PassportType.values.firstWhere((e) => e.value == value);
  }

  String toJson() => value;
}
