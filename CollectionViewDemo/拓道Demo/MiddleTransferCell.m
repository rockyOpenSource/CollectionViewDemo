//
//  MiddleTransferCell.m
//  拓道Demo
//
//  Created by qishang on 16/3/15.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "MiddleTransferCell.h"

@implementation MiddleTransferCell

+ (MiddleTransferCell *)middleCell {

    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];

}
- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
