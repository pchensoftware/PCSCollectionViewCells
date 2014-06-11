//====================================================================================================
// Author: Peter Chen
// Created: 6/11/14
// Copyright 2014 pchensoftware
//====================================================================================================

#import "PCSLabelCollectionCell.h"

#define kMargin 10

@interface PCSLabelCollectionCell()

@property (nonatomic, strong) UILabel *label;

@end

@implementation PCSLabelCollectionCell

- (id)initWithFrame:(CGRect)frame {
   if ((self = [super initWithFrame:frame])) {
      self.label = [[UILabel alloc] initWithFrame:CGRectInset(self.bounds, kMargin, kMargin)];
      self.label.font = [UIFont systemFontOfSize:[UIFont labelFontSize]];
      self.label.textAlignment = NSTextAlignmentCenter;
      self.label.textColor = [UIColor darkTextColor];
      self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
      self.label.numberOfLines = 0;
      [self addSubview:self.label];
   }
   return self;
}

@end
