//
//  AppDelegate.m
//  FanSample
//
//  Created by Nicolas on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "FanDeckViewController.h"

//
// The Root VC, subclass of FanDeckViewController
@interface RootVC : FanDeckViewController @end
@implementation RootVC
{
    IBOutlet UIButton *_infoButton;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.frontViewController = [[UIViewController alloc] initWithNibName:@"Main" bundle:nil];
        self.backViewController = [[UIViewController alloc] initWithNibName:@"Settings" bundle:nil];
    }
    return self;
}

- (CGPoint) rotationCenter
{
    return _infoButton.center;
}

- (BOOL) prefersStatusBarHidden
{
    return YES;
}

@end




//
// AppDelegate and Main
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [RootVC new];
    [self.window makeKeyAndVisible];
    return YES;
}
@end
int main(int argc, char *argv[]){
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
