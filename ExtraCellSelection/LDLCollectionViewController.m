//
//  LDLCollectionViewController.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLCollectionViewController.h"
#import "LDLCollectionHeaderView.h"

@interface LDLCollectionViewController ()

@property (weak, nonatomic) LDLCollectionHeaderView *headerView;

@end

@implementation LDLCollectionViewController

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return 3;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];

  // Set some randomg background color
  cell.contentView.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.f
                                                     green:arc4random_uniform(256)/255.f
                                                      blue:arc4random_uniform(256)/255.f
                                                     alpha:1];
  return cell;
}




-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  NSLog(@"Checking if should select collection view cell: %@", indexPath);
  return YES;
}

-(BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
  if (self.headerView.highlightToggleSwitch.isOn) {
    NSLog(@"YES, the collection view should highlight");
    return YES;
  }
  else {
    NSLog(@"NO, the collection view should NOT highlight");
    return NO;
  }
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  // NOTE: This is called, as long as both shouldSelectItemAtIndexPath: AND shouldHighlightItemAtIndexPath: return YES. If either returns NO, the cell is not actually selected.
  NSLog(@"Did select collection view cell: %@", indexPath);
}



- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
  // Setup the header view with the toggle switch
  UICollectionReusableView *reusableview = nil;
  if (kind == UICollectionElementKindSectionHeader) {
    LDLCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
    reusableview = headerView;
    self.headerView = headerView;
  }
  return reusableview;
}


@end
