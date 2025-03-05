// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_size.freezed.dart';
part 'photo_size.g.dart';

/// This object represents one size of a photo or a file / sticker thumbnail.
@freezed
class PhotoSize with _$PhotoSize {
  /// Constructs a [PhotoSize] object
  const factory PhotoSize({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Photo width
    @JsonKey(name: 'width') required int width,

    /// Photo height
    @JsonKey(name: 'height') required int height,

    /// Optional. File size in bytes
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _PhotoSize;

  /// Creates a [PhotoSize] object from JSON object
  factory PhotoSize.fromJson(Map<String, dynamic> json) =>
      _$PhotoSizeFromJson(json);
}
