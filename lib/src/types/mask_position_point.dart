enum MaskPositionPoint {
  forehead("forehead"),
  eyes("eyes"),
  mouth("mouth"),
  chin("chin");

  final String value;

  const MaskPositionPoint(this.value);

  factory MaskPositionPoint.fromJson(String value) =>
      MaskPositionPoint.values.firstWhere((e) => e.value == value);

  String toJson() => value;
}
