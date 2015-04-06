//
//  OreoTableViewCell.m
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoTableViewCell.h"

@implementation OreoTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    _descriptions.layer.borderColor = [UIColor blackColor].CGColor;
    _descriptions.layer.borderWidth = 2;
}

- (void) layoutSubviews
{
    [super layoutSubviews];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
