// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unique_gift_backdrop_colors.freezed.dart';
part 'unique_gift_backdrop_colors.g.dart';

/// This object describes the colors of the backdrop of a unique gift.
@freezed
abstract class UniqueGiftBackdropColors with _$UniqueGiftBackdropColors {
  /// Creates a new [UniqueGiftBackdropColors] object.
  const factory UniqueGiftBackdropColors({
    /// The color in the center of the backdrop in RGB format
    @JsonKey(name: 'center_color') required int centerColor,

    /// The color on the edges of the backdrop in RGB format
    @JsonKey(name: 'edge_color') required int edgeColor,

    /// The color to be applied to the symbol in RGB format
    @JsonKey(name: 'symbol_color') required int symbolColor,

    /// The color for the text on the backdrop in RGB format
    @JsonKey(name: 'text_color') required int textColor,
  }) = _UniqueGiftBackdropColors;

  /// Creates a new [UniqueGiftBackdropColors] object from a JSON [Map].
  factory UniqueGiftBackdropColors.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftBackdropColorsFromJson(json);
}
