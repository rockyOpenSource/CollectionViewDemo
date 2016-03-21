//
//  CollectionViewController.m
//  拓道Demo
//
//  Created by qishang on 16/3/15.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "CollectionViewController.h"
#import "MyClaimseCollectionCell.h"
@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init {
//创建流水线布局对象
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = [UIScreen mainScreen].bounds.size;
    //设置水平滚动
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //设置cell之间的间距
    layout.minimumInteritemSpacing = 0;
    //设置行距
    layout.minimumLineSpacing = 0;
    return [super initWithCollectionViewLayout:layout];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([MyClaimseCollectionCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MyClaimseCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    return cell;
}


@end
