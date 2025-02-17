// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_preview_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkPreviewOptions _$LinkPreviewOptionsFromJson(Map<String, dynamic> json) {
  return _LinkPreviewOptions.fromJson(json);
}

/// @nodoc
mixin _$LinkPreviewOptions {
  /// Optional. True, if the link preview is disabled
  @JsonKey(name: 'is_disabled')
  bool? get isDisabled => throw _privateConstructorUsedError;

  /// Optional. URL to use for the link preview. If empty, then the first URL
  /// found in the message text will be used
  String? get url => throw _privateConstructorUsedError;

  /// Optional. True, if the media in the link preview is supposed to be
  /// shrunk; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @JsonKey(name: 'prefer_small_media')
  bool? get preferSmallMedia => throw _privateConstructorUsedError;

  /// Optional. True, if the media in the link preview is supposed to be
  /// enlarged; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @JsonKey(name: 'prefer_large_media')
  bool? get preferLargeMedia => throw _privateConstructorUsedError;

  /// Optional. True, if the link preview must be shown above the message
  /// text; otherwise, the link preview will be shown below the message text
  @JsonKey(name: 'show_above_text')
  bool? get showAboveText => throw _privateConstructorUsedError;

  /// Serializes this LinkPreviewOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkPreviewOptionsCopyWith<LinkPreviewOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPreviewOptionsCopyWith<$Res> {
  factory $LinkPreviewOptionsCopyWith(
          LinkPreviewOptions value, $Res Function(LinkPreviewOptions) then) =
      _$LinkPreviewOptionsCopyWithImpl<$Res, LinkPreviewOptions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_disabled') bool? isDisabled,
      String? url,
      @JsonKey(name: 'prefer_small_media') bool? preferSmallMedia,
      @JsonKey(name: 'prefer_large_media') bool? preferLargeMedia,
      @JsonKey(name: 'show_above_text') bool? showAboveText});
}

/// @nodoc
class _$LinkPreviewOptionsCopyWithImpl<$Res, $Val extends LinkPreviewOptions>
    implements $LinkPreviewOptionsCopyWith<$Res> {
  _$LinkPreviewOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? url = freezed,
    Object? preferSmallMedia = freezed,
    Object? preferLargeMedia = freezed,
    Object? showAboveText = freezed,
  }) {
    return _then(_value.copyWith(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      preferSmallMedia: freezed == preferSmallMedia
          ? _value.preferSmallMedia
          : preferSmallMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      preferLargeMedia: freezed == preferLargeMedia
          ? _value.preferLargeMedia
          : preferLargeMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      showAboveText: freezed == showAboveText
          ? _value.showAboveText
          : showAboveText // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkPreviewOptionsImplCopyWith<$Res>
    implements $LinkPreviewOptionsCopyWith<$Res> {
  factory _$$LinkPreviewOptionsImplCopyWith(_$LinkPreviewOptionsImpl value,
          $Res Function(_$LinkPreviewOptionsImpl) then) =
      __$$LinkPreviewOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_disabled') bool? isDisabled,
      String? url,
      @JsonKey(name: 'prefer_small_media') bool? preferSmallMedia,
      @JsonKey(name: 'prefer_large_media') bool? preferLargeMedia,
      @JsonKey(name: 'show_above_text') bool? showAboveText});
}

/// @nodoc
class __$$LinkPreviewOptionsImplCopyWithImpl<$Res>
    extends _$LinkPreviewOptionsCopyWithImpl<$Res, _$LinkPreviewOptionsImpl>
    implements _$$LinkPreviewOptionsImplCopyWith<$Res> {
  __$$LinkPreviewOptionsImplCopyWithImpl(_$LinkPreviewOptionsImpl _value,
      $Res Function(_$LinkPreviewOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? url = freezed,
    Object? preferSmallMedia = freezed,
    Object? preferLargeMedia = freezed,
    Object? showAboveText = freezed,
  }) {
    return _then(_$LinkPreviewOptionsImpl(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      preferSmallMedia: freezed == preferSmallMedia
          ? _value.preferSmallMedia
          : preferSmallMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      preferLargeMedia: freezed == preferLargeMedia
          ? _value.preferLargeMedia
          : preferLargeMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      showAboveText: freezed == showAboveText
          ? _value.showAboveText
          : showAboveText // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPreviewOptionsImpl implements _LinkPreviewOptions {
  const _$LinkPreviewOptionsImpl(
      {@JsonKey(name: 'is_disabled') this.isDisabled,
      this.url,
      @JsonKey(name: 'prefer_small_media') this.preferSmallMedia,
      @JsonKey(name: 'prefer_large_media') this.preferLargeMedia,
      @JsonKey(name: 'show_above_text') this.showAboveText});

  factory _$LinkPreviewOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPreviewOptionsImplFromJson(json);

  /// Optional. True, if the link preview is disabled
  @override
  @JsonKey(name: 'is_disabled')
  final bool? isDisabled;

  /// Optional. URL to use for the link preview. If empty, then the first URL
  /// found in the message text will be used
  @override
  final String? url;

  /// Optional. True, if the media in the link preview is supposed to be
  /// shrunk; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @override
  @JsonKey(name: 'prefer_small_media')
  final bool? preferSmallMedia;

  /// Optional. True, if the media in the link preview is supposed to be
  /// enlarged; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @override
  @JsonKey(name: 'prefer_large_media')
  final bool? preferLargeMedia;

  /// Optional. True, if the link preview must be shown above the message
  /// text; otherwise, the link preview will be shown below the message text
  @override
  @JsonKey(name: 'show_above_text')
  final bool? showAboveText;

  @override
  String toString() {
    return 'LinkPreviewOptions(isDisabled: $isDisabled, url: $url, preferSmallMedia: $preferSmallMedia, preferLargeMedia: $preferLargeMedia, showAboveText: $showAboveText)';
  }

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkPreviewOptionsImplCopyWith<_$LinkPreviewOptionsImpl> get copyWith =>
      __$$LinkPreviewOptionsImplCopyWithImpl<_$LinkPreviewOptionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPreviewOptionsImplToJson(
      this,
    );
  }
}

abstract class _LinkPreviewOptions implements LinkPreviewOptions {
  const factory _LinkPreviewOptions(
          {@JsonKey(name: 'is_disabled') final bool? isDisabled,
          final String? url,
          @JsonKey(name: 'prefer_small_media') final bool? preferSmallMedia,
          @JsonKey(name: 'prefer_large_media') final bool? preferLargeMedia,
          @JsonKey(name: 'show_above_text') final bool? showAboveText}) =
      _$LinkPreviewOptionsImpl;

  factory _LinkPreviewOptions.fromJson(Map<String, dynamic> json) =
      _$LinkPreviewOptionsImpl.fromJson;

  /// Optional. True, if the link preview is disabled
  @override
  @JsonKey(name: 'is_disabled')
  bool? get isDisabled;

  /// Optional. URL to use for the link preview. If empty, then the first URL
  /// found in the message text will be used
  @override
  String? get url;

  /// Optional. True, if the media in the link preview is supposed to be
  /// shrunk; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @override
  @JsonKey(name: 'prefer_small_media')
  bool? get preferSmallMedia;

  /// Optional. True, if the media in the link preview is supposed to be
  /// enlarged; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @override
  @JsonKey(name: 'prefer_large_media')
  bool? get preferLargeMedia;

  /// Optional. True, if the link preview must be shown above the message
  /// text; otherwise, the link preview will be shown below the message text
  @override
  @JsonKey(name: 'show_above_text')
  bool? get showAboveText;

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkPreviewOptionsImplCopyWith<_$LinkPreviewOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
