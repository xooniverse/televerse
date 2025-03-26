// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'gift.dart';

part 'gifts.freezed.dart';
part 'gifts.g.dart';

/// Represents a list of gifts.
@freezed
abstract class Gifts with _$Gifts {
  /// Creates a [Gifts] object.
  const factory Gifts({
    /// The list of gifts.
    @JsonKey(name: 'gifts') required List<Gift> gifts,
  }) = _Gifts;

  /// Creates a [Gifts] object from a JSON map.
  factory Gifts.fromJson(Map<String, dynamic> json) => _$GiftsFromJson(json);
}
