//
//  OreoEdgetLabel.m
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoEdgetLabel.h"

@implementation OreoEdgetLabel

- (void) drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {0, 5, 0, 5};   // why~~~i don't know!!!
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
