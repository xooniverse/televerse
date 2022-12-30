/// ** GAMES **
///
/// Your bot can offer users HTML5 games to play solo or to compete against each
/// other in groups and one-on-one chats. Create games via @BotFather using the
/// /newgame command. Please note that this kind of power requires responsibility:
/// you will need to accept the terms for each game that your bots will be offering.
///
/// - Games are a new type of content on Telegram, represented by the Game and
/// InlineQueryResultGame objects.
///
/// - Once you've created a game via BotFather, you can send games to chats as
/// regular messages using the sendGame method, or use inline mode with [InlineQueryResultGame](https://core.telegram.org/bots/api#inlinequeryresultgame).
///
/// - If you send the game message without any buttons, it will automatically
///  have a 'Play GameName' button. When this button is pressed, your bot gets
/// a CallbackQuery with the game_short_name of the requested game. You provide
/// the correct URL for this particular user and the app opens the game in the
/// in-app browser.
///
/// - You can manually add multiple buttons to your game message. Please note
/// that the first button in the first row must always launch the game, using
/// the field callback_game in [InlineKeyboardButton](https://core.telegram.org/bots/api#inlinekeyboardbutton).
/// You can add extra buttons according to taste: e.g., for a description of the
/// rules, or to open thegame's official community.
///
/// - To make your game more attractive, you can upload a GIF animation that
///  demostrates the game to the users via BotFather (see Lumberjack for example).
///
/// - A game message will also display high scores for the current chat. Use
/// setGameScore to post high scores to the chat with the game, add the
/// edit_message parameter to automatically update the message with the current
/// scoreboard.
///
/// - Use getGameHighScores to get data for in-game high score tables.
///
/// - You can also add an extra sharing button for users to share their best
/// score to different chats.
///
/// - For examples of what can be done using this new stuff, check the @gamebot
/// and @gamee bots.
library games;

import 'animation.dart';
import 'message_entity.dart';
import 'photo_size.dart';
import 'user.dart';

part 'game.dart';
part 'callback_game.dart';
part 'game_high_score.dart';
