#import "PhoenixNativePlugin.h"
#if __has_include(<phoenix_native/phoenix_native-Swift.h>)
#import <phoenix_native/phoenix_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "phoenix_native-Swift.h"
#endif

@implementation PhoenixNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPhoenixNativePlugin registerWithRegistrar:registrar];
}
@end
