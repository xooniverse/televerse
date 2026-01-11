import 'package:televerse/televerse.dart';
import 'package:televerse/telegram.dart';
import 'dart:io';
import 'package:test/test.dart';

void main() {
  group('Handler Groups', () {
    test('Can create a handler group', () {
      final bot = Composer<Context>();
      final group = bot.group('test');

      expect(group, isA<Composer<Context>>());
      // Composer now stores middleware in _middleware
      // We can verify that bot has 1 middleware (the group)
      expect(bot.middlewareCount, equals(1));
    });

    test('Middleware in group executes', () async {
      final bot = Composer<Context>();
      final group = bot.group('test');

      bool groupMiddlewareExecuted = false;
      group.use((ctx, next) async {
        groupMiddlewareExecuted = true;
        await next();
      });

      final mockUpdate = Update(updateId: 1);
      final ctx = createFakeContext(mockUpdate);

      await bot.handle(ctx);

      expect(groupMiddlewareExecuted, isTrue);
    });

    test('Handler in group executes', () async {
      final bot = Composer<Context>();
      final group = bot.group('test');

      bool handlerExecuted = false;
      group.use((ctx, next) async {
        handlerExecuted = true;
      });

      final mockUpdate = Update(updateId: 1);
      final ctx = createFakeContext(mockUpdate);

      await bot.handle(ctx);

      expect(handlerExecuted, isTrue);
    });

    test('Middleware execution order with groups', () async {
      final bot = Composer<Context>();

      final executionOrder = <String>[];

      bot.use((ctx, next) async {
        executionOrder.add('bot-before');
        await next();
        executionOrder.add('bot-after');
      });

      final group = bot.group('test');

      group.use((ctx, next) async {
        executionOrder.add('group-before');
        await next();
        executionOrder.add('group-after');
      });

      bot.use((ctx, next) async {
        executionOrder.add('bot-last');
      });

      final mockUpdate = Update(updateId: 1);
      final ctx = createFakeContext(mockUpdate);

      await bot.handle(ctx);

      // Expected:
      // bot-before
      // group-before
      // bot-last (via group's next)
      // group-after
      // bot-after

      expect(
        executionOrder,
        equals([
          'bot-before',
          'group-before',
          'bot-last',
          'group-after',
          'bot-after',
        ]),
      );
    });

    test('Scoped handlers work', () async {
      // Logic: A group doesn't inherently filter unless we wrap it in filter
      // But we can check if we can add handlers to group and they work
    });

    test('Handler Group Convenience Methods', () async {
      final bot = Bot<Context>(
        Platform.environment["BOT_TOKEN"] ?? '12345:fake_token',
      );
      final group = bot.group();

      bool commandHandled = false;
      bool textHandled = false;

      group.command('start', (ctx) {
        commandHandled = true;
      });

      group.onText((ctx) {
        textHandled = true;
      });

      final commandUpdate = Update(
        updateId: 1,
        message: Message(
          messageId: 1,
          date: 1234567890,
          chat: Chat(id: 123, type: ChatType.private),
          text: '/start',
          entities: [
            MessageEntity(
              type: MessageEntityType.botCommand,
              offset: 0,
              length: 6,
            ),
          ],
        ),
      );

      final textUpdate = Update(
        updateId: 2,
        message: Message(
          messageId: 2,
          date: 1234567890,
          chat: Chat(id: 123, type: ChatType.private),
          text: 'hello',
        ),
      );

      // Create fake contexts manually if needed or let bot handle it?
      // Bot.handle takes Update.
      // But we need to make sure Bot uses our FakeRawAPI if we want to avoid network.
      // In the test setup above, we used Bot<Context> constructor with token.
      // This uses default RawAPI which might try to connect?
      // No, handle(Update) doesn't use API unless we call methods.
      // But let's verify.

      await bot.handle(createFakeContext(commandUpdate));
      await bot.handle(createFakeContext(textUpdate));

      expect(
        commandHandled,
        isTrue,
        reason: 'Command handler in group should be called',
      );
      expect(
        textHandled,
        isTrue,
        reason: 'Text handler in group should be called',
      );
    });

    test('Scoped Filter', () async {
      final bot = Bot<Context>(
        Platform.environment["BOT_TOKEN"] ?? '12345:fake_token',
      );

      // Let's simulate filtering by Chat ID for simplicity/clarity.
      final specialScope = bot.filter((ctx) => ctx.chat?.id == 999);
      bool specialHandled = false;
      specialScope.command('special', (ctx) {
        specialHandled = true;
      });

      // Update 1: Matches filter (id 999) and command (/special)
      final update1 = Update(
        updateId: 1,
        message: Message(
          messageId: 1,
          date: 0,
          chat: Chat(id: 999, type: ChatType.private),
          text: '/special',
          entities: [
            MessageEntity(
              type: MessageEntityType.botCommand,
              offset: 0,
              length: 8,
            ),
          ],
        ),
      );

      // Update 2: Does NOT match filter (id 123) but has command (/special)
      final update2 = Update(
        updateId: 2,
        message: Message(
          messageId: 2,
          date: 0,
          chat: Chat(id: 123, type: ChatType.private),
          text: '/special',
          entities: [
            MessageEntity(
              type: MessageEntityType.botCommand,
              offset: 0,
              length: 8,
            ),
          ],
        ),
      );

      await bot.handle(createFakeContext(update1));
      expect(
        specialHandled,
        isTrue,
        reason: 'Special scope should handle matching update',
      );

      specialHandled = false;
      await bot.handle(createFakeContext(update2));
      expect(
        specialHandled,
        isFalse,
        reason: 'Special scope should SKIP non-matching update',
      );
    });
  });
}

Context createFakeContext(Update update) {
  return Context(update, _FakeRawAPI(), const BotInfo());
}

class _FakeRawAPI extends RawAPI {
  _FakeRawAPI() : super('fake_token');
}
