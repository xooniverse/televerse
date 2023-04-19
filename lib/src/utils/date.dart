part of televerse;

/// UnixTime extension is used to convert a [DateTime] object to unix time.
extension UnixTime on DateTime {
  /// The unix time of this [DateTime] object.
  int get unixTime => millisecondsSinceEpoch ~/ 1000;
}

/// IntDate extension is used to convert an integer to a [DateTime] object. The integer is assumed to be unix time.
///
/// Telegram uses unix time, so this extension is used to convert unix time to a [DateTime] object.
extension IntDate on int {
  /// The [DateTime] object of this integer.
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(this * 1000);
}
