//
//  TableViewCell.h
//  UITableView_DataSource_Demo
//
//  Created by admin on 16/8/11.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property(nonatomic, strong) UILabel* cellLabel;/**< label */


- (void)configData:(NSDictionary *)dic;

@end