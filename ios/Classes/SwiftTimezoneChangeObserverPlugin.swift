import Flutter
import UIKit

public class SwiftTimezoneChangeObserverPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let eventChannel = FlutterEventChannel(name: "timezone_change_observer", binaryMessenger: registrar.messenger())
    let timezoneChangeStreamHandler = TimezoneChangeStreamHandler()
    eventChannel.setStreamHandler(timezoneChangeStreamHandler)
  }
}