/// Telegram Bot API models
///
/// This library contains all the models used by the Telegram Bot API.
library models;

import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:televerse/televerse.dart';
import 'dart:io' as io;

import 'games.dart';
import 'passport.dart';
import 'payments.dart';

export 'games.dart';
export 'passport.dart';
export 'payments.dart';

part 'input_location_message_content.dart';
part 'forum_topic_reopened.dart';
part 'update.dart';
part 'inline_query_result_mpeg4_gif.dart';
part 'menu_button_default.dart';
part 'contact.dart';
part 'venue.dart';
part 'inline_query_result_cached_audio.dart';
part 'web_app_info.dart';
part 'sticker_set.dart';
part 'audio.dart';
part 'sticker.dart';
part 'forum_topic.dart';
part 'message_id.dart';
part 'chat_member_member.dart';
part 'response_parameters.dart';
part 'chat_photo.dart';
part 'video_note.dart';
part 'message.dart';
part 'chat_administrator_rights.dart';
part 'inline_query_result_cached_photo.dart';
part 'video_chat_started.dart';
part 'input_text_message_content.dart';
part 'web_app_data.dart';
part 'poll.dart';
part 'inline_query_result_cached_voice.dart';
part 'input_invoice_message_content.dart';
part 'video_chat_scheduled.dart';
part 'inline_keyboard_button.dart';
part 'mask_position.dart';
part 'chat_permissions.dart';
part 'reply_keyboard_markup.dart';
part 'bot_command_scope_chat_member.dart';
part 'voice.dart';
part 'sent_web_app_message.dart';
part 'input_contact_message_content.dart';
part 'inline_query_result_audio.dart';
part 'inline_query_result_cached_gif.dart';
part 'keyboard_button.dart';
part 'document.dart';
part 'user.dart';
part 'inline_query_result_venue.dart';
part 'bot_command_scope_default.dart';
part 'dice.dart';
part 'inline_query_result_location.dart';
part 'input_venue_message_content.dart';
part 'inline_query_result_cached_video.dart';
part 'menu_button_commands.dart';
part 'inline_query_result_voice.dart';
part 'inline_query.dart';
part 'video.dart';
part 'message_auto_delete_timer_changed.dart';
part 'callback_query.dart';
part 'inline_query_result_gif.dart';
part 'bot_command_scope_chat_administrators.dart';
part 'chat_member_owner.dart';
part 'chat_member_left.dart';
part 'inline_query_result_cached_mpeg4_gif.dart';
part 'inline_query_result_photo.dart';
part 'inline_query_result_article.dart';
part 'chat_member_updated.dart';
part 'video_chat_ended.dart';
part 'chosen_inline_result.dart';
part 'force_reply.dart';
part 'bot_command_scope_all_chat_administrators.dart';
part 'inline_query_result_document.dart';
part 'file.dart';
part 'input_media_document.dart';
part 'abstracts/inline_query_result.dart';
part 'abstracts/chat_member.dart';
part 'abstracts/bot_command_scope.dart';
part 'abstracts/input_message_content.dart';
part 'abstracts/reply_markup.dart';
part 'abstracts/input_media.dart';
part 'abstracts/menu_button.dart';
part 'chat_location.dart';
part 'location.dart';
part 'keyboard_button_poll_type.dart';
part 'input_media_audio.dart';
part 'chat_member_restricted.dart';
part 'proximity_alert_triggered.dart';
part 'webhook_info.dart';
part 'inline_query_result_cached_document.dart';
part 'input_media_photo.dart';
part 'message_entity.dart';
part 'animation.dart';
part 'menu_button_web_app.dart';
part 'chat_member_administrator.dart';
part 'poll_answer.dart';
part 'forum_topic_closed.dart';
part 'forum_topic_created.dart';
part 'inline_query_result_cached_sticker.dart';
part 'bot_command_scope_all_group_chats.dart';
part 'inline_keyboard_markup.dart';
part 'chat_member_banned.dart';
part 'photo_size.dart';
part 'chat.dart';
part 'inline_query_result_game.dart';
part 'user_profile_photos.dart';
part 'chat_join_request.dart';
part 'chat_invite_link.dart';
part 'bot_command_scope_chat.dart';
part 'input_media_video.dart';
part 'inline_query_result_contact.dart';
part 'poll_option.dart';
part 'input_media_animation.dart';
part 'reply_keyboard_remove.dart';
part 'login_url.dart';
part 'video_chat_participants_invited.dart';
part 'bot_command.dart';
part 'inline_query_result_video.dart';

// Bot API 6.4
part 'forum_topic_edited.dart';
part 'general_forum_topic_hidden.dart';
part 'general_forum_topic_unhidden.dart';
part 'write_access_allowed.dart';

// Bot API 6.5
part 'keyboard_button_request_user.dart';
part 'keyboard_button_request_chat.dart';
part 'user_shared.dart';
part 'chat_shared.dart';

// Bot API 6.6
part 'bot_description.dart';
part 'bot_short_description.dart';
part 'input_sticker.dart';

// Bot API 6.7
part 'inline_query_results_button.dart';
