// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_results_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultsButton _$InlineQueryResultsButtonFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultsButton.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultsButton {
  /// Label text on the button
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to switch back to the
  /// inline mode using the method web_app_switch_inline_query inside the Web
  /// App.
  @JsonKey(name: 'web_app')
  WebAppInfo? get webApp => throw _privateConstructorUsedError;

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
  String? get startParameter => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultsButton to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultsButtonCopyWith<InlineQueryResultsButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultsButtonCopyWith<$Res> {
  factory $InlineQueryResultsButtonCopyWith(InlineQueryResultsButton value,
          $Res Function(InlineQueryResultsButton) then) =
      _$InlineQueryResultsButtonCopyWithImpl<$Res, InlineQueryResultsButton>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String text,
      @JsonKey(name: 'web_app') WebAppInfo? webApp,
      @JsonKey(name: 'start_parameter') String? startParameter});

  $WebAppInfoCopyWith<$Res>? get webApp;
}

/// @nodoc
class _$InlineQueryResultsButtonCopyWithImpl<$Res,
        $Val extends InlineQueryResultsButton>
    implements $InlineQueryResultsButtonCopyWith<$Res> {
  _$InlineQueryResultsButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? webApp = freezed,
    Object? startParameter = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      startParameter: freezed == startParameter
          ? _value.startParameter
          : startParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebAppInfoCopyWith<$Res>? get webApp {
    if (_value.webApp == null) {
      return null;
    }

    return $WebAppInfoCopyWith<$Res>(_value.webApp!, (value) {
      return _then(_value.copyWith(webApp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryResultsButtonImplCopyWith<$Res>
    implements $InlineQueryResultsButtonCopyWith<$Res> {
  factory _$$InlineQueryResultsButtonImplCopyWith(
          _$InlineQueryResultsButtonImpl value,
          $Res Function(_$InlineQueryResultsButtonImpl) then) =
      __$$InlineQueryResultsButtonImplCopyWithImpl<$Res>;
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
class __$$InlineQueryResultsButtonImplCopyWithImpl<$Res>
    extends _$InlineQueryResultsButtonCopyWithImpl<$Res,
        _$InlineQueryResultsButtonImpl>
    implements _$$InlineQueryResultsButtonImplCopyWith<$Res> {
  __$$InlineQueryResultsButtonImplCopyWithImpl(
      _$InlineQueryResultsButtonImpl _value,
      $Res Function(_$InlineQueryResultsButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? webApp = freezed,
    Object? startParameter = freezed,
  }) {
    return _then(_$InlineQueryResultsButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      webApp: freezed == webApp
          ? _value.webApp
          : webApp // ignore: cast_nullable_to_non_nullable
              as WebAppInfo?,
      startParameter: freezed == startParameter
          ? _value.startParameter
          : startParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultsButtonImpl implements _InlineQueryResultsButton {
  const _$InlineQueryResultsButtonImpl(
      {@JsonKey(name: 'text') required this.text,
      @JsonKey(name: 'web_app') this.webApp,
      @JsonKey(name: 'start_parameter') this.startParameter});

  factory _$InlineQueryResultsButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultsButtonImplFromJson(json);

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

  @override
  String toString() {
    return 'InlineQueryResultsButton(text: $text, webApp: $webApp, startParameter: $startParameter)';
  }

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultsButtonImplCopyWith<_$InlineQueryResultsButtonImpl>
      get copyWith => __$$InlineQueryResultsButtonImplCopyWithImpl<
          _$InlineQueryResultsButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultsButtonImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultsButton implements InlineQueryResultsButton {
  const factory _InlineQueryResultsButton(
          {@JsonKey(name: 'text') required final String text,
          @JsonKey(name: 'web_app') final WebAppInfo? webApp,
          @JsonKey(name: 'start_parameter') final String? startParameter}) =
      _$InlineQueryResultsButtonImpl;

  factory _InlineQueryResultsButton.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultsButtonImpl.fromJson;

  /// Label text on the button
  @override
  @JsonKey(name: 'text')
  String get text;

  /// Optional. Description of the Web App that will be launched when the user
  /// presses the button. The Web App will be able to switch back to the
  /// inline mode using the method web_app_switch_inline_query inside the Web
  /// App.
  @override
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
  @override
  @JsonKey(name: 'start_parameter')
  String? get startParameter;

  /// Create a copy of InlineQueryResultsButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultsButtonImplCopyWith<_$InlineQueryResultsButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
