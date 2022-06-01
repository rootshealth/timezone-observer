import 'dart:async';

import 'package:flutter/services.dart';

class TimeChangeObserver {
  static const EventChannel _eventChannel = EventChannel('time_change_observer');

  static Stream<bool> get init {
    return _eventChannel.receiveBroadcastStream().cast();
  }
}
