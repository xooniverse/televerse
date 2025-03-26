// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultContact {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Type of the result, always [InlineQueryResultType.contact]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Contact's phone number
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Contact's first name
  @JsonKey(name: 'first_name')
  String get firstName;

  /// Optional. Contact's last name
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  @JsonKey(name: 'vcard')
  String? get vcard;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;

  /// Optional. Thumbnail width
  @JsonKey(name: 'thumbnail_width')
  int? get thumbnailWidth;

  /// Optional. Thumbnail height
  @JsonKey(name: 'thumbnail_height')
  int? get thumbnailHeight;

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultContactCopyWith<InlineQueryResultContact> get copyWith =>
      _$InlineQueryResultContactCopyWithImpl<InlineQueryResultContact>(
          this as InlineQueryResultContact, _$identity);

  /// Serializes this InlineQueryResultContact to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultContact(id: $id, type: $type, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, vcard: $vcard, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultContactCopyWith<$Res> {
  factory $InlineQueryResultContactCopyWith(InlineQueryResultContact value,
          $Res Function(InlineQueryResultContact) _then) =
      _$InlineQueryResultContactCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'vcard') String? vcard,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultContactCopyWithImpl<$Res>
    implements $InlineQueryResultContactCopyWith<$Res> {
  _$InlineQueryResultContactCopyWithImpl(this._self, this._then);

  final InlineQueryResultContact _self;
  final $Res Function(InlineQueryResultContact) _then;

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? vcard = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      vcard: freezed == vcard
          ? _self.vcard
          : vcard // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _self.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _self.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultContact implements InlineQueryResultContact {
  const _InlineQueryResultContact(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.contact,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'vcard') this.vcard,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') this.thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') this.thumbnailHeight});
  factory _InlineQueryResultContact.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultContactFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Type of the result, always [InlineQueryResultType.contact]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Contact's phone number
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  /// Contact's first name
  @override
  @JsonKey(name: 'first_name')
  final String firstName;

  /// Optional. Contact's last name
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  @override
  @JsonKey(name: 'vcard')
  final String? vcard;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  @override
  @JsonKey(name: 'thumbnail_width')
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  @override
  @JsonKey(name: 'thumbnail_height')
  final int? thumbnailHeight;

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultContactCopyWith<_InlineQueryResultContact> get copyWith =>
      __$InlineQueryResultContactCopyWithImpl<_InlineQueryResultContact>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultContactToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultContact(id: $id, type: $type, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, vcard: $vcard, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, thumbnailUrl: $thumbnailUrl, thumbnailWidth: $thumbnailWidth, thumbnailHeight: $thumbnailHeight)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultContactCopyWith<$Res>
    implements $InlineQueryResultContactCopyWith<$Res> {
  factory _$InlineQueryResultContactCopyWith(_InlineQueryResultContact value,
          $Res Function(_InlineQueryResultContact) _then) =
      __$InlineQueryResultContactCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'vcard') String? vcard,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,
      @JsonKey(name: 'thumbnail_height') int? thumbnailHeight});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultContactCopyWithImpl<$Res>
    implements _$InlineQueryResultContactCopyWith<$Res> {
  __$InlineQueryResultContactCopyWithImpl(this._self, this._then);

  final _InlineQueryResultContact _self;
  final $Res Function(_InlineQueryResultContact) _then;

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? vcard = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailWidth = freezed,
    Object? thumbnailHeight = freezed,
  }) {
    return _then(_InlineQueryResultContact(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      vcard: freezed == vcard
          ? _self.vcard
          : vcard // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailWidth: freezed == thumbnailWidth
          ? _self.thumbnailWidth
          : thumbnailWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailHeight: freezed == thumbnailHeight
          ? _self.thumbnailHeight
          : thumbnailHeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of InlineQueryResultContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
