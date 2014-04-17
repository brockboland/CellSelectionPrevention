//
//  LDLCollectionViewCell.m
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import "LDLCollectionViewCell.h"

@implementation LDLCollectionViewCell

-(void)awakeFromNib {
  // Set the collection cell identifier on the tableview to some random string, to make it easier to differentiate log messages from within the table
  NSString *letters = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  NSMutableString *randomString = [NSMutableString stringWithCapacity: 4];
  for (int i=0; i<4; i++) {
    [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
  }

  self.cellIDLabel.text = randomString;
  self.statusLabel.text = @"";
}


-(void)setSelected:(BOOL)selected {
  [super setSelected:selected];

  if (selected) {
    NSLog(@"Cell being set selected: %@", self.cellIDLabel.text);
    self.statusLabel.text = @"Selected";
  }
  else {
    NSLog(@"Cell being set UNselected: %@", self.cellIDLabel.text);
    self.statusLabel.text = @"";
  }
}


@end
