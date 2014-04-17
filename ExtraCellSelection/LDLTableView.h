//
//  LDLTableView.h
//  ExtraCellSelection
//
//  Created by Brock Boland on 4/16/14.
//  Copyright (c) 2014 Lucky Dog Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDLTableView : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSString *collectionCellIdentifier;

@end
