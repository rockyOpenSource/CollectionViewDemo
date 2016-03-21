//
//  MyClaimseCollectionCell.m
//  拓道Demo
//
//  Created by qishang on 16/3/15.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "MyClaimseCollectionCell.h"
#import "MiddleTransferCell.h"
#import "TransferMoneyCell.h"
#import "CommonProblemCell.h"
@interface MyClaimseCollectionCell ()

@property (nonatomic, strong) NSArray *questionArr;
@property (nonatomic, strong) NSArray *answerArr;
@property (nonatomic, strong) NSMutableArray *heightArr;

@end
@implementation MyClaimseCollectionCell

- (NSArray *)questionArr {
    if (!_questionArr) {
        _questionArr = @[@"什么是债权转让",@"什么是债权价值", @"债权如何转让",@"那些符合转让条件",@"购买金额和本金的不同",@"债权转让收益如何计算",@"债权转让如何收费", @"债权的购买"];
    }
    return _questionArr;
}
- (NSArray *)answerArr {
    if (!_answerArr) {
        _answerArr = @[@"答：充值后未进行投标操作，直接申请提现的资金。Ps：新充值未投标过的资金提现需支付0.5%的手续费少时诵诗书是是是是是是是是是是是是是", @"答：日常的积分的获取方式可通过APP(PC端,H5)签到，投标，推广推荐人，以及一些平台活动，可获得积分，积分可兑换加息券。后续还将提供更多功能，敬请关注!", @"答：平台奖励也是按年息计算的，在满标复审后进行返还。", @"答：加息券是算在年化利率里面的，不算在平台奖励内。", @"答：用户可勾选余额全投，系统自动识别可用金额无需100元起投，即可进行满标操作。", @"答：不能修改。为安全考虑，绑定快捷支付银行卡后，只能使用该卡作为提现卡。", @"答:您好，标的到期后，当天垫付。", @"答：满标复审后开始计息。还款日期为：计息日开始算起至回款周期截止日为止。",@"答：满标复审后开始计息。还款日期为：计息日开始算起至回款周期截止日为止。"];
    }
    return _answerArr;
}

- (NSMutableArray *)heightArr {
    if (!_heightArr) {
        _heightArr = [@[@(45), @(45), @(45), @(45), @(45), @(45), @(45),@(45)] mutableCopy];
    }
    return _heightArr;
}

- (void)awakeFromNib {

    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section == 0) {
        return 1;
    } else if (section == 1) {
        return 2;
    } else {
    
        return 8;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 5;

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 2) {
        UILabel *headerView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
        headerView.text = @"常见问题";
        headerView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        return headerView;

    }
    return nil;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    if (section == 2) {
        return 30;
    }
    
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.section == 0) {
        return 121.5;
    } else if (indexPath.section == 1) {
        return 45;
    } else {
        return [self.heightArr[indexPath.row] floatValue];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID_1 = @"MiddleTransCell";
    static NSString *ID_2 = @"commomProCell";
    if (indexPath.section == 0) {
        
        TransferMoneyCell *transferMoneyCell = [TransferMoneyCell transMoneyCell];
        return transferMoneyCell;
    } else if (indexPath.section == 1) {
    
        MiddleTransferCell *cell = [tableView dequeueReusableCellWithIdentifier:ID_1];
        if (cell == nil) {
            cell = [MiddleTransferCell middleCell];
        }
        return cell;
    } else {
        
        CommonProblemCell *cell = [tableView dequeueReusableCellWithIdentifier:ID_2];
        if (!cell) {
            cell = [CommonProblemCell commonProCell];
        }
        
        if ([_heightArr[indexPath.row] isEqualToNumber:@(45)]) {
            cell.selected = NO;
        } else {
            cell.selected = YES;
        }
        [cell setQuestion:self.questionArr[indexPath.row] answer:self.answerArr[indexPath.row]];
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section ==2) {
        [self setHeightSelectedCellWithIndexPath:indexPath];
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }

}

//动态返回高度

- (void)setHeightSelectedCellWithIndexPath:(NSIndexPath *)indexPath {
    if ([self.heightArr[indexPath.row] isEqualToNumber:@(45)]) {
        NSString *answerStr = _answerArr[indexPath.row];
        CGRect rect = [answerStr boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 15, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil];
        _heightArr[indexPath.row] = @(rect.size.height + 55);
    } else {
        _heightArr[indexPath.row] = @(45);
    }
}


@end
