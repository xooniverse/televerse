// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_access_allowed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteAccessAllowed _$WriteAccessAllowedFromJson(Map<String, dynamic> json) {
  return _WriteAccessAllowed.fromJson(json);
}

/// @nodoc
mixin _$WriteAccessAllowed {
  /// Name of the connected website. Present only if the user allowed the bot
  /// to send them messages.
  @JsonKey(name: 'web_app_name')
  String? get webAppName => throw _privateConstructorUsedError;

  /// Optional. True, if the access was granted after the user accepted an
  /// explicit request from a Web App sent by the method requestWriteAccess
  @JsonKey(name: 'from_request')
  bool? get fromRequest => throw _privateConstructorUsedError;

  /// Optional. True, if the access was granted when the bot was added to the
  /// attachment or side menu
  @JsonKey(name: 'from_attachment_menu')
  bool? get fromAttachmentMenu => throw _privateConstructorUsedError;

  /// Serializes this WriteAccessAllowed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WriteAccessAllowedCopyWith<WriteAccessAllowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteAccessAllowedCopyWith<$Res> {
  factory $WriteAccessAllowedCopyWith(
          WriteAccessAllowed value, $Res Function(WriteAccessAllowed) then) =
      _$WriteAccessAllowedCopyWithImpl<$Res, WriteAccessAllowed>;
  @useResult
  $Res call(
      {@JsonKey(name: 'web_app_name') String? webAppName,
      @JsonKey(name: 'from_request') bool? fromRequest,
      @JsonKey(name: 'from_attachment_menu') bool? fromAttachmentMenu});
}

/// @nodoc
class _$WriteAccessAllowedCopyWithImpl<$Res, $Val extends WriteAccessAllowed>
    implements $WriteAccessAllowedCopyWith<$Res> {
  _$WriteAccessAllowedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webAppName = freezed,
    Object? fromRequest = freezed,
    Object? fromAttachmentMenu = freezed,
  }) {
    return _then(_value.copyWith(
      webAppName: freezed == webAppName
          ? _value.webAppName
          : webAppName // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRequest: freezed == fromRequest
          ? _value.fromRequest
          : fromRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromAttachmentMenu: freezed == fromAttachmentMenu
          ? _value.fromAttachmentMenu
          : fromAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteAccessAllowedImplCopyWith<$Res>
    implements $WriteAccessAllowedCopyWith<$Res> {
  factory _$$WriteAccessAllowedImplCopyWith(_$WriteAccessAllowedImpl value,
          $Res Function(_$WriteAccessAllowedImpl) then) =
      __$$WriteAccessAllowedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'web_app_name') String? webAppName,
      @JsonKey(name: 'from_request') bool? fromRequest,
      @JsonKey(name: 'from_attachment_menu') bool? fromAttachmentMenu});
}

/// @nodoc
class __$$WriteAccessAllowedImplCopyWithImpl<$Res>
    extends _$WriteAccessAllowedCopyWithImpl<$Res, _$WriteAccessAllowedImpl>
    implements _$$WriteAccessAllowedImplCopyWith<$Res> {
  __$$WriteAccessAllowedImplCopyWithImpl(_$WriteAccessAllowedImpl _value,
      $Res Function(_$WriteAccessAllowedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webAppName = freezed,
    Object? fromRequest = freezed,
    Object? fromAttachmentMenu = freezed,
  }) {
    return _then(_$WriteAccessAllowedImpl(
      webAppName: freezed == webAppName
          ? _value.webAppName
          : webAppName // ignore: cast_nullable_to_non_nullable
              as String?,
      fromRequest: freezed == fromRequest
          ? _value.fromRequest
          : fromRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromAttachmentMenu: freezed == fromAttachmentMenu
          ? _value.fromAttachmentMenu
          : fromAttachmentMenu // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteAccessAllowedImpl implements _WriteAccessAllowed {
  const _$WriteAccessAllowedImpl(
      {@JsonKey(name: 'web_app_name') this.webAppName,
      @JsonKey(name: 'from_request') this.fromRequest,
      @JsonKey(name: 'from_attachment_menu') this.fromAttachmentMenu});

  factory _$WriteAccessAllowedImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteAccessAllowedImplFromJson(json);

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

  @override
  String toString() {
    return 'WriteAccessAllowed(webAppName: $webAppName, fromRequest: $fromRequest, fromAttachmentMenu: $fromAttachmentMenu)';
  }

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteAccessAllowedImplCopyWith<_$WriteAccessAllowedImpl> get copyWith =>
      __$$WriteAccessAllowedImplCopyWithImpl<_$WriteAccessAllowedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteAccessAllowedImplToJson(
      this,
    );
  }
}

abstract class _WriteAccessAllowed implements WriteAccessAllowed {
  const factory _WriteAccessAllowed(
      {@JsonKey(name: 'web_app_name') final String? webAppName,
      @JsonKey(name: 'from_request') final bool? fromRequest,
      @JsonKey(name: 'from_attachment_menu')
      final bool? fromAttachmentMenu}) = _$WriteAccessAllowedImpl;

  factory _WriteAccessAllowed.fromJson(Map<String, dynamic> json) =
      _$WriteAccessAllowedImpl.fromJson;

  /// Name of the connected website. Present only if the user allowed the bot
  /// to send them messages.
  @override
  @JsonKey(name: 'web_app_name')
  String? get webAppName;

  /// Optional. True, if the access was granted after the user accepted an
  /// explicit request from a Web App sent by the method requestWriteAccess
  @override
  @JsonKey(name: 'from_request')
  bool? get fromRequest;

  /// Optional. True, if the access was granted when the bot was added to the
  /// attachment or side menu
  @override
  @JsonKey(name: 'from_attachment_menu')
  bool? get fromAttachmentMenu;

  /// Create a copy of WriteAccessAllowed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WriteAccessAllowedImplCopyWith<_$WriteAccessAllowedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
