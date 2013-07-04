//
//  AppDelegate.m
//  FanSample
//
//  Created by Nicolas on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "AppDelegate.h"
#import "RootVC.h"

@interface ContentVC : UIViewController @end
@implementation ContentVC @end

@interface SettingsVC : UIViewController @end
@implementation SettingsVC @end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    
    RootVC * rootVC = [RootVC new];
    rootVC.frontViewController = [ContentVC new];
    rootVC.backViewController = [SettingsVC new];
    
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
