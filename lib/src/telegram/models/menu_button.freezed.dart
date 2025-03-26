// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
  @JsonKey(name: 'type')
  MenuButtonType get type;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuButtonCopyWith<MenuButton> get copyWith =>
      _$MenuButtonCopyWithImpl<MenuButton>(this as MenuButton, _$identity);

  /// Serializes this MenuButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MenuButton(type: $type)';
  }
}

/// @nodoc
abstract mixin class $MenuButtonCopyWith<$Res> {
  factory $MenuButtonCopyWith(
          MenuButton value, $Res Function(MenuButton) _then) =
      _$MenuButtonCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') MenuButtonType type});
}

/// @nodoc
class _$MenuButtonCopyWithImpl<$Res> implements $MenuButtonCopyWith<$Res> {
  _$MenuButtonCopyWithImpl(this._self, this._then);

  final MenuButton _self;
  final $Res Function(MenuButton) _then;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MenuButtonDefault implements MenuButton {
  const MenuButtonDefault(
      {@JsonKey(name: 'type') this.type = MenuButtonType.defaultButton});
  factory MenuButtonDefault.fromJson(Map<String, dynamic> json) =>
      _$MenuButtonDefaultFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey(name: 'type')
  final MenuButtonType type;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuButtonDefaultCopyWith<MenuButtonDefault> get copyWith =>
      _$MenuButtonDefaultCopyWithImpl<MenuButtonDefault>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuButtonDefaultToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MenuButton(type: $type)';
  }
}

/// @nodoc
abstract mixin class $MenuButtonDefaultCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory $MenuButtonDefaultCopyWith(
          MenuButtonDefault value, $Res Function(MenuButtonDefault) _then) =
      _$MenuButtonDefaultCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') MenuButtonType type});
}

/// @nodoc
class _$MenuButtonDefaultCopyWithImpl<$Res>
    implements $MenuButtonDefaultCopyWith<$Res> {
  _$MenuButtonDefaultCopyWithImpl(this._self, this._then);

  final MenuButtonDefault _self;
  final $Res Function(MenuButtonDefault) _then;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(MenuButtonDefault(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MenuButtonWebApp implements MenuButton {
  const MenuButtonWebApp(
      {@JsonKey(name: 'type') this.type = MenuButtonType.webApp,
      @JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'web_app') required this.webApp});
  factory MenuButtonWebApp.fromJson(Map<String, dynamic> json) =>
      _$MenuButtonWebAppFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey(name: 'type')
  final MenuButtonType type;

  /// Text on the button
  @JsonKey(name: 'text')
  final String text;

  /// Description of the Web App that will be launched when the user presses
  /// the button. The Web App will be able to send an arbitrary message on
  /// behalf of the user using the method answerWebAppQuery.
  ///
  /// Alternatively, a t.me link to a Web App of the bot can be specified in
  /// the object instead of the Web App's URL, in which case the Web App will
  /// be opened as if the user pressed the link.
  @JsonKey(name: 'web_app')
  final WebAppInfo webApp;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuButtonWebAppCopyWith<MenuButtonWebApp> get copyWith =>
      _$MenuButtonWebAppCopyWithImpl<MenuButtonWebApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuButtonWebAppToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MenuButton.webApp(type: $type, text: $text, webApp: $webApp)';
  }
}

/// @nodoc
abstract mixin class $MenuButtonWebAppCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory $MenuButtonWebAppCopyWith(
          MenuButtonWebApp value, $Res Function(MenuButtonWebApp) _then) =
      _$MenuButtonWebAppCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') MenuButtonType type,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'web_app') WebAppInfo webApp});

  $WebAppInfoCopyWith<$Res> get webApp;
}

/// @nodoc
class _$MenuButtonWebAppCopyWithImpl<$Res>
    implements $MenuButtonWebAppCopyWith<$Res> {
  _$MenuButtonWebAppCopyWithImpl(this._self, this._then);

  final MenuButtonWebApp _self;
  final $Res Function(MenuButtonWebApp) _then;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? webApp = null,
  }) {
    return _then(MenuButtonWebApp(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: null == webApp
          ? _self.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo,
    ));
  }

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res> get webApp {
    return $WebAppInfoCopyWith<$Res>(_self.webApp, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MenuButtonCommands implements MenuButton {
  const MenuButtonCommands(
      {@JsonKey(name: 'type') this.type = MenuButtonType.commands});
  factory MenuButtonCommands.fromJson(Map<String, dynamic> json) =>
      _$MenuButtonCommandsFromJson(json);

  /// Type of the menu button
  @override
  @JsonKey(name: 'type')
  final MenuButtonType type;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuButtonCommandsCopyWith<MenuButtonCommands> get copyWith =>
      _$MenuButtonCommandsCopyWithImpl<MenuButtonCommands>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuButtonCommandsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MenuButton.commands(type: $type)';
  }
}

/// @nodoc
abstract mixin class $MenuButtonCommandsCopyWith<$Res>
    implements $MenuButtonCopyWith<$Res> {
  factory $MenuButtonCommandsCopyWith(
          MenuButtonCommands value, $Res Function(MenuButtonCommands) _then) =
      _$MenuButtonCommandsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') MenuButtonType type});
}

/// @nodoc
class _$MenuButtonCommandsCopyWithImpl<$Res>
    implements $MenuButtonCommandsCopyWith<$Res> {
  _$MenuButtonCommandsCopyWithImpl(this._self, this._then);

  final MenuButtonCommands _self;
  final $Res Function(MenuButtonCommands) _then;

  /// Create a copy of MenuButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(MenuButtonCommands(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuButtonType,
    ));
  }
}
