//
//  ViewController.m
//  SURefreshDemo
//
//  Created by 万众科技 on 16/7/11.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import "ViewController.h"
#import "SURefreshHeader.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView * tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"RefreshAnimation";
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 375, self.view.bounds.size.height - 64) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [UIView new];
    [self.tableView addRefreshHeaderWithHandle:^{
        NSLog(@"开始刷新");
    }];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor colorWithRed:0.0277 green:0.7235 blue:0.5135 alpha:1.0];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    NSLog(@"结束刷新");
    [tableView.header endRefreshing];
}

@end
