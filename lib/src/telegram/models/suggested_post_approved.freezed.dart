// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_approved.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostApproved {
  /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @JsonKey(name: 'suggested_post_message')
  Message? get suggestedPostMessage;

  /// Optional. Amount paid for the post
  @JsonKey(name: 'price')
  SuggestedPostPrice? get price;

  /// Date when the post will be published
  @JsonKey(name: 'send_date')
  int get sendDate;

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostApprovedCopyWith<SuggestedPostApproved> get copyWith =>
      _$SuggestedPostApprovedCopyWithImpl<SuggestedPostApproved>(
        this as SuggestedPostApproved,
        _$identity,
      );

  /// Serializes this SuggestedPostApproved to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostApproved(suggestedPostMessage: $suggestedPostMessage, price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostApprovedCopyWith<$Res> {
  factory $SuggestedPostApprovedCopyWith(
    SuggestedPostApproved value,
    $Res Function(SuggestedPostApproved) _then,
  ) = _$SuggestedPostApprovedCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
    @JsonKey(name: 'price') SuggestedPostPrice? price,
    @JsonKey(name: 'send_date') int sendDate,
  });

  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class _$SuggestedPostApprovedCopyWithImpl<$Res>
    implements $SuggestedPostApprovedCopyWith<$Res> {
  _$SuggestedPostApprovedCopyWithImpl(this._self, this._then);

  final SuggestedPostApproved _self;
  final $Res Function(SuggestedPostApproved) _then;

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? price = freezed,
    Object? sendDate = null,
  }) {
    return _then(
      _self.copyWith(
        suggestedPostMessage: freezed == suggestedPostMessage
            ? _self.suggestedPostMessage
            : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        price: freezed == price
            ? _self.price
            : price // ignore: cast_nullable_to_non_nullable
                  as SuggestedPostPrice?,
        sendDate: null == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SuggestedPostApproved].
extension SuggestedPostApprovedPatterns on SuggestedPostApproved {
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
    TResult Function(_SuggestedPostApproved value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostApproved() when $default != null:
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
    TResult Function(_SuggestedPostApproved value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostApproved():
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
    TResult? Function(_SuggestedPostApproved value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostApproved() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostApproved implements SuggestedPostApproved {
  const _SuggestedPostApproved({
    @JsonKey(name: 'suggested_post_message') this.suggestedPostMessage,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'send_date') required this.sendDate,
  });
  factory _SuggestedPostApproved.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostApprovedFromJson(json);

  /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
  @override
  @JsonKey(name: 'suggested_post_message')
  final Message? suggestedPostMessage;

  /// Optional. Amount paid for the post
  @override
  @JsonKey(name: 'price')
  final SuggestedPostPrice? price;

  /// Date when the post will be published
  @override
  @JsonKey(name: 'send_date')
  final int sendDate;

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostApprovedCopyWith<_SuggestedPostApproved> get copyWith =>
      __$SuggestedPostApprovedCopyWithImpl<_SuggestedPostApproved>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostApprovedToJson(this);
  }

  @override
  String toString() {
    return 'SuggestedPostApproved(suggestedPostMessage: $suggestedPostMessage, price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostApprovedCopyWith<$Res>
    implements $SuggestedPostApprovedCopyWith<$Res> {
  factory _$SuggestedPostApprovedCopyWith(
    _SuggestedPostApproved value,
    $Res Function(_SuggestedPostApproved) _then,
  ) = __$SuggestedPostApprovedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,
    @JsonKey(name: 'price') SuggestedPostPrice? price,
    @JsonKey(name: 'send_date') int sendDate,
  });

  @override
  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$SuggestedPostApprovedCopyWithImpl<$Res>
    implements _$SuggestedPostApprovedCopyWith<$Res> {
  __$SuggestedPostApprovedCopyWithImpl(this._self, this._then);

  final _SuggestedPostApproved _self;
  final $Res Function(_SuggestedPostApproved) _then;

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? suggestedPostMessage = freezed,
    Object? price = freezed,
    Object? sendDate = null,
  }) {
    return _then(
      _SuggestedPostApproved(
        suggestedPostMessage: freezed == suggestedPostMessage
            ? _self.suggestedPostMessage
            : suggestedPostMessage // ignore: cast_nullable_to_non_nullable
                  as Message?,
        price: freezed == price
            ? _self.price
            : price // ignore: cast_nullable_to_non_nullable
                  as SuggestedPostPrice?,
        sendDate: null == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of SuggestedPostApproved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}
