//
//  LDLCollectionViewController.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLCollectionViewController.h"

@interface LDLCollectionViewController ()

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
  NSLog(@"Checking if should highlight collection view cell: %@", indexPath);
  // NOTE: Returning NO here actually prevents selection, not just highlighting.
  return YES;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  // NOTE: This is called, as long as both shouldSelectItemAtIndexPath: AND shouldHighlightItemAtIndexPath: return YES. If either returns NO, the cell is not actually selected.
  NSLog(@"Did select collection view cell: %@", indexPath);
}

@end
