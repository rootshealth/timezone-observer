#import "TimezoneChangeObserverPlugin.h"
#if __has_include(<timezone_change_observer/timezone_change_observer-Swift.h>)
#import <timezone_change_observer/timezone_change_observer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "timezone_change_observer-Swift.h"
#endif

@implementation TimezoneChangeObserverPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTimezoneChangeObserverPlugin registerWithRegistrar:registrar];
}
@end
