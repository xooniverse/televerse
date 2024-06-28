part of '../../../televerse.dart';

/// Context Constructor is a function that takes two inputs and then creates a
typedef ContextConstructor<CTX extends Context> = FutureOr<CTX> Function({
  required RawAPI api,
  required User me,
  required Update update,
});
