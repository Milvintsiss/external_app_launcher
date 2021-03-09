#import "ExternalAppLauncherPlugin.h"
#if __has_include(<external_app_launcher/external_app_launcher-Swift.h>)
#import <external_app_launcher/external_app_launcher-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "external_app_launcher-Swift.h"
#endif

@implementation ExternalAppLauncherPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExternalAppLauncherPlugin registerWithRegistrar:registrar];
}
@end
