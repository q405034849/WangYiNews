//
//  WYNewsListViewController.m
//  网易新闻
//
//  Created by 张玺科 on 16/6/16.
//  Copyright © 2016年 张玺科. All rights reserved.
//

#import "WYNewsListViewController.h"

static NSString *cellId = @"cellId";
@interface WYNewsListViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation WYNewsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.textLabel.text = @(indexPath.row).description;
    
    return cell;
}

#pragma mark - 设置界面
- (void)setupUI {
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    [self.view addSubview:tv];
    
    // 自动布局
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    // 注册原型 cell
    [tv registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    
    // 设置数据源和代理
    tv.dataSource = self;
    tv.delegate = self;
    
    // 记录成员变量
    _tableView = tv;
}

@end
