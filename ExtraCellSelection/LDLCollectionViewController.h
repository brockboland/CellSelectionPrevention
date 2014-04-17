//
//  LDLCollectionViewController.h
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LDLTableView;

@interface LDLCollectionViewController : UICollectionViewController

@property (strong, nonatomic) IBOutlet LDLTableView *tableView;

@property (strong, nonatomic) IBOutlet UILabel *statusLabel;

@end
