//
//  BIOFanController.h
//  BIOFanController
//
//  Created by Nicolas Bouilleaud on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIOFanController : UIViewController

@property (nonatomic) IBOutlet UIViewController * frontViewController;
@property (nonatomic) IBOutlet UIViewController * backViewController;

@property (nonatomic) CGPoint rotationCenter; // defaults to {0,0}

@property (readonly) UIViewController * visibleViewController;

- (IBAction) switchVisibleViewController;
- (IBAction) showBackViewController;
- (IBAction) showFrontViewController;

- (void) switchVisibleViewControllerAnimated:(BOOL)animated completion:(void(^)(void)) completion;
- (void) showBackViewControllerAnimated:(BOOL)animated completion:(void(^)(void)) completion;
- (void) showFrontViewControllerAnimated:(BOOL)animated completion:(void(^)(void)) completion;
@end


@interface UIViewController (FanContainedViewController)
- (BOOL) isVisibleViewController;// returns YES if the receiver is the current visibleVC
@end
