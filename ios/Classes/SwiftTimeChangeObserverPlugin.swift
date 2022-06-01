import Flutter
import UIKit

public class SwiftTimeChangeObserverPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let eventChannel = FlutterEventChannel(name: "time_change_observer", binaryMessenger: registrar.messenger())
    let timeChangeStreamHandler = TimeChangeStreamHandler()
    eventChannel.setStreamHandler(timeChangeStreamHandler)
  }
}