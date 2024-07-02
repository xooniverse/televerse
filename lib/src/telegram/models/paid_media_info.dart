part of 'models.dart';

/// Describes the paid media added to a message.
class PaidMediaInfo {
  /// The number of Telegram Stars that must be paid to buy access to the media.
  final int starCount;

  /// Information about the paid media.
  final List<PaidMedia> paidMedia;

  /// Constructs a [PaidMediaInfo] object.
  const PaidMediaInfo({
    required this.starCount,
    required this.paidMedia,
  });

  /// Creates a [PaidMediaInfo] object from JSON.
  factory PaidMediaInfo.fromJson(Map<String, dynamic> json) {
    return PaidMediaInfo(
      starCount: json['star_count'],
      paidMedia: (json['paid_media'] as List)
          .map((item) => PaidMedia.fromJson(item))
          .toList(),
    );
  }

  /// Converts a [PaidMediaInfo] object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'star_count': starCount,
      'paid_media': paidMedia.map((item) => item.toJson()).toList(),
    };
  }
}
