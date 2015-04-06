//
//  OreoCustomTableViewCell.h
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+LayoutHelper.h"
#import "OreoEdgetLabel.h"

@interface OreoCustomTableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *dateLabel;
@property (strong, nonatomic) UIImageView *userImageView;
@property (strong, nonatomic) OreoEdgetLabel *descriptions;

@end
