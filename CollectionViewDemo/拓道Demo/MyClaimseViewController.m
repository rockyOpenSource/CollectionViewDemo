//
//  MyClaimseViewController.m
//  拓道Demo
//
//  Created by qishang on 16/3/14.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "MyClaimseViewController.h"

@interface MyClaimseViewController ()

@end

@implementation MyClaimseViewController

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        
        return [[UIStoryboard storyboardWithName:NSStringFromClass([self class]) bundle:nil] instantiateInitialViewController];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 2) {
        return 30;
    }
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {

    return 5;
}

@end
