
//
//  OreoCustomTableViewCell.m
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoCustomTableViewCell.h"

@implementation OreoCustomTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void) setup
{
    _nameLabel = [UILabel createInView:self];
    _dateLabel = [UILabel createInView:self];
    _descriptions = [UILabel createInView:self];
    _userImageView = [UIImageView createInView:self];
    
    _userImageView.backgroundColor = [UIColor lightGrayColor];
    
    [_nameLabel sizeToFit];
    [_dateLabel sizeToFit];
    [_descriptions sizeToFit];

    _nameLabel.frame = CGRectMake(0, _userImageView.top, CGRectGetWidth(_nameLabel.frame), CGRectGetHeight(_nameLabel.frame));
    [_nameLabel behindInHorizental:_userImageView position:10];
    
    _dateLabel.frame = CGRectMake(0, _userImageView.bottom - CGRectGetHeight(_dateLabel.frame), CGRectGetWidth(_dateLabel.frame), CGRectGetHeight(_dateLabel.frame));
    [_dateLabel behindInHorizental:_userImageView position:10];
    
    _descriptions.frame = CGRectMake(_userImageView.left, 0, CGRectGetWidth(_descriptions.frame), CGRectGetHeight(_descriptions.frame));
    [_descriptions behind:_userImageView position:10];
    


}

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    _userImageView.frame = CGRectMake(0, 0, 140, 140);
    

}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
