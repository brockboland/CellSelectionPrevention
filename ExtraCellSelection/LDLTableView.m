//
//  LDLTableView.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLTableView.h"

@implementation LDLTableView


-(id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    self.dataSource = self;
    self.delegate = self;
  }
  return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 6;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:@"TableCell"];
  cell.textLabel.text = [NSString stringWithFormat:@"Row %@ in collection cell %@", @(indexPath.row), self.collectionCellIdentifier];

  // NOTE: this will mask the problem by removing the highlight styling
//  cell.selectionStyle = UITableViewCellSelectionStyleNone;

  return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  // NOTE: This is never called when the cell is selected (by way of selected the collection view cell)
  NSLog(@"Did select table view cell: %@", indexPath);
}

-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
  // NOTE: This is never called when the cell is selected (by way of selected the collection view cell)
  NSLog(@"Should highlight table view cell: %@", indexPath);
  return YES;
}

@end
