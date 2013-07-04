//
//  RootVC.m
//  FanSample
//
//  Created by Nicolas on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "RootVC.h"

@implementation RootVC
{
    IBOutlet UIButton *infoButton;
}

- (CGPoint) rotationCenter
{
    return infoButton.center;
}

@end
