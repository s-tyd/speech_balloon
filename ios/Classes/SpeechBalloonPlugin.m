#import "SpeechBalloonPlugin.h"
#if __has_include(<speech_balloon/speech_balloon-Swift.h>)
#import <speech_balloon/speech_balloon-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "speech_balloon-Swift.h"
#endif

@implementation SpeechBalloonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSpeechBalloonPlugin registerWithRegistrar:registrar];
}
@end
