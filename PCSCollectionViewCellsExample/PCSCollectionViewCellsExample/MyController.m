//====================================================================================================
// Author: Peter Chen
// Created: 6/11/14
// Copyright 2014 pchensoftware
//====================================================================================================

#import "MyController.h"
#import "PCSLabelCollectionCell.h"

@interface MyController() <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation MyController

- (id)init {
   if ((self = [super init])) {
   }
   return self;
}

- (void)viewDidLoad {
   [super viewDidLoad];
   
   UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
   layout.itemSize = CGSizeMake(100, 100);
   layout.minimumInteritemSpacing = 5;
   layout.minimumLineSpacing = 5;
   
   self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 400) collectionViewLayout:layout];
   self.collectionView.backgroundColor = [UIColor blueColor];
   self.collectionView.alwaysBounceHorizontal = YES;
   self.collectionView.alwaysBounceVertical = YES;
   self.collectionView.dataSource = self;
   self.collectionView.delegate = self;
   [self.collectionView registerClass:[PCSLabelCollectionCell class] forCellWithReuseIdentifier:@"CellId"];
   [self.view addSubview:self.collectionView];
}

//====================================================================================================
#pragma mark - Collection view
//====================================================================================================

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
   return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
   PCSLabelCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CellId" forIndexPath:indexPath];
   cell.backgroundView = [[UIView alloc] init];
   cell.backgroundView.backgroundColor = [UIColor colorWithWhite:0.3 + 0.3 * arc4random_uniform(10)/10.0 alpha:1];
   cell.selectedBackgroundView = [[UIView alloc] init];
   cell.selectedBackgroundView.backgroundColor = [UIColor redColor];
   
   cell.label.text = [NSString stringWithFormat:@"Label Cell: %d", indexPath.item];
   return cell;
}

//====================================================================================================
#pragma mark - Events
//====================================================================================================



@end
