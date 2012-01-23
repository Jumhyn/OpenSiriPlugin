#import <Foundation/Foundation.h>
#import <objc/runtime.h>

extern "C" void* OSCommand() {
    return [NSArray arrayWithObjects:@"toggle wi-fi", @"toggle wifi", nil];
}

extern "C" void OSAction() {
    [[objc_getClass("SBAssistantController") sharedInstance] dismissAssistant];
    [[objc_getClass("SBWiFiManager") sharedInstance] setWiFiEnabled:![[objc_getClass("SBWiFiManager") sharedInstance] wiFiEnabled]];
}

extern "C" void OSActionString(NSString *actionString) {
    OSAction();
}

int main(int argc, char **argv, char **envp) {
	return 0;
}

