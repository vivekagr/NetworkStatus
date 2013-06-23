//
//  AppDelegate.m
//  NetworkStatus
//
//  Created by Vivek Agarwal on 6/23/13.
//  Copyright (c) 2013 Vivek Agarwal. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize statusItem;
@synthesize menuBar;

- (void)tapPing {
    [SimplePingHelper ping:@"www.google.com"
                    target:self sel:@selector(pingResult:)];
}

- (void)pingResult:(NSNumber*)success {
    if (success.boolValue) {
        NSLog(@"SUCCESS");
//        [[self statusItem] setImage: [NSImage imageNamed:@"Green.tiff"]];
        [[self statusItem] setTitle:@"Up"];
    } else {
        NSLog(@"FAILURE");
//        [[self statusItem] setImage: [NSImage imageNamed:@"Orange.tiff"]];
        [[self statusItem] setTitle:@"Down"];
    }
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [[self statusItem] setMenu:self.menuBar];
    [[self statusItem] setHighlightMode:YES];
    [self keepChecking];
}

- (void)keepChecking {
    [self tapPing];
    [self performSelector:@selector(keepChecking) withObject:nil afterDelay:2.5];
}

@end
