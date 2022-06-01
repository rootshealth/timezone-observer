#import "TimeChangeObserverPlugin.h"
#if __has_include(<time_change_observer/time_change_observer-Swift.h>)
#import <time_change_observer/time_change_observer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "time_change_observer-Swift.h"
#endif

@implementation TimeChangeObserverPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTimeChangeObserverPlugin registerWithRegistrar:registrar];
}
@end
