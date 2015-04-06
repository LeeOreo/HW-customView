//
//  OreoTableViewCell.h
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OreoEdgetLabel.h"

@interface OreoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet OreoEdgetLabel *descriptions;


@end
