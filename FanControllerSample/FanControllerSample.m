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
        self.frontViewController = [[UIViewController alloc] initWithNibName:@"Main" bundle:nil];
        self.backViewController = [[UIViewController alloc] initWithNibName:@"Settings" bundle:nil];
    }
    return self;
}

- (IBAction)showSettings:(id)sender {
    self.rotationCenter = [sender center];
    self.backViewController = [[UIViewController alloc] initWithNibName:@"Settings" bundle:nil];
    [self switchVisibleViewController];
}

- (IBAction)showSelector:(id)sender{
    self.rotationCenter = [sender center];
    self.backViewController = [[UIViewController alloc] initWithNibName:@"Selector" bundle:nil];
    [self switchVisibleViewController];
}

- (IBAction)showMainContent:(id)sender{
    self.frontViewController = [[UIViewController alloc] initWithNibName:@"Main" bundle:nil];
}

- (IBAction)showAltContent:(id)sender{
    self.frontViewController = [[UIViewController alloc] initWithNibName:@"Alt" bundle:nil];
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
