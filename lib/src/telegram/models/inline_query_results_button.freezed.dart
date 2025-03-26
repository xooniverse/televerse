// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_results_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultsButton {
  /// Label text on the button
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to switch back to the
  /// inline mode using the method web_app_switch_inline_query inside the Web
  /// App.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp;

  /// Optional. Deep-linking parameter for the /start message sent to the bot
  /// when a user presses the button. 1-64 characters, only `A-Z`, `a-z`,
  /// `0-9`, `_` and `-` are allowed.
  ///
  /// Example: An inline bot that sends YouTube videos can ask the user to
  /// connect the bot to their YouTube account to adapt search results
  /// accordingly. To do this, it displays a 'Connect your YouTube account'
  /// button above the results, or even before showing any. The user presses
  /// the button, switches to a private chat with the bot and, in doing so,
  /// passes a start parameter that instructs the bot to return an OAuth link.
  /// Once done, the bot can offer a switch_inline button so that the user can
  /// easily return to the chat where they wanted to use the bot's inline
  /// capabilities.
  @JsonKey(name: 'start_parameter')
  String? get startParameter;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultsButtonCopyWith<InlineQueryResultsButton> get copyWith =>
      _$InlineQueryResultsButtonCopyWithImpl<InlineQueryResultsButton>(
          this as InlineQueryResultsButton, _$identity);

  /// Serializes this InlineQueryResultsButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultsButton(text: $text, webApp: $webApp, startParameter: $startParameter)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultsButtonCopyWith<$Res> {
  factory $InlineQueryResultsButtonCopyWith(InlineQueryResultsButton value,
          $Res Function(InlineQueryResultsButton) _then) =
      _$InlineQueryResultsButtonCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'start_parameter') String? startParameter});

  $WebAppInfoCopyWith<$Res>? get webApp;
}

/// @nodoc
class _$InlineQueryResultsButtonCopyWithImpl<$Res>
    implements $InlineQueryResultsButtonCopyWith<$Res> {
  _$InlineQueryResultsButtonCopyWithImpl(this._self, this._then);

  final InlineQueryResultsButton _self;
  final $Res Function(InlineQueryResultsButton) _then;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? webApp = freezed,
    Object? startParameter = freezed,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: freezed == webApp
          ? _self.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      startParameter: freezed == startParameter
          ? _self.startParameter
          : startParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultsButton implements InlineQueryResultsButton {
  const _InlineQueryResultsButton(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'web_app') this.webApp,
      @JsonKey(name: 'start_parameter') this.startParameter});
  factory _InlineQueryResultsButton.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultsButtonFromJson(json);

  /// Label text on the button
  @override
  @JsonKey(name: 'text')
  final String text;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to switch back to the
  /// inline mode using the method web_app_switch_inline_query inside the Web
  /// App.
  @override
  @JsonKey(name: 'web_app')
  final WebAppInfo? webApp;

  /// Optional. Deep-linking parameter for the /start message sent to the bot
  /// when a user presses the button. 1-64 characters, only `A-Z`, `a-z`,
  /// `0-9`, `_` and `-` are allowed.
  ///
  /// Example: An inline bot that sends YouTube videos can ask the user to
  /// connect the bot to their YouTube account to adapt search results
  /// accordingly. To do this, it displays a 'Connect your YouTube account'
  /// button above the results, or even before showing any. The user presses
  /// the button, switches to a private chat with the bot and, in doing so,
  /// passes a start parameter that instructs the bot to return an OAuth link.
  /// Once done, the bot can offer a switch_inline button so that the user can
  /// easily return to the chat where they wanted to use the bot's inline
  /// capabilities.
  @override
  @JsonKey(name: 'start_parameter')
  final String? startParameter;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultsButtonCopyWith<_InlineQueryResultsButton> get copyWith =>
      __$InlineQueryResultsButtonCopyWithImpl<_InlineQueryResultsButton>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultsButtonToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultsButton(text: $text, webApp: $webApp, startParameter: $startParameter)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultsButtonCopyWith<$Res>
    implements $InlineQueryResultsButtonCopyWith<$Res> {
  factory _$InlineQueryResultsButtonCopyWith(_InlineQueryResultsButton value,
          $Res Function(_InlineQueryResultsButton) _then) =
      __$InlineQueryResultsButtonCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'start_parameter') String? startParameter});

  @override
  $WebAppInfoCopyWith<$Res>? get webApp;
}

/// @nodoc
class __$InlineQueryResultsButtonCopyWithImpl<$Res>
    implements _$InlineQueryResultsButtonCopyWith<$Res> {
  __$InlineQueryResultsButtonCopyWithImpl(this._self, this._then);

  final _InlineQueryResultsButton _self;
  final $Res Function(_InlineQueryResultsButton) _then;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? webApp = freezed,
    Object? startParameter = freezed,
  }) {
    return _then(_InlineQueryResultsButton(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: freezed == webApp
          ? _self.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      startParameter: freezed == startParameter
          ? _self.startParameter
          : startParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_self.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_self.webApp!, (value) {
      return _then(_self.copyWith(webApp: value));
    });
  }
}
