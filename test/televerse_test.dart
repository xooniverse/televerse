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
    log("Wasn't able to get '$key' from the environment values.");
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

    setUpAll(() {
      final token = environ('BOT_TOKEN');
      chatId = int.parse(environ('CHAT_ID'));
      testChatId = ChatID(chatId);

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
        final localBot = Bot.local(
          'test_token',
          'http://localhost:8081',
        );
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
        expect(
          () => ID.create(12.5),
          throwsA(isA<TeleverseException>()),
        );
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
      test('Bot.getMe() returns bot information', () async {
        final me = await bot.api.getMe();
        expect(me, isNotNull);
        expect(me.id, greaterThan(0));
        expect(me.isBot, isTrue);
        log('Bot username: @${me.username}');
      });

      test('Context.reply() sends message', () async {
        // This would require a real update with chat information
        // For now, we'll use the direct API
        final message =
            await bot.api.sendMessage(testChatId, 'Test message from context');
        expect(message.text, equals('Test message from context'));
      });

      test('Advanced message with formatting', () async {
        final message = await bot.api.sendMessage(
          testChatId,
          '*Bold text* and _italic text_',
          parseMode: ParseMode.markdownV2,
          disableNotification: true,
        );
        expect(message.entities?.isNotEmpty, isTrue);
      });

      test('Send and delete message', () async {
        final message =
            await bot.api.sendMessage(testChatId, 'Message to delete');
        final deleted =
            await bot.api.deleteMessage(testChatId, message.messageId);
        expect(deleted, isTrue);
      });

      test('Edit message', () async {
        final message = await bot.api.sendMessage(testChatId, 'Original text');
        final edited = await bot.api.editMessageText(
          testChatId,
          message.messageId,
          'Edited text',
        );
        expect(edited.text, equals('Edited text'));
      });
    });

    group('Error Conditions', () {
      test('Invalid token throws exception', () async {
        final invalidBot = Bot<Context>('invalid_token');
        expect(
          () => invalidBot.api.getMe(),
          throwsA(isA<TeleverseException>()),
        );
      });

      test('Invalid chat ID throws exception', () async {
        expect(
          () => bot.api.sendMessage(ChatID(-1), 'Test'),
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
