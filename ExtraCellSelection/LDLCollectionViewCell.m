//
//  LDLCollectionViewCell.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLCollectionViewCell.h"
#import "LDLTableView.h"

@implementation LDLCollectionViewCell

-(void)awakeFromNib {
  // Set the collection cell identifier on the tableview to some random string, to make it easier to differentiate log messages from within the table
  NSString *letters = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  NSMutableString *randomString = [NSMutableString stringWithCapacity: 4];
  for (int i=0; i<4; i++) {
    [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
  }
  self.tableView.collectionCellIdentifier = randomString;


  [self refreshStatus];
}


-(void)setSelected:(BOOL)selected {
  // NOTE: If the superclass implementation of setSelected is NOT called here, then the table view cells are (correctly) not highlighted
  // Presumably, the UICollectionViewCell's implementation of setSelected: does some kind of recursive call on subviews to select and/or highlight
  [super setSelected:selected];

  [self refreshStatus];
}

// Refresh the label that shows how many cells are selected in the table view
- (void)refreshStatus {
  NSArray *selectedRows = [self.tableView indexPathsForSelectedRows];
  self.statusLabel.text = [NSString stringWithFormat:@"%@", @([selectedRows count])];
}

@end
