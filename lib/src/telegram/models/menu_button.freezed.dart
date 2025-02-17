// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuButton _$MenuButtonFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'default':
      return MenuButtonDefault.fromJson(json);
    case 'web_app':
      return MenuButtonWebApp.fromJson(json);
    case 'commands':
      return MenuButtonCommands.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'MenuButton', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MenuButton {
  /// Type of the menu button
  MenuButtonType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuButtonDefault value) $default, {
    required TResult Function(MenuButtonWebApp value) webApp,
    required TResult Function(MenuButtonCommands value) commands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuButtonDefault value)? $default, {
    TResult? Function(MenuButtonWebApp value)? webApp,
    TResult? Function(MenuButtonCommands value)? commands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuButtonDefault value)? $default, {
    TResult Function(MenuButtonWebApp value)? webApp,
    TResult Function(MenuButtonCommands value)? commands,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MenuButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuButtonCopyWith<MenuButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuButtonCopyWith<$Res> {
  factory $MenuButtonCopyWith(
          MenuButton value, $Res Function(MenuButton) then) =
      _$MenuButtonCopyWithImpl<$Res, MenuButton>;
  @useResult
  $Res call({MenuButtonType type});
}

/// @nodoc
class _$MenuButtonCopyWithImpl<$Res, $Val extends MenuButton>
    implements $MenuButtonCopyWith<$Res> {
  _$MenuButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuButtonDefaultImplCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory _$$MenuButtonDefaultImplCopyWith(_$MenuButtonDefaultImpl value,
          $Res Function(_$MenuButtonDefaultImpl) then) =
      __$$MenuButtonDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MenuButtonType type});
}

/// @nodoc
class __$$MenuButtonDefaultImplCopyWithImpl<$Res>
    extends _$MenuButtonCopyWithImpl<$Res, _$MenuButtonDefaultImpl>
    implements _$$MenuButtonDefaultImplCopyWith<$Res> {
  __$$MenuButtonDefaultImplCopyWithImpl(_$MenuButtonDefaultImpl _value,
      $Res Function(_$MenuButtonDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$MenuButtonDefaultImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuButtonDefaultImpl implements MenuButtonDefault {
  const _$MenuButtonDefaultImpl({this.type = MenuButtonType.defaultButton});

  factory _$MenuButtonDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuButtonDefaultImplFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey()
  final MenuButtonType type;

  @override
  String toString() {
    return 'MenuButton(type: $type)';
  }

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuButtonDefaultImplCopyWith<_$MenuButtonDefaultImpl> get copyWith =>
      __$$MenuButtonDefaultImplCopyWithImpl<_$MenuButtonDefaultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuButtonDefault value) $default, {
    required TResult Function(MenuButtonWebApp value) webApp,
    required TResult Function(MenuButtonCommands value) commands,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuButtonDefault value)? $default, {
    TResult? Function(MenuButtonWebApp value)? webApp,
    TResult? Function(MenuButtonCommands value)? commands,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuButtonDefault value)? $default, {
    TResult Function(MenuButtonWebApp value)? webApp,
    TResult Function(MenuButtonCommands value)? commands,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuButtonDefaultImplToJson(
      this,
    );
  }
}

abstract class MenuButtonDefault implements MenuButton {
  const factory MenuButtonDefault({final MenuButtonType type}) =
      _$MenuButtonDefaultImpl;

  factory MenuButtonDefault.fromJson(Map<String, dynamic> json) =
      _$MenuButtonDefaultImpl.fromJson;

  /// Type of the menu button
  @override
  MenuButtonType get type;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuButtonDefaultImplCopyWith<_$MenuButtonDefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuButtonWebAppImplCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory _$$MenuButtonWebAppImplCopyWith(_$MenuButtonWebAppImpl value,
          $Res Function(_$MenuButtonWebAppImpl) then) =
      __$$MenuButtonWebAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MenuButtonType type,
      String text,
      @JsonKey(name: 'web_app') WebAppInfo webApp});

  $WebAppInfoCopyWith<$Res> get webApp;
}

/// @nodoc
class __$$MenuButtonWebAppImplCopyWithImpl<$Res>
    extends _$MenuButtonCopyWithImpl<$Res, _$MenuButtonWebAppImpl>
    implements _$$MenuButtonWebAppImplCopyWith<$Res> {
  __$$MenuButtonWebAppImplCopyWithImpl(_$MenuButtonWebAppImpl _value,
      $Res Function(_$MenuButtonWebAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? webApp = null,
  }) {
    return _then(_$MenuButtonWebAppImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: null == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo,
    ));
  }

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res> get webApp {
    return $WebAppInfoCopyWith<$Res>(_value.webApp, (value) {
      return _then(_value.copyWith(webApp: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuButtonWebAppImpl implements MenuButtonWebApp {
  const _$MenuButtonWebAppImpl(
      {this.type = MenuButtonType.webApp,
      required this.text,
      @JsonKey(name: 'web_app') required this.webApp});

  factory _$MenuButtonWebAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuButtonWebAppImplFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey()
  final MenuButtonType type;

  /// Text on the button
  @override
  final String text;

  /// Description of the Web App that will be launched when the user presses
  /// the button. The Web App will be able to send an arbitrary message on
  /// behalf of the user using the method answerWebAppQuery.
  ///
  /// Alternatively, a t.me link to a Web App of the bot can be specified in
  /// the object instead of the Web App's URL, in which case the Web App will
  /// be opened as if the user pressed the link.
  @override
  @JsonKey(name: 'web_app')
  final WebAppInfo webApp;

  @override
  String toString() {
    return 'MenuButton.webApp(type: $type, text: $text, webApp: $webApp)';
  }

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuButtonWebAppImplCopyWith<_$MenuButtonWebAppImpl> get copyWith =>
      __$$MenuButtonWebAppImplCopyWithImpl<_$MenuButtonWebAppImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuButtonDefault value) $default, {
    required TResult Function(MenuButtonWebApp value) webApp,
    required TResult Function(MenuButtonCommands value) commands,
  }) {
    return webApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuButtonDefault value)? $default, {
    TResult? Function(MenuButtonWebApp value)? webApp,
    TResult? Function(MenuButtonCommands value)? commands,
  }) {
    return webApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuButtonDefault value)? $default, {
    TResult Function(MenuButtonWebApp value)? webApp,
    TResult Function(MenuButtonCommands value)? commands,
    required TResult orElse(),
  }) {
    if (webApp != null) {
      return webApp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuButtonWebAppImplToJson(
      this,
    );
  }
}

abstract class MenuButtonWebApp implements MenuButton {
  const factory MenuButtonWebApp(
          {final MenuButtonType type,
          required final String text,
          @JsonKey(name: 'web_app') required final WebAppInfo webApp}) =
      _$MenuButtonWebAppImpl;

  factory MenuButtonWebApp.fromJson(Map<String, dynamic> json) =
      _$MenuButtonWebAppImpl.fromJson;

  /// Type of the menu button
  @override
  MenuButtonType get type;

  /// Text on the button
  String get text;

  /// Description of the Web App that will be launched when the user presses
  /// the button. The Web App will be able to send an arbitrary message on
  /// behalf of the user using the method answerWebAppQuery.
  ///
  /// Alternatively, a t.me link to a Web App of the bot can be specified in
  /// the object instead of the Web App's URL, in which case the Web App will
  /// be opened as if the user pressed the link.
  @JsonKey(name: 'web_app')
  WebAppInfo get webApp;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuButtonWebAppImplCopyWith<_$MenuButtonWebAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuButtonCommandsImplCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory _$$MenuButtonCommandsImplCopyWith(_$MenuButtonCommandsImpl value,
          $Res Function(_$MenuButtonCommandsImpl) then) =
      __$$MenuButtonCommandsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MenuButtonType type});
}

/// @nodoc
class __$$MenuButtonCommandsImplCopyWithImpl<$Res>
    extends _$MenuButtonCopyWithImpl<$Res, _$MenuButtonCommandsImpl>
    implements _$$MenuButtonCommandsImplCopyWith<$Res> {
  __$$MenuButtonCommandsImplCopyWithImpl(_$MenuButtonCommandsImpl _value,
      $Res Function(_$MenuButtonCommandsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$MenuButtonCommandsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuButtonCommandsImpl implements MenuButtonCommands {
  const _$MenuButtonCommandsImpl({this.type = MenuButtonType.commands});

  factory _$MenuButtonCommandsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuButtonCommandsImplFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey()
  final MenuButtonType type;

  @override
  String toString() {
    return 'MenuButton.commands(type: $type)';
  }

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuButtonCommandsImplCopyWith<_$MenuButtonCommandsImpl> get copyWith =>
      __$$MenuButtonCommandsImplCopyWithImpl<_$MenuButtonCommandsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuButtonDefault value) $default, {
    required TResult Function(MenuButtonWebApp value) webApp,
    required TResult Function(MenuButtonCommands value) commands,
  }) {
    return commands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuButtonDefault value)? $default, {
    TResult? Function(MenuButtonWebApp value)? webApp,
    TResult? Function(MenuButtonCommands value)? commands,
  }) {
    return commands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuButtonDefault value)? $default, {
    TResult Function(MenuButtonWebApp value)? webApp,
    TResult Function(MenuButtonCommands value)? commands,
    required TResult orElse(),
  }) {
    if (commands != null) {
      return commands(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuButtonCommandsImplToJson(
      this,
    );
  }
}

abstract class MenuButtonCommands implements MenuButton {
  const factory MenuButtonCommands({final MenuButtonType type}) =
      _$MenuButtonCommandsImpl;

  factory MenuButtonCommands.fromJson(Map<String, dynamic> json) =
      _$MenuButtonCommandsImpl.fromJson;

  /// Type of the menu button
  @override
  MenuButtonType get type;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuButtonCommandsImplCopyWith<_$MenuButtonCommandsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
