//
//  UIView+LayoutHelper.m
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import "UIView+LayoutHelper.h"

@implementation UIView (LayoutHelper)

+(id)createInView:(UIView*)view
{
    UIView *newView = [[self alloc] initWithFrame:CGRectZero];
    [view addSubview:newView];
    return newView;
}


// Layout
-(void)behind:(UIView*)behindView
{
    [self behind:behindView position:0];
}

-(void)behindInHorizental:(UIView*)behindView
{
    [self behindInHorizental:behindView position:0];
}

-(void)behind:(UIView*)behindView position:(CGFloat)position;
{
    CGFloat centerPointY = CGRectGetMaxY(behindView.frame) + 0.5*CGRectGetHeight(self.frame) + position;
    self.center = CGPointMake(self.center.x, centerPointY);
}
-(void)behindInHorizental:(UIView*)behindView position:(CGFloat)position
{
    CGFloat centerPointX = CGRectGetMaxX(behindView.frame) + 0.5*CGRectGetWidth(self.frame) + position;
    self.center = CGPointMake(centerPointX, self.center.y);
}



@end
