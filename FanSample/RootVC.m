//
//  RootVC.m
//  FanSample
//
//  Created by Nicolas on 04/07/13.
//  Copyright (c) 2013 Nicolas Bouilleaud. All rights reserved.
//

#import "RootVC.h"

@interface RootVC ()

@end

@implementation RootVC

- (CGPoint) rotationCenter
{
    return self.infoButton.center;
}

- (IBAction)rotate:(id)sender
{
    [self switchVisibleViewController];
}

@end
