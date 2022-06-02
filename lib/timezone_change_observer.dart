import 'dart:async';

import 'package:flutter/services.dart';

class TimezoneChangeObserver {
  static const EventChannel _eventChannel = EventChannel('timezone_change_observer');

  static Stream<bool> get init => _eventChannel.receiveBroadcastStream().cast();
}
