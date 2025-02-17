import 'package:freezed_annotation/freezed_annotation.dart';
import 'sticker.dart';

part 'business_intro.freezed.dart';
part 'business_intro.g.dart';

/// Represents an introduction to a business.
@freezed
class BusinessIntro with _$BusinessIntro {
  /// Creates a [BusinessIntro] object.
  const factory BusinessIntro({
    /// Optional. Title text of the business intro.
    String? title,

    /// Optional. Message text of the business intro.
    String? message,

    /// Optional. Sticker of the business intro.
    Sticker? sticker,
  }) = _BusinessIntro;

  /// Creates a [BusinessIntro] object from a JSON map.
  factory BusinessIntro.fromJson(Map<String, dynamic> json) =>
      _$BusinessIntroFromJson(json);
}
