// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_background.freezed.dart';
part 'gift_background.g.dart';

/// This object describes the background of a gift.
@freezed
abstract class GiftBackground with _$GiftBackground {
  /// Creates a new [GiftBackground] object.
  const factory GiftBackground({
    /// Center color of the background in RGB format
    @JsonKey(name: 'center_color') required int centerColor,

    /// Edge color of the background in RGB format
    @JsonKey(name: 'edge_color') required int edgeColor,

    /// Text color of the background in RGB format
    @JsonKey(name: 'text_color') required int textColor,
  }) = _GiftBackground;

  /// Creates a new [GiftBackground] object from a JSON [Map].
  factory GiftBackground.fromJson(Map<String, dynamic> json) =>
      _$GiftBackgroundFromJson(json);
}
