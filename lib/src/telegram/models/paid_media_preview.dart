part of 'models.dart';

/// The paid media isn't available before the payment.
class PaidMediaPreview extends PaidMedia {
  @override
  PaidMediaType get type => PaidMediaType.preview;

  /// Optional. Media width as defined by the sender.
  final int? width;

  /// Optional. Media height as defined by the sender.
  final int? height;

  /// Optional. Duration of the media in seconds as defined by the sender.
  final int? duration;

  /// Constructs a [PaidMediaPreview] object.
  const PaidMediaPreview({
    this.width,
    this.height,
    this.duration,
  });

  /// Creates a [PaidMediaPreview] object from JSON.
  factory PaidMediaPreview.fromJson(Map<String, dynamic> json) {
    return PaidMediaPreview(
      width: json['width'],
      height: json['height'],
      duration: json['duration'],
    );
  }

  /// Converts a [PaidMediaPreview] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'width': width,
      'height': height,
      'duration': duration,
    }..removeWhere(_nullFilter);
  }
}
