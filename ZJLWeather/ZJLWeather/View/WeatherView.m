//
//  WeatherView.m
//  ZJLWeather
//
//  Created by apple on 2016/12/21.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "WeatherView.h"

@interface WeatherView ()<UITableViewDelegate>
/// tableView
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation WeatherView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    [self addSubview:self.tableView];

}

#pragma mark --- 懒加载
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.delegate = self;
        _tableView.frame = self.bounds;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

@end
