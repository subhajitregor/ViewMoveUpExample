//
//  UIView+AnimateUp.h
//  The Trendie App
//
//  Created by Lucime Technologies on 22/02/16.
//  Copyright © 2016 Tanmoy Khanra. All rights reserved.
//



// -------------------------- This category helps in keeping a point in y Origin of a view just above the keyboard
#import <UIKit/UIKit.h>

@interface UIView (AnimateUp)
// ---------------------------- Set anmateUp: YES targetYOrigin: the point upto where the view will be moved just above the keyboard
- (void)animateUpToTargetYOrigin:(CGFloat)yValue;

@end
