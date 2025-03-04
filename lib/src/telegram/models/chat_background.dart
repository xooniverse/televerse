import 'package:freezed_annotation/freezed_annotation.dart';
import 'background_type.dart';

part 'chat_background.freezed.dart';
part 'chat_background.g.dart';

/// This object represents a chat background.
@freezed
class ChatBackground with _$ChatBackground {
  /// Constructs a [ChatBackground] object.
  const factory ChatBackground({
    /// Type of the background.
    @JsonKey(name: 'type') required final BackgroundType type,
  }) = _ChatBackground;

  /// Creates a [ChatBackground] object from JSON.
  factory ChatBackground.fromJson(Map<String, dynamic> json) =>
      _$ChatBackgroundFromJson(json);
}
