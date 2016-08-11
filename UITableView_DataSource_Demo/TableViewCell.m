//
//  TableViewCell.m
//  UITableView_DataSource_Demo
//
//  Created by admin on 16/8/11.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, [UIScreen mainScreen].bounds.size.width, 40)];
        _cellLabel.backgroundColor = [UIColor grayColor];
        _cellLabel.textColor = [UIColor redColor];
        _cellLabel.textAlignment = NSTextAlignmentCenter;
        _cellLabel.font = [UIFont systemFontOfSize:25];
        [self.contentView addSubview:_cellLabel];
    }
    return self;
}
- (void)configData:(NSDictionary *)dic {
    _cellLabel.text = [dic objectForKey:@"name"];
}



@end
