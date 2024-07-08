part of 'models.dart';

/// The paid media is a photo.
class PaidMediaPhoto extends PaidMedia {
  @override
  PaidMediaType get type => PaidMediaType.photo;

  /// The photo.
  final List<PhotoSize> photo;

  /// Constructs a [PaidMediaPhoto] object.
  const PaidMediaPhoto({
    required this.photo,
  });

  /// Creates a [PaidMediaPhoto] object from JSON.
  factory PaidMediaPhoto.fromJson(Map<String, dynamic> json) {
    return PaidMediaPhoto(
      photo: (json['photo'] as List)
          .map((item) => PhotoSize.fromJson(item))
          .toList(),
    );
  }

  /// Converts a [PaidMediaPhoto] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'photo': photo.map((item) => item.toJson()).toList(),
    };
  }
}
