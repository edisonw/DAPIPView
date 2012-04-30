//
//  AppDelegate.h
//  DAPIPViewExample
//
//  Created by Daniel Amitay on 4/15/12.
//  Copyright (c) 2012 Daniel Amitay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DAPIPView.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DAPIPView *pipView;

@end
