part of 'models.dart';

/// Represents an introduction to a business.
class BusinessIntro {
  /// Optional. Title text of the business intro.
  final String? title;

  /// Optional. Message text of the business intro.
  final String? message;

  /// Optional. Sticker of the business intro.
  final Sticker? sticker;

  /// Creates a [BusinessIntro] object.
  const BusinessIntro({
    this.title,
    this.message,
    this.sticker,
  });

  /// Creates a [BusinessIntro] object from a JSON map.
  factory BusinessIntro.fromJson(Map<String, dynamic> json) {
    return BusinessIntro(
      title: json['title'],
      message: json['message'],
      sticker:
          json['sticker'] != null ? Sticker.fromJson(json['sticker']) : null,
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'message': message,
      'sticker': sticker?.toJson(),
    };
  }
}
