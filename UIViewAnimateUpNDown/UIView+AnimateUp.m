//
//  UIView+AnimateUp.m
//  The Trendie App
//
//  Created by Subhajit Halder on 22/02/16.
//  Copyright © 2016 Subhajit Halder. All rights reserved.
//

#import "UIView+AnimateUp.h"

@implementation UIView (AnimateUp)

- (void)animateUpToTargetYOrigin:(CGFloat)yValue
{
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidChangeFrameNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        CGFloat yOrigin = 0;
        CGFloat keyboardOr = [[[note userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].origin.y;
        if (yValue > keyboardOr) {
            yOrigin = yValue - keyboardOr;
        }
        [UIView animateWithDuration:0.3f animations:^{

                self.bounds = CGRectMake(self.frame.origin.x, yOrigin, self.frame.size.width, self.frame.size.height);

            
        }];

       
}];
    
    
    
}
@end
