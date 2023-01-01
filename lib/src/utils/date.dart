part of televerse;

extension UnixTime on DateTime {
  int get unixTime => millisecondsSinceEpoch ~/ 1000;
}

extension IntDate on int {
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(this * 1000);
}
