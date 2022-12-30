part of televerse;

class Event {
  final Televerse televerse;
  final Update update;
  bool sync;

  Event(this.televerse, this.update, {this.sync = false});
}
