//
//  UIView+LayoutHelper.h
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Frame.h"

@interface UIView (LayoutHelper)

+(id)createInView:(UIView*)view;


// Layout

-(void)behind:(UIView*)behindView;
-(void)behindInHorizental:(UIView*)behindView;
-(void)behind:(UIView*)behindView position:(CGFloat)position;
-(void)behindInHorizental:(UIView*)behindView position:(CGFloat)position;



@end
