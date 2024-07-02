part of 'models.dart';

/// The paid media is a video.
class PaidMediaVideo extends PaidMedia {
  @override
  PaidMediaType get type => PaidMediaType.video;

  /// The video.
  final Video video;

  /// Constructs a [PaidMediaVideo] object.
  const PaidMediaVideo({
    required this.video,
  });

  /// Creates a [PaidMediaVideo] object from JSON.
  factory PaidMediaVideo.fromJson(Map<String, dynamic> json) {
    return PaidMediaVideo(
      video: Video.fromJson(json['video']),
    );
  }

  /// Converts a [PaidMediaVideo] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'video': video.toJson(),
    };
  }
}
