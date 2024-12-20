part of '../models.dart';

/// This object describes paid media.
/// Currently, it can be one of [PaidMediaPreview], [PaidMediaPhoto], [PaidMediaVideo].
abstract class PaidMedia {
  /// Type of the paid media.
  PaidMediaType get type;

  /// Creates a new [PaidMedia] object.
  /// This method decides which [PaidMedia] subclass to use based on the [type] field.
  static PaidMedia fromJson(Map<String, dynamic> json) {
    return switch (PaidMediaType.fromJson(json['type'])) {
      PaidMediaType.preview => PaidMediaPreview.fromJson(json),
      PaidMediaType.photo => PaidMediaPhoto.fromJson(json),
      PaidMediaType.video => PaidMediaVideo.fromJson(json),
    };
  }

  /// Creates a new [PaidMedia] object from JSON.
  const PaidMedia();

  /// Converts a [PaidMedia] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
