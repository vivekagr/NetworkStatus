//
//  AppDelegate.h
//  NetworkStatus
//
//  Created by Vivek Agarwal on 6/23/13.
//  Copyright (c) 2013 Vivek Agarwal. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SimplePingHelper.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (strong) NSStatusItem *statusItem;

@property (weak) IBOutlet NSMenu *menuBar;

@end
