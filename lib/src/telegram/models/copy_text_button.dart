// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'copy_text_button.freezed.dart';
part 'copy_text_button.g.dart';

/// This object represents an inline keyboard button that copies specified text
/// to the clipboard.
@freezed
abstract class CopyTextButton with _$CopyTextButton {
  /// This object represents an inline keyboard button that copies specified
  /// text to the clipboard.
  const factory CopyTextButton({
    /// The text to be copied to the clipboard; 1-256 characters
    @JsonKey(name: 'text') required String text,
  }) = _CopyTextButton;

  /// Creates the [CopyTextButton] from JSON map
  factory CopyTextButton.fromJson(Map<String, dynamic> json) =>
      _$CopyTextButtonFromJson(json);
}
