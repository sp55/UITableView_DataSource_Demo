//
//  ViewController.m
//  UITableView_DataSource_Demo
//
//  Created by admin on 16/8/11.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/ee6b57fc335e
//iOS实现UITableViewDataSource与Controller的分离


#import "ViewController.h"
#import "DataArraySource.h"
#import "TableViewCell.h"
@interface ViewController ()
@property(nonatomic, strong) NSArray* dataArr;/**< array */
@property(nonatomic, strong) UITableView* tableView;/**< tableView */
@property(nonatomic, strong) DataArraySource* dateSource;/**< dataSource */
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataArr=@[@{@"name":@"登鹳雀楼"},@{@"name":@"白日依山尽"},@{@"name":@"黄河入海流"},@{@"name":@"欲穷千里目"},@{@"name":@"更上一层楼"}];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.rowHeight = 50;
    self.tableView.tableFooterView=[UIView new];
    [self.view addSubview:self.tableView];
    
    TableViewCellConfigureBlock configureCell =^(TableViewCell *cell, NSDictionary *dic) {
        [cell configData:dic];
    };
    
    
    self.dateSource = [[DataArraySource alloc] initWithItems:self.dataArr cellIdentifier:@"cell" configureCellBlock:configureCell];
    self.tableView.dataSource = self.dateSource;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
