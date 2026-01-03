// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_gift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UniqueGift {
  /// Human-readable name of the regular gift from which this unique gift was upgraded
  @JsonKey(name: 'base_name')
  String get baseName;

  /// Unique name of the gift. This name can be used in `https://t.me/nft/...` links and story areas
  @JsonKey(name: 'name')
  String get name;

  /// Unique number of the upgraded gift among gifts upgraded from the same regular gift
  @JsonKey(name: 'number')
  int get number;

  /// Model of the gift
  @JsonKey(name: 'model')
  UniqueGiftModel get model;

  /// Symbol of the gift
  @JsonKey(name: 'symbol')
  UniqueGiftSymbol get symbol;

  /// Backdrop of the gift
  @JsonKey(name: 'backdrop')
  UniqueGiftBackdrop get backdrop;

  /// Optional. Information about the chat that published the gift
  @JsonKey(name: 'publisher_chat')
  Chat? get publisherChat;

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UniqueGiftCopyWith<UniqueGift> get copyWith =>
      _$UniqueGiftCopyWithImpl<UniqueGift>(this as UniqueGift, _$identity);

  /// Serializes this UniqueGift to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'UniqueGift(baseName: $baseName, name: $name, number: $number, model: $model, symbol: $symbol, backdrop: $backdrop, publisherChat: $publisherChat)';
  }
}

/// @nodoc
abstract mixin class $UniqueGiftCopyWith<$Res> {
  factory $UniqueGiftCopyWith(
    UniqueGift value,
    $Res Function(UniqueGift) _then,
  ) = _$UniqueGiftCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'base_name') String baseName,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'model') UniqueGiftModel model,
    @JsonKey(name: 'symbol') UniqueGiftSymbol symbol,
    @JsonKey(name: 'backdrop') UniqueGiftBackdrop backdrop,
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,
  });

  $UniqueGiftModelCopyWith<$Res> get model;
  $UniqueGiftSymbolCopyWith<$Res> get symbol;
  $UniqueGiftBackdropCopyWith<$Res> get backdrop;
  $ChatCopyWith<$Res>? get publisherChat;
}

/// @nodoc
class _$UniqueGiftCopyWithImpl<$Res> implements $UniqueGiftCopyWith<$Res> {
  _$UniqueGiftCopyWithImpl(this._self, this._then);

  final UniqueGift _self;
  final $Res Function(UniqueGift) _then;

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseName = null,
    Object? name = null,
    Object? number = null,
    Object? model = null,
    Object? symbol = null,
    Object? backdrop = null,
    Object? publisherChat = freezed,
  }) {
    return _then(
      _self.copyWith(
        baseName: null == baseName
            ? _self.baseName
            : baseName // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _self.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        model: null == model
            ? _self.model
            : model // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftModel,
        symbol: null == symbol
            ? _self.symbol
            : symbol // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftSymbol,
        backdrop: null == backdrop
            ? _self.backdrop
            : backdrop // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftBackdrop,
        publisherChat: freezed == publisherChat
            ? _self.publisherChat
            : publisherChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
      ),
    );
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftModelCopyWith<$Res> get model {
    return $UniqueGiftModelCopyWith<$Res>(_self.model, (value) {
      return _then(_self.copyWith(model: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftSymbolCopyWith<$Res> get symbol {
    return $UniqueGiftSymbolCopyWith<$Res>(_self.symbol, (value) {
      return _then(_self.copyWith(symbol: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropCopyWith<$Res> get backdrop {
    return $UniqueGiftBackdropCopyWith<$Res>(_self.backdrop, (value) {
      return _then(_self.copyWith(backdrop: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get publisherChat {
    if (_self.publisherChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.publisherChat!, (value) {
      return _then(_self.copyWith(publisherChat: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UniqueGift].
extension UniqueGiftPatterns on UniqueGift {
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
    TResult Function(_UniqueGift value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UniqueGift() when $default != null:
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
    TResult Function(_UniqueGift value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGift():
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
    TResult? Function(_UniqueGift value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UniqueGift() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UniqueGift implements UniqueGift {
  const _UniqueGift({
    @JsonKey(name: 'base_name') required this.baseName,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'number') required this.number,
    @JsonKey(name: 'model') required this.model,
    @JsonKey(name: 'symbol') required this.symbol,
    @JsonKey(name: 'backdrop') required this.backdrop,
    @JsonKey(name: 'publisher_chat') this.publisherChat,
  });
  factory _UniqueGift.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftFromJson(json);

  /// Human-readable name of the regular gift from which this unique gift was upgraded
  @override
  @JsonKey(name: 'base_name')
  final String baseName;

  /// Unique name of the gift. This name can be used in `https://t.me/nft/...` links and story areas
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Unique number of the upgraded gift among gifts upgraded from the same regular gift
  @override
  @JsonKey(name: 'number')
  final int number;

  /// Model of the gift
  @override
  @JsonKey(name: 'model')
  final UniqueGiftModel model;

  /// Symbol of the gift
  @override
  @JsonKey(name: 'symbol')
  final UniqueGiftSymbol symbol;

  /// Backdrop of the gift
  @override
  @JsonKey(name: 'backdrop')
  final UniqueGiftBackdrop backdrop;

  /// Optional. Information about the chat that published the gift
  @override
  @JsonKey(name: 'publisher_chat')
  final Chat? publisherChat;

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UniqueGiftCopyWith<_UniqueGift> get copyWith =>
      __$UniqueGiftCopyWithImpl<_UniqueGift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UniqueGiftToJson(this);
  }

  @override
  String toString() {
    return 'UniqueGift(baseName: $baseName, name: $name, number: $number, model: $model, symbol: $symbol, backdrop: $backdrop, publisherChat: $publisherChat)';
  }
}

/// @nodoc
abstract mixin class _$UniqueGiftCopyWith<$Res>
    implements $UniqueGiftCopyWith<$Res> {
  factory _$UniqueGiftCopyWith(
    _UniqueGift value,
    $Res Function(_UniqueGift) _then,
  ) = __$UniqueGiftCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'base_name') String baseName,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'number') int number,
    @JsonKey(name: 'model') UniqueGiftModel model,
    @JsonKey(name: 'symbol') UniqueGiftSymbol symbol,
    @JsonKey(name: 'backdrop') UniqueGiftBackdrop backdrop,
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,
  });

  @override
  $UniqueGiftModelCopyWith<$Res> get model;
  @override
  $UniqueGiftSymbolCopyWith<$Res> get symbol;
  @override
  $UniqueGiftBackdropCopyWith<$Res> get backdrop;
  @override
  $ChatCopyWith<$Res>? get publisherChat;
}

/// @nodoc
class __$UniqueGiftCopyWithImpl<$Res> implements _$UniqueGiftCopyWith<$Res> {
  __$UniqueGiftCopyWithImpl(this._self, this._then);

  final _UniqueGift _self;
  final $Res Function(_UniqueGift) _then;

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? baseName = null,
    Object? name = null,
    Object? number = null,
    Object? model = null,
    Object? symbol = null,
    Object? backdrop = null,
    Object? publisherChat = freezed,
  }) {
    return _then(
      _UniqueGift(
        baseName: null == baseName
            ? _self.baseName
            : baseName // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        number: null == number
            ? _self.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        model: null == model
            ? _self.model
            : model // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftModel,
        symbol: null == symbol
            ? _self.symbol
            : symbol // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftSymbol,
        backdrop: null == backdrop
            ? _self.backdrop
            : backdrop // ignore: cast_nullable_to_non_nullable
                  as UniqueGiftBackdrop,
        publisherChat: freezed == publisherChat
            ? _self.publisherChat
            : publisherChat // ignore: cast_nullable_to_non_nullable
                  as Chat?,
      ),
    );
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftModelCopyWith<$Res> get model {
    return $UniqueGiftModelCopyWith<$Res>(_self.model, (value) {
      return _then(_self.copyWith(model: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftSymbolCopyWith<$Res> get symbol {
    return $UniqueGiftSymbolCopyWith<$Res>(_self.symbol, (value) {
      return _then(_self.copyWith(symbol: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UniqueGiftBackdropCopyWith<$Res> get backdrop {
    return $UniqueGiftBackdropCopyWith<$Res>(_self.backdrop, (value) {
      return _then(_self.copyWith(backdrop: value));
    });
  }

  /// Create a copy of UniqueGift
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get publisherChat {
    if (_self.publisherChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.publisherChat!, (value) {
      return _then(_self.copyWith(publisherChat: value));
    });
  }
}
