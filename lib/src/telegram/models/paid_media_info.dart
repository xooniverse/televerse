// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/paid_media.dart';

part 'paid_media_info.freezed.dart';
part 'paid_media_info.g.dart';

/// Describes the paid media added to a message.
@freezed
abstract class PaidMediaInfo with _$PaidMediaInfo {
  /// Constructs a [PaidMediaInfo] object.
  const factory PaidMediaInfo({
    /// The number of Telegram Stars that must be paid to buy access to the
    /// media.
    @JsonKey(name: 'star_count') required int starCount,

    /// Information about the paid media.
    @JsonKey(name: 'paid_media') required List<PaidMedia> paidMedia,
  }) = _PaidMediaInfo;

  /// Creates a [PaidMediaInfo] object from JSON.
  factory PaidMediaInfo.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaInfoFromJson(json);
}
