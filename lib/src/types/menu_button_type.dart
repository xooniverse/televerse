enum MenuButtonType {
  commands("commands"),
  webApp("web_app"),
  defaultButton("default"),
  ;

  final String value;
  const MenuButtonType(this.value);

  static MenuButtonType fromJson(String value) {
    return MenuButtonType.values.firstWhere((e) => e.value == value);
  }

  String toJson() {
    return value;
  }
}
