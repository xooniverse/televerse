// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/owned_gift.dart';

part 'owned_gifts.freezed.dart';
part 'owned_gifts.g.dart';

/// Contains the list of gifts received and owned by a user or a chat.
@freezed
abstract class OwnedGifts with _$OwnedGifts {
  /// Creates a new [OwnedGifts] object.
  const factory OwnedGifts({
    /// The total number of gifts owned by the user or the chat
    @JsonKey(name: 'total_count') required int totalCount,

    /// The list of gifts
    @JsonKey(name: 'gifts') required List<OwnedGift> gifts,

    /// Optional. Offset for pagination
    @JsonKey(name: 'next_offset') String? nextOffset,
  }) = _OwnedGifts;

  /// Creates a new [OwnedGifts] object from a JSON [Map].
  factory OwnedGifts.fromJson(Map<String, dynamic> json) =>
      _$OwnedGiftsFromJson(json);
}
