//
//  TransferTabViewController.m
//  拓道Demo
//
//  Created by qishang on 16/3/14.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "TransferTabViewController.h"
#import "MyClaimseViewController.h"
@interface TransferTabViewController ()

@end

@implementation TransferTabViewController
//确定点击事件
- (IBAction)defineAction:(id)sender {
    
    [self.navigationController pushViewController:[MyClaimseViewController new] animated:YES];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {

    self = [super initWithStyle:style];
    if (self) {
        
       return [[UIStoryboard storyboardWithName:NSStringFromClass([self class]) bundle:nil] instantiateInitialViewController];
    }
    return self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.000001;
    }
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 2) {
        return 0.000001;
    }
    return 5;
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
