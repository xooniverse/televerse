// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_access_allowed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WriteAccessAllowed {
  /// Name of the connected website. Present only if the user allowed the bot
  /// to send them messages.
  @JsonKey(name: 'web_app_name')
  String? get webAppName;

  /// Optional. True, if the access was granted after the user accepted an
  /// explicit request from a Web App sent by the method requestWriteAccess
  @JsonKey(name: 'from_request')
  bool? get fromRequest;

  /// Optional. True, if the access was granted when the bot was added to the
  /// attachment or side menu
  @JsonKey(name: 'from_attachment_menu')
  bool? get fromAttachmentMenu;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WriteAccessAllowedCopyWith<WriteAccessAllowed> get copyWith =>
      _$WriteAccessAllowedCopyWithImpl<WriteAccessAllowed>(
          this as WriteAccessAllowed, _$identity);

  /// Serializes this WriteAccessAllowed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WriteAccessAllowed(webAppName: $webAppName, fromRequest: $fromRequest, fromAttachmentMenu: $fromAttachmentMenu)';
  }
}

/// @nodoc
abstract mixin class $WriteAccessAllowedCopyWith<$Res> {
  factory $WriteAccessAllowedCopyWith(
          WriteAccessAllowed value, $Res Function(WriteAccessAllowed) _then) =
      _$WriteAccessAllowedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'web_app_name') String? webAppName,
      @JsonKey(name: 'from_request') bool? fromRequest,
      @JsonKey(name: 'from_attachment_menu') bool? fromAttachmentMenu});
}

/// @nodoc
class _$WriteAccessAllowedCopyWithImpl<$Res>
    implements $WriteAccessAllowedCopyWith<$Res> {
  _$WriteAccessAllowedCopyWithImpl(this._self, this._then);

  final WriteAccessAllowed _self;
  final $Res Function(WriteAccessAllowed) _then;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webAppName = freezed,
    Object? fromRequest = freezed,
    Object? fromAttachmentMenu = freezed,
  }) {
    return _then(_self.copyWith(
      webAppName: freezed == webAppName
          ? _self.webAppName
          : webAppName // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRequest: freezed == fromRequest
          ? _self.fromRequest
          : fromRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromAttachmentMenu: freezed == fromAttachmentMenu
          ? _self.fromAttachmentMenu
          : fromAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WriteAccessAllowed implements WriteAccessAllowed {
  const _WriteAccessAllowed(
      {@JsonKey(name: 'web_app_name') this.webAppName,
      @JsonKey(name: 'from_request') this.fromRequest,
      @JsonKey(name: 'from_attachment_menu') this.fromAttachmentMenu});
  factory _WriteAccessAllowed.fromJson(Map<String, dynamic> json) =>
      _$WriteAccessAllowedFromJson(json);

  /// Name of the connected website. Present only if the user allowed the bot
  /// to send them messages.
  @override
  @JsonKey(name: 'web_app_name')
  final String? webAppName;

  /// Optional. True, if the access was granted after the user accepted an
  /// explicit request from a Web App sent by the method requestWriteAccess
  @override
  @JsonKey(name: 'from_request')
  final bool? fromRequest;

  /// Optional. True, if the access was granted when the bot was added to the
  /// attachment or side menu
  @override
  @JsonKey(name: 'from_attachment_menu')
  final bool? fromAttachmentMenu;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WriteAccessAllowedCopyWith<_WriteAccessAllowed> get copyWith =>
      __$WriteAccessAllowedCopyWithImpl<_WriteAccessAllowed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WriteAccessAllowedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'WriteAccessAllowed(webAppName: $webAppName, fromRequest: $fromRequest, fromAttachmentMenu: $fromAttachmentMenu)';
  }
}

/// @nodoc
abstract mixin class _$WriteAccessAllowedCopyWith<$Res>
    implements $WriteAccessAllowedCopyWith<$Res> {
  factory _$WriteAccessAllowedCopyWith(
          _WriteAccessAllowed value, $Res Function(_WriteAccessAllowed) _then) =
      __$WriteAccessAllowedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'web_app_name') String? webAppName,
      @JsonKey(name: 'from_request') bool? fromRequest,
      @JsonKey(name: 'from_attachment_menu') bool? fromAttachmentMenu});
}

/// @nodoc
class __$WriteAccessAllowedCopyWithImpl<$Res>
    implements _$WriteAccessAllowedCopyWith<$Res> {
  __$WriteAccessAllowedCopyWithImpl(this._self, this._then);

  final _WriteAccessAllowed _self;
  final $Res Function(_WriteAccessAllowed) _then;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? webAppName = freezed,
    Object? fromRequest = freezed,
    Object? fromAttachmentMenu = freezed,
  }) {
    return _then(_WriteAccessAllowed(
      webAppName: freezed == webAppName
          ? _self.webAppName
          : webAppName // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRequest: freezed == fromRequest
          ? _self.fromRequest
          : fromRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromAttachmentMenu: freezed == fromAttachmentMenu
          ? _self.fromAttachmentMenu
          : fromAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
