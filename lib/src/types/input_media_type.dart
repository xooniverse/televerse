part of types;

enum InputMediaType {
  animation("animation"),
  audio("audio"),
  document("document"),
  photo("photo"),
  video("video");

  final String value;
  const InputMediaType(this.value);
}
