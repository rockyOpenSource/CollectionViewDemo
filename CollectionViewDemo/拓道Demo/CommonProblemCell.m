//
//  CommonProblemCell.m
//  拓道Demo
//
//  Created by qishang on 16/3/15.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "CommonProblemCell.h"

@implementation CommonProblemCell

- (void)setQuestion:(NSString *)question answer:(NSString *)answer {
    self.questionLbale.text = question;
    self.answerLabel.text = answer;
    if (!self.selected) {
        self.indicationImg.highlighted = NO;
        self.answerLabel.hidden = YES;
    } else {
        self.indicationImg.highlighted = YES;
        self.answerLabel.hidden = NO;
    }

}

+ (CommonProblemCell *)commonProCell {

    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
