//
//  CommonProblemCell.h
//  拓道Demo
//
//  Created by qishang on 16/3/15.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonProblemCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *questionLbale;
@property (strong, nonatomic) IBOutlet UIImageView *indicationImg;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

- (void)setQuestion:(NSString *)question answer:(NSString *)answer;

+ (CommonProblemCell *)commonProCell;

@end
