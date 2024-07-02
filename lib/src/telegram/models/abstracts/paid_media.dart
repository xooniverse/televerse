part of '../models.dart';

/// This object describes paid media.
/// Currently, it can be one of [PaidMediaPreview], [PaidMediaPhoto], [PaidMediaVideo].
abstract class PaidMedia {
  /// Type of the paid media.
  PaidMediaType get type;

  /// Creates a new [PaidMedia] object.
  /// This method decides which [PaidMedia] subclass to use based on the [type] field.
  static PaidMedia fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'preview' => PaidMediaPreview.fromJson(json),
      'photo' => PaidMediaPhoto.fromJson(json),
      'video' => PaidMediaVideo.fromJson(json),
      _ => throw ArgumentError('Invalid paid media type')
    };
  }

  /// Creates a new [PaidMedia] object from JSON.
  const PaidMedia();

  /// Converts a [PaidMedia] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
