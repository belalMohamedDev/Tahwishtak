import 'dart:async';

class ActivityEvents {
  static final ActivityEvents _instance = ActivityEvents._internal();
  factory ActivityEvents() => _instance;
  ActivityEvents._internal();

  final StreamController<String> _controller = StreamController.broadcast();

  Stream<String> get stream => _controller.stream;

  void dispatch(String event) {
    _controller.add(event);
  }
}

