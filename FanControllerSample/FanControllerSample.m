//
//  AppDelegate.m
//  FanSample
//
//  Created by Nicolas on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "BIOFanController.h"

//
// The Root VC, subclass of BIOFanController
@interface RootVC : BIOFanController @end
@implementation RootVC
{
    IBOutlet UIButton *_infoButton;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.frontViewController = [[UIViewController alloc] initWithNibName:@"Front1" bundle:nil];
        self.backViewController = [[UIViewController alloc] initWithNibName:@"Back1" bundle:nil];
    }
    return self;
}

- (CGPoint) rotationCenter
{
    return _infoButton.center;
}

- (IBAction)showBack1:(id)sender {
    self.backViewController = [[UIViewController alloc] initWithNibName:@"Back1" bundle:nil];
}

- (IBAction)showBack2:(id)sender
{
    self.backViewController = [[UIViewController alloc] initWithNibName:@"Back2" bundle:nil];
}

- (IBAction)showFront1:(id)sender
{
    self.frontViewController = [[UIViewController alloc] initWithNibName:@"Front1" bundle:nil];
}

- (IBAction)showFront2:(id)sender
{
    self.frontViewController = [[UIViewController alloc] initWithNibName:@"Front2" bundle:nil];
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
