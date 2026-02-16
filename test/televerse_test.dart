import 'dart:developer';
import 'dart:io';
import 'dart:io' as io;
import 'dart:typed_data';
import 'package:televerse/plugins/logging.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

// This will avoid github's builder to throw errors caused by env vars.
String environ(String key) {
  final value = Platform.environment[key];

  if (value == null) {
    print("Wasn't able to get '$key' from the environment values.");
    io.exit(0);
  }

  return value;
}

/// Custom context for testing context extensions
class TestContext extends Context {
  TestContext(super.update, super.api, super.me);

  String get userName => from?.firstName ?? 'Unknown';
}

/// Test plugin for middleware functionality
class TestPlugin<CTX extends Context> extends MiddlewarePlugin<CTX> {
  bool installed = false;
  int executionCount = 0;

  @override
  String get name => 'test-plugin';

  @override
  Middleware<CTX> get middleware => (ctx, next) async {
    executionCount++;
    ctx.set('test_plugin_executed', true);
    await next();
  };

  @override
  void install(Bot<CTX> bot) {
    super.install(bot);
    installed = true;
  }

  @override
  List<String> get dependencies => [];

  @override
  String? get description => null;

  @override
  void uninstall(Bot<CTX> bot) {
    bot.removeNamed(name);
  }

  @override
  String get version => '0.0.1';
}

void main() {
  group('Televerse Framework Tests', () {
    late Bot<Context> bot;
    late Bot<TestContext> customBot;
    late int chatId;
    late ChatID testChatId;
    late int groupId;
    late ChatID testGroupId;
    late int userId;
    late int myUserId;

    setUpAll(() {
      final token = environ('BOT_TOKEN');
      chatId = int.parse(environ('TG_CHAT_ID'));
      testChatId = ChatID(chatId);
      groupId = int.parse(environ('TG_GROUP_ID'));
      testGroupId = ChatID(groupId);
      userId = int.parse(environ('TG_USER_ID'));
      myUserId = chatId; // Same as TG_CHAT_ID

      bot = Bot<Context>(token);
      customBot = Bot<TestContext>(token, contextFactory: TestContext.new);
    });

    group('Bot Initialization', () {
      test('Bot creates with valid token', () {
        expect(bot, isNotNull);
        expect(bot.token, isNotEmpty);
      });

      test('Bot creates with custom context factory', () {
        expect(customBot, isNotNull);
        expect(customBot.token, isNotEmpty);
      });

      test('Bot.local creates with custom base URL', () {
        final localBot = Bot.local('test_token', 'http://localhost:8081');
        expect(localBot, isNotNull);
        expect(localBot.token, equals('test_token'));
      });
    });

    group('Middleware System', () {
      test('Bot.use() adds middleware', () {
        final testBot = Bot<Context>('test_token');

        testBot.use((ctx, next) async {
          await next();
        });

        expect(testBot.middlewareCount, equals(1));
      });

      test('Middleware executes in order', () async {
        final testBot = Bot<Context>('test_token');
        final executionOrder = <int>[];

        testBot.use((ctx, next) async {
          executionOrder.add(1);
          await next();
          executionOrder.add(4);
        });

        testBot.use((ctx, next) async {
          executionOrder.add(2);
          await next();
          executionOrder.add(3);
        });

        // Create a mock update and context for testing
        final mockUpdate = Update(updateId: 1);
        final mockContext = Context(mockUpdate, testBot.api, testBot.me);

        await testBot.handle(mockContext);

        expect(executionOrder, equals([1, 2, 3, 4]));
      });

      test('Middleware can skip next()', () async {
        final testBot = Bot<Context>('test_token');
        bool secondExecuted = false;

        testBot.use((ctx, next) async {
          // Don't call next()
        });

        testBot.use((ctx, next) async {
          secondExecuted = true;
          await next();
        });

        final mockUpdate = Update(updateId: 1);
        final mockContext = Context(mockUpdate, testBot.api, testBot.me);

        await testBot.handle(mockContext);

        expect(secondExecuted, isFalse);
      });
    });

    group('Plugin System', () {
      test('Plugin installation works', () {
        final testBot = Bot<Context>('test_token');
        final plugin = TestPlugin<Context>();

        expect(plugin.installed, isFalse);

        testBot.plugin(plugin);

        expect(plugin.installed, isTrue);
        expect(testBot.plugins.contains(plugin), isTrue);
      });

      test('Plugin middleware executes', () async {
        final testBot = Bot<Context>('test_token');
        final plugin = TestPlugin<Context>();

        testBot.plugin(plugin);

        final mockUpdate = Update(updateId: 1);
        final mockContext = Context(mockUpdate, testBot.api, testBot.me);

        await testBot.handle(mockContext);

        expect(plugin.executionCount, equals(1));
        expect(mockContext.get<bool>('test_plugin_executed'), isTrue);
      });
    });

    group('Filter System', () {
      test('CommandFilter matches commands', () {
        final filter = CommandFilter<Context>('start');
        final mockMessage = Message(
          messageId: 1,
          date: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          chat: Chat(id: 123, type: ChatType.private),
          text: '/start',
          entities: [
            MessageEntity(
              type: MessageEntityType.botCommand,
              offset: 0,
              length: 6,
            ),
          ],
        );
        final mockUpdate = Update(updateId: 1, message: mockMessage);
        final mockContext = Context(mockUpdate, bot.api, bot.me);

        expect(filter.matches(mockContext), isTrue);
      });

      test('TextFilter matches exact text', () {
        final filter = TextFilter<Context>(text: 'hello');
        final mockMessage = Message(
          messageId: 1,
          date: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          chat: Chat(id: 123, type: ChatType.private),
          text: 'hello',
        );
        final mockUpdate = Update(updateId: 1, message: mockMessage);
        final mockContext = Context(mockUpdate, bot.api, bot.me);

        expect(filter.matches(mockContext), isTrue);
      });

      test('RegexFilter matches pattern', () {
        final filter = RegexFilter<Context>(RegExp(r'test\d+'));
        final mockMessage = Message(
          messageId: 1,
          date: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          chat: Chat(id: 123, type: ChatType.private),
          text: 'test123',
        );
        final mockUpdate = Update(updateId: 1, message: mockMessage);
        final mockContext = Context(mockUpdate, bot.api, bot.me);

        expect(filter.matches(mockContext), isTrue);
      });
    });

    group('Context Extensions', () {
      test('Context property system works', () {
        final mockUpdate = Update(updateId: 1);
        final context = Context(mockUpdate, bot.api, bot.me);

        expect(context.has('test_key'), isFalse);

        context.set('test_key', 'test_value');
        expect(context.has('test_key'), isTrue);
        expect(context.get<String>('test_key'), equals('test_value'));

        final removed = context.remove<String>('test_key');
        expect(removed, equals('test_value'));
        expect(context.has('test_key'), isFalse);
      });

      test('Custom context methods work', () {
        final mockMessage = Message(
          messageId: 1,
          date: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          chat: Chat(id: 123, type: ChatType.private),
          from: User(id: 456, isBot: false, firstName: 'TestUser'),
        );
        final mockUpdate = Update(updateId: 1, message: mockMessage);
        final context = TestContext(mockUpdate, customBot.api, customBot.me);

        expect(context.userName, equals('TestUser'));
        expect(context.isPrivateChat, isTrue);
      });
    });

    group('Error Handling', () {
      test('BotError creation and properties', () {
        final originalError = Exception('Test error');
        final stackTrace = StackTrace.current;
        final mockUpdate = Update(updateId: 1);
        final context = Context(mockUpdate, bot.api, bot.me);

        final botError = BotError<Context>(
          error: originalError,
          stackTrace: stackTrace,
          ctx: context,
        );

        expect(botError.error, equals(originalError));
        expect(botError.hasContext, isTrue);
        expect(botError.updateId, equals(1));
        expect(botError.isOfType<Exception>(), isTrue);
        expect(botError.getOriginalErrorAs<Exception>(), equals(originalError));
      });
    });

    group('Handler Registration', () {
      test('command() creates command handler', () {
        final testBot = Bot<Context>('test_token');

        testBot.command('test', (ctx) async {});

        expect(testBot.middlewareCount, greaterThan(0));
      });

      test('hears() with string creates text handler', () {
        final testBot = Bot<Context>('test_token');

        testBot.hears('hello', (ctx) async {});

        expect(testBot.middlewareCount, greaterThan(0));
      });

      test('hears() with RegExp creates regex handler', () {
        final testBot = Bot<Context>('test_token');

        testBot.hears(RegExp(r'test\d+'), (ctx) async {});

        expect(testBot.middlewareCount, greaterThan(0));
      });

      test('on() creates filter query handler', () {
        final testBot = Bot<Context>('test_token');

        testBot.on(bot.filters.text, (ctx) async {});

        expect(testBot.middlewareCount, greaterThan(0));
      });
    });

    group('ID System', () {
      test('ChatID creation and equality', () {
        final id1 = ChatID(123);
        final id2 = ChatID(123);
        final id3 = ChatID(456);

        expect(id1, equals(id2));
        expect(id1, isNot(equals(id3)));
        expect(id1.id, equals(123));
      });

      test('ChannelID creation', () {
        final channelId = ChannelID('@test_channel');
        expect(channelId.id, equals('@test_channel'));
      });

      test('SupergroupID creation', () {
        final supergroupId = SupergroupID('@test_supergroup');
        expect(supergroupId.id, equals('@test_supergroup'));
      });

      test('ID.create() factory method', () {
        final intId = ID.create(123);
        final stringId = ID.create('@channel');
        final numericStringId = ID.create('456');

        expect(intId, isA<ChatID>());
        expect(intId.id, equals(123));

        expect(stringId, isA<ChannelID>());
        expect(stringId.id, equals('@channel'));

        expect(numericStringId, isA<ChatID>());
        expect(numericStringId.id, equals(456));
      });

      test('ID.create() throws on invalid input', () {
        expect(() => ID.create(12.5), throwsA(isA<TeleverseException>()));
      });
    });

    group('InputFile System', () {
      test('InputFile.fromFileId() creates file ID input', () {
        final input = InputFile.fromFileId('test_file_id');
        expect(input.type, equals(InputFileType.fileId));
        expect(input.getValue(), equals('test_file_id'));
      });

      test('InputFile.fromUrl() creates URL input', () {
        final input = InputFile.fromUrl('https://example.com/image.jpg');
        expect(input.type, equals(InputFileType.url));
        expect(input.getValue(), equals('https://example.com/image.jpg'));
      });

      test('InputFile.fromBytes() creates bytes input', () {
        final bytes = Uint8List.fromList([1, 2, 3, 4, 5]);
        final input = InputFile.fromBytes(bytes);
        expect(input.type, equals(InputFileType.bytes));
        expect(input.getBytes(), equals(bytes));
      });

      test('InputFile equality works', () {
        final input1 = InputFile.fromFileId('test_id');
        final input2 = InputFile.fromFileId('test_id');
        final input3 = InputFile.fromFileId('other_id');

        expect(input1, equals(input2));
        expect(input1, isNot(equals(input3)));
      });
    });

    group('Live API Tests', () {
      group('1. Basic API Connectivity', () {
        test('getMe() returns bot information', () async {
          final me = await bot.api.getMe();
          expect(me, isNotNull);
          expect(me.id, greaterThan(0));
          expect(me.isBot, isTrue);
          expect(me.username, isNotNull);
          log('Bot username: @${me.username}');
        });

        test('getWebhookInfo() returns webhook status', () async {
          final webhookInfo = await bot.api.getWebhookInfo();
          expect(webhookInfo, isNotNull);
          expect(webhookInfo.url, isNotNull);
          log('Webhook URL: ${webhookInfo.url}');
        });
      });

      group('2. Update Handling', () {
        test('getUpdates() retrieves updates with parameters', () async {
          final updates = await bot.api.getUpdates(limit: 5, timeout: 1);
          expect(updates, isNotNull);
          expect(updates, isA<List<Update>>());
          log('Retrieved ${updates.length} updates');
        });
      });

      group('3. Message Sending', () {
        test('sendMessage() sends plain text', () async {
          final message = await bot.api.sendMessage(
            testChatId,
            'Test message from Televerse test suite',
          );
          expect(
            message.text,
            equals('Test message from Televerse test suite'),
          );
        });

        test('sendMessage() with formatting and options', () async {
          final message = await bot.api.sendMessage(
            testChatId,
            '*Bold text* and _italic text_',
            parseMode: ParseMode.markdownV2,
            disableNotification: true,
          );
          expect(message.entities?.isNotEmpty, isTrue);
        });

        test('sendMessage() with reply markup', () async {
          final keyboard = InlineKeyboardMarkup(
            inlineKeyboard: [
              [
                InlineKeyboardButton(
                  text: 'Test Button',
                  callbackData: 'test_callback',
                ),
              ],
            ],
          );
          final message = await bot.api.sendMessage(
            testChatId,
            'Message with inline keyboard',
            replyMarkup: keyboard,
          );
          expect(message.replyMarkup, isNotNull);
        });
      });

      group('4. Media Upload (Multipart Handling)', () {
        test('sendPhoto() uploads image from file', () async {
          final photoFile = io.File('test/header.png');
          expect(
            photoFile.existsSync(),
            isTrue,
            reason: 'Test image header.png not found',
          );

          final photoBytes = await photoFile.readAsBytes();
          final photo = InputFile.fromBytes(photoBytes, name: 'header.png');

          final message = await bot.api.sendPhoto(
            testChatId,
            photo,
            caption: 'Test photo upload **with caption**',
            parseMode: ParseMode.markdownV2,
          );
          expect(message.photo, isNotNull);
          expect(message.caption, equals('Test photo upload with caption'));
        });

        test('sendDocument() uploads document from file', () async {
          final docFile = io.File('test/og.png');
          expect(
            docFile.existsSync(),
            isTrue,
            reason: 'Test document og.png not found',
          );

          final docBytes = await docFile.readAsBytes();
          final document = InputFile.fromBytes(docBytes, name: 'og.png');

          final message = await bot.api.sendDocument(
            testChatId,
            document,
            caption: 'Test document upload',
          );
          expect(message.document, isNotNull);
          expect(message.document?.fileName, equals('og.png'));
        });

        test('sendMediaGroup() uploads multiple media items', () async {
          final photo1File = io.File('test/header.png');
          final photo2File = io.File('test/og.png');

          final photo1Bytes = await photo1File.readAsBytes();
          final photo2Bytes = await photo2File.readAsBytes();

          final media = [
            InputMedia.photo(
              media: InputFile.fromBytes(photo1Bytes, name: 'header.png'),
              caption: 'First photo',
            ),
            InputMedia.photo(
              media: InputFile.fromBytes(photo2Bytes, name: 'og.png'),
              caption: 'Second photo',
            ),
          ];

          final messages = await bot.api.sendMediaGroup(testChatId, media);
          expect(messages, isNotNull);
          expect(messages.length, equals(2));
          expect(messages[0].photo, isNotNull);
          expect(messages[1].photo, isNotNull);
        });
      });

      group('5. Message Editing', () {
        test('editMessageText() modifies message content', () async {
          final message = await bot.api.sendMessage(
            testChatId,
            'Original text',
          );
          final edited = await bot.api.editMessageText(
            testChatId,
            message.messageId,
            'Edited text',
          );
          expect(edited.text, equals('Edited text'));
        });

        test('editMessageText() with parse mode', () async {
          final message = await bot.api.sendMessage(testChatId, 'Text to edit');
          final edited = await bot.api.editMessageText(
            testChatId,
            message.messageId,
            '*Bold edited text*',
            parseMode: ParseMode.markdownV2,
          );
          expect(edited.text, equals('Bold edited text'));
          expect(edited.entities?.isNotEmpty, isTrue);
        });
      });

      group('6. Message Operations', () {
        test('forwardMessage() forwards message between chats', () async {
          final originalMessage = await bot.api.sendMessage(
            testChatId,
            'Message to forward',
          );

          final forwarded = await bot.api.forwardMessage(
            testChatId,
            testChatId,
            originalMessage.messageId,
          );
          expect(forwarded, isNotNull);
          expect(forwarded.forwardOrigin, isNotNull);
        });

        test('copyMessage() copies message content', () async {
          final originalMessage = await bot.api.sendMessage(
            testChatId,
            'Message to copy',
          );

          final messageId = await bot.api.copyMessage(
            testChatId,
            testChatId,
            originalMessage.messageId,
          );
          expect(messageId, isNotNull);
          expect(messageId.messageId, greaterThan(0));
        });

        test('deleteMessage() removes message', () async {
          final message = await bot.api.sendMessage(
            testChatId,
            'Message to delete',
          );
          final deleted = await bot.api.deleteMessage(
            testChatId,
            message.messageId,
          );
          expect(deleted, isTrue);
        });
      });

      group('7. Chat Administration', () {
        test(
          'banChatMember() and unbanChatMember() manage user access',
          () async {
            // Ban the test user
            final banned = await bot.api.banChatMember(testGroupId, userId);
            expect(banned, isTrue);

            // Wait a moment before unbanning
            await Future.delayed(Duration(milliseconds: 500));

            // Unban the test user
            final unbanned = await bot.api.unbanChatMember(testGroupId, userId);
            expect(unbanned, isTrue);
          },
        );

        test('restrictChatMember() sets user permissions', () async {
          final permissions = ChatPermissions(
            canSendMessages: true,
            canSendPhotos: false,
            canSendVideos: false,
          );

          final restricted = await bot.api.restrictChatMember(
            testGroupId,
            userId,
            permissions,
          );
          expect(restricted, isTrue);

          // Restore full permissions
          final fullPermissions = ChatPermissions(
            canSendMessages: true,
            canSendPhotos: true,
            canSendVideos: true,
            canSendDocuments: true,
            canSendAudios: true,
          );
          await bot.api.restrictChatMember(
            testGroupId,
            userId,
            fullPermissions,
          );
        });
      });

      group('8. Chat Information Retrieval', () {
        test('getChat() retrieves chat details', () async {
          final chat = await bot.api.getChat(testGroupId);
          expect(chat, isNotNull);
          expect(chat.id, equals(groupId));
          expect(chat.type, isNotNull);
          log('Chat type: ${chat.type}');
        });

        test('getChatMember() retrieves member information', () async {
          final member = await bot.api.getChatMember(testGroupId, myUserId);
          expect(member, isNotNull);
          expect(member.user, isNotNull);
          expect(member.user.id, equals(myUserId));
          expect(member.status, isNotNull);
          log('Member status: ${member.status}');
        });

        test('getChatAdministrators() lists admins', () async {
          final admins = await bot.api.getChatAdministrators(testGroupId);
          expect(admins, isNotNull);
          expect(admins, isA<List<ChatMember>>());
          expect(admins.isNotEmpty, isTrue);
          log('Found ${admins.length} administrators');
        });

        test('getChatMemberCount() returns member count', () async {
          final count = await bot.api.getChatMemberCount(testGroupId);
          expect(count, greaterThan(0));
          log('Chat has $count members');
        });
      });

      group('9. Bot Configuration', () {
        test(
          'setMyCommands() and getMyCommands() manage bot commands',
          () async {
            final commands = [
              BotCommand(command: 'start', description: 'Start the bot'),
              BotCommand(command: 'help', description: 'Get help'),
              BotCommand(command: 'settings', description: 'Bot settings'),
            ];

            // Set commands
            final set = await bot.api.setMyCommands(commands);
            expect(set, isTrue);

            // Verify commands were set
            final retrievedCommands = await bot.api.getMyCommands();
            expect(retrievedCommands, isNotNull);
            expect(retrievedCommands.length, equals(3));
            expect(retrievedCommands[0].command, equals('start'));
            expect(retrievedCommands[1].command, equals('help'));
            expect(retrievedCommands[2].command, equals('settings'));
          },
        );

        test('deleteMyCommands() removes bot commands', () async {
          // First set some commands
          final commands = [
            BotCommand(command: 'test', description: 'Test command'),
          ];
          await bot.api.setMyCommands(commands);

          // Delete commands
          final deleted = await bot.api.deleteMyCommands();
          expect(deleted, isTrue);

          // Verify commands were deleted
          final retrievedCommands = await bot.api.getMyCommands();
          expect(retrievedCommands.isEmpty, isTrue);
        });

        test(
          'setMyDescription() and getMyDescription() manage bot description',
          () async {
            final testDescription = 'Televerse Test Bot - Automated Testing';

            // Set description
            final set = await bot.api.setMyDescription(
              description: testDescription,
            );
            expect(set, isTrue);

            // Get description
            final description = await bot.api.getMyDescription();
            expect(description, isNotNull);
            expect(description.description, equals(testDescription));
          },
        );
      });

      group('10. File Retrieval', () {
        test(
          'getFile() retrieves file information and constructs URL',
          () async {
            // First send a photo to get a file_id
            final photoFile = io.File('test/header.png');
            final photoBytes = await photoFile.readAsBytes();
            final photo = InputFile.fromBytes(photoBytes, name: 'header.png');

            final message = await bot.api.sendPhoto(testChatId, photo);
            expect(message.photo, isNotNull);
            expect(message.photo!.isNotEmpty, isTrue);

            final fileId = message.photo!.last.fileId;

            // Get file information
            final file = await bot.api.getFile(fileId);
            expect(file, isNotNull);
            expect(file.fileId, equals(fileId));
            expect(file.filePath, isNotNull);
            log('File path: ${file.filePath}');
            log('File size: ${file.fileSize} bytes');
          },
        );
      });

      group('11. Webhook Management', () {
        test(
          'setWebhook() and deleteWebhook() manage webhook configuration',
          () async {
            // Set webhook
            final webhookUrl = 'https://example.com/webhook';
            final set = await bot.api.setWebhook(webhookUrl);
            expect(set, isTrue);

            // Verify webhook was set
            final webhookInfo = await bot.api.getWebhookInfo();
            expect(webhookInfo.url, equals(webhookUrl));

            // Delete webhook
            final deleted = await bot.api.deleteWebhook();
            expect(deleted, isTrue);

            // Verify webhook was deleted
            final finalInfo = await bot.api.getWebhookInfo();
            expect(finalInfo.url, isEmpty);
          },
        );
      });

      group('12. Location and Venue', () {
        test('sendLocation() sends geographic coordinates', () async {
          final message = await bot.api.sendLocation(
            testChatId,
            37.7749,
            -122.4194,
          );
          expect(message.location, isNotNull);
          expect(message.location!.latitude, closeTo(37.7749, 0.0001));

          expect(message.location!.longitude, closeTo(-122.4194, 0.0001));
        });

        test('sendVenue() sends location with venue details', () async {
          final message = await bot.api.sendVenue(
            testChatId,
            37.7749,
            -122.4194,
            'Test Venue',
            'San Francisco, CA',
          );
          expect(message.venue, isNotNull);
          expect(message.venue!.title, equals('Test Venue'));
          expect(message.venue!.address, equals('San Francisco, CA'));
        });
      });
    });

    group('Error Handling', () {
      test('Invalid token throws TeleverseException', () async {
        final invalidBot = Bot<Context>('invalid_token');
        expect(
          () => invalidBot.api.getMe(),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Invalid chat ID throws exception', () async {
        expect(
          () => bot.api.sendMessage(ChatID(-999999999), 'Test'),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Invalid file_id throws exception', () async {
        expect(
          () => bot.api.getFile('invalid_file_id'),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Invalid message ID for editing throws exception', () async {
        expect(
          () => bot.api.editMessageText(testChatId, 999999999, 'New text'),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Invalid user ID for ban throws exception', () async {
        expect(
          () => bot.api.banChatMember(testGroupId, -1),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Attempting to ban bot owner throws exception', () async {
        // Trying to ban yourself (the bot owner) should fail
        expect(
          () => bot.api.banChatMember(testGroupId, myUserId),
          throwsA(isA<TeleverseException>()),
        );
      });
    });

    group('Transformer System', () {
      test('Request transformer can modify requests', () async {
        final testBot = Bot<Context>('test_token');

        testBot.plugin(LoggingPlugin());

        // This would require testing the actual API call
        // For now, we verify the transformer was added
        expect(testBot.api.transformers.length, greaterThan(0));
      });
    });

    group('Fetcher System', () {
      test('LongPollingFetcher creates successfully', () {
        final fetcher = LongPollingFetcher(bot.api);
        expect(fetcher, isNotNull);
        expect(fetcher.isRunning, isFalse);
      });

      test('WebhookFetcher creates successfully', () {
        final fetcher = WebhookFetcher();
        expect(fetcher, isNotNull);
        expect(fetcher.isRunning, isFalse);
      });
    });
  });
}
