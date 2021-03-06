//
//  QJListTableView.m
//  EHenTaiViewer
//
//  Created by QinJ on 2017/5/25.
//  Copyright © 2017年 kayanouriko. All rights reserved.
//

#import "QJListTableView.h"
#import "QJListCell.h"

@implementation QJListTableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.showsVerticalScrollIndicator = NO;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.backgroundColor = [UIColor clearColor];
        self.rowHeight = UITableViewAutomaticDimension;
        self.estimatedRowHeight = 5 * 42;
        self.tableFooterView = [UIView new];
        [self registerNib:[UINib nibWithNibName:NSStringFromClass([QJListCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([QJListCell class])];
    }
    return self;
}

@end
