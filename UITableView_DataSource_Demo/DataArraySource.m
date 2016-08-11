//
//  DataArraySource.m
//  UITableView_DataSource_Demo
//
//  Created by admin on 16/8/11.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "DataArraySource.h"


@interface DataArraySource ()
@property(nonatomic, strong) NSArray* items;/**< array */
@property(nonatomic, copy) NSString* cellIdentifier;/**< cellIdentifier */
@property(nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;/**< block */
@end

@implementation DataArraySource


- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
    
    if (self=[super init]) {
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = aConfigureCellBlock;
    }
    return  self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[(NSUInteger) indexPath.row];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
