// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_preview_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LinkPreviewOptions {
  /// Optional. True, if the link preview is disabled
  @JsonKey(name: 'is_disabled')
  bool? get isDisabled;

  /// Optional. URL to use for the link preview. If empty, then the first URL
  /// found in the message text will be used
  @JsonKey(name: 'url')
  String? get url;

  /// Optional. True, if the media in the link preview is supposed to be
  /// shrunk; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @JsonKey(name: 'prefer_small_media')
  bool? get preferSmallMedia;

  /// Optional. True, if the media in the link preview is supposed to be
  /// enlarged; ignored if the URL isn't explicitly specified or media size
  /// change isn't supported for the preview
  @JsonKey(name: 'prefer_large_media')
  bool? get preferLargeMedia;

  /// Optional. True, if the link preview must be shown above the message
  /// text; otherwise, the link preview will be shown below the message text
  @JsonKey(name: 'show_above_text')
  bool? get showAboveText;

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LinkPreviewOptionsCopyWith<LinkPreviewOptions> get copyWith =>
      _$LinkPreviewOptionsCopyWithImpl<LinkPreviewOptions>(
        this as LinkPreviewOptions,
        _$identity,
      );

  /// Serializes this LinkPreviewOptions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'LinkPreviewOptions(isDisabled: $isDisabled, url: $url, preferSmallMedia: $preferSmallMedia, preferLargeMedia: $preferLargeMedia, showAboveText: $showAboveText)';
  }
}

/// @nodoc
abstract mixin class $LinkPreviewOptionsCopyWith<$Res> {
  factory $LinkPreviewOptionsCopyWith(
    LinkPreviewOptions value,
    $Res Function(LinkPreviewOptions) _then,
  ) = _$LinkPreviewOptionsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'is_disabled') bool? isDisabled,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'prefer_small_media') bool? preferSmallMedia,
    @JsonKey(name: 'prefer_large_media') bool? preferLargeMedia,
    @JsonKey(name: 'show_above_text') bool? showAboveText,
  });
}

/// @nodoc
class _$LinkPreviewOptionsCopyWithImpl<$Res>
    implements $LinkPreviewOptionsCopyWith<$Res> {
  _$LinkPreviewOptionsCopyWithImpl(this._self, this._then);

  final LinkPreviewOptions _self;
  final $Res Function(LinkPreviewOptions) _then;

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
    return _then(
      _self.copyWith(
        isDisabled: freezed == isDisabled
            ? _self.isDisabled
            : isDisabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferSmallMedia: freezed == preferSmallMedia
            ? _self.preferSmallMedia
            : preferSmallMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        preferLargeMedia: freezed == preferLargeMedia
            ? _self.preferLargeMedia
            : preferLargeMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        showAboveText: freezed == showAboveText
            ? _self.showAboveText
            : showAboveText // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [LinkPreviewOptions].
extension LinkPreviewOptionsPatterns on LinkPreviewOptions {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LinkPreviewOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LinkPreviewOptions() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LinkPreviewOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkPreviewOptions():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LinkPreviewOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LinkPreviewOptions() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LinkPreviewOptions implements LinkPreviewOptions {
  const _LinkPreviewOptions({
    @JsonKey(name: 'is_disabled') this.isDisabled,
    @JsonKey(name: 'url') this.url,
    @JsonKey(name: 'prefer_small_media') this.preferSmallMedia,
    @JsonKey(name: 'prefer_large_media') this.preferLargeMedia,
    @JsonKey(name: 'show_above_text') this.showAboveText,
  });
  factory _LinkPreviewOptions.fromJson(Map<String, dynamic> json) =>
      _$LinkPreviewOptionsFromJson(json);

  /// Optional. True, if the link preview is disabled
  @override
  @JsonKey(name: 'is_disabled')
  final bool? isDisabled;

  /// Optional. URL to use for the link preview. If empty, then the first URL
  /// found in the message text will be used
  @override
  @JsonKey(name: 'url')
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

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LinkPreviewOptionsCopyWith<_LinkPreviewOptions> get copyWith =>
      __$LinkPreviewOptionsCopyWithImpl<_LinkPreviewOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LinkPreviewOptionsToJson(this);
  }

  @override
  String toString() {
    return 'LinkPreviewOptions(isDisabled: $isDisabled, url: $url, preferSmallMedia: $preferSmallMedia, preferLargeMedia: $preferLargeMedia, showAboveText: $showAboveText)';
  }
}

/// @nodoc
abstract mixin class _$LinkPreviewOptionsCopyWith<$Res>
    implements $LinkPreviewOptionsCopyWith<$Res> {
  factory _$LinkPreviewOptionsCopyWith(
    _LinkPreviewOptions value,
    $Res Function(_LinkPreviewOptions) _then,
  ) = __$LinkPreviewOptionsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is_disabled') bool? isDisabled,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'prefer_small_media') bool? preferSmallMedia,
    @JsonKey(name: 'prefer_large_media') bool? preferLargeMedia,
    @JsonKey(name: 'show_above_text') bool? showAboveText,
  });
}

/// @nodoc
class __$LinkPreviewOptionsCopyWithImpl<$Res>
    implements _$LinkPreviewOptionsCopyWith<$Res> {
  __$LinkPreviewOptionsCopyWithImpl(this._self, this._then);

  final _LinkPreviewOptions _self;
  final $Res Function(_LinkPreviewOptions) _then;

  /// Create a copy of LinkPreviewOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDisabled = freezed,
    Object? url = freezed,
    Object? preferSmallMedia = freezed,
    Object? preferLargeMedia = freezed,
    Object? showAboveText = freezed,
  }) {
    return _then(
      _LinkPreviewOptions(
        isDisabled: freezed == isDisabled
            ? _self.isDisabled
            : isDisabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferSmallMedia: freezed == preferSmallMedia
            ? _self.preferSmallMedia
            : preferSmallMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        preferLargeMedia: freezed == preferLargeMedia
            ? _self.preferLargeMedia
            : preferLargeMedia // ignore: cast_nullable_to_non_nullable
                  as bool?,
        showAboveText: freezed == showAboveText
            ? _self.showAboveText
            : showAboveText // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
