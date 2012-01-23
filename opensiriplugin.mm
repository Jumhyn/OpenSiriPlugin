#import <Foundation/Foundation.h>
#import <objc/runtime.h>

extern "C" void* OSCommand() {
    return [NSArray arrayWithObjects:@"toggle wi-fi", @"toggle wifi", nil];
}

extern "C" void OSAction() {
    [[objc_getClass("SBAssistantController") sharedInstance] dismissAssistant];
    [[objc_getClass("SBWiFiManager") sharedInstance] setWiFiEnabled:![[objc_getClass("SBWiFiManager") sharedInstance] wiFiEnabled]];
}

int main(int argc, char **argv, char **envp) {
	return 0;
}



// vim:ft=objc
