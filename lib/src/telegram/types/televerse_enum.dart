/// A class that requires to have String `toJson` over enums.
abstract interface class TeleverseEnum {
  /// Converts the enum into JSON value.
  String toJson();
}
