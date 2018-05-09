//
//  ViewController.m
//  CellDemo
//
//  Created by zhangming on 2018/5/8.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import "ViewController.h"
#import "PersonCell.h"
#import "PersonModel.h"
#import "PersonViewModel.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@property (copy, nonatomic) NSArray *listArr;

@property (strong, nonatomic) NSMutableArray *frameList;

@end

@implementation ViewController

- (NSArray *)listArr{
    
    if (!_listArr) {
        
        PersonModel *model = [[PersonModel alloc] init];
        model.name = @"张三";
        model.age = @"21";
        model.icon = @"add_img";
        //model.title = @"好好计划尽快尽快尽快回家客户合计合计客户即可火狐接口货款合计货款";
        model.des = @[@"标题",@"费用",@"收入"];
        
        
        PersonModel *model2 = [[PersonModel alloc] init];
        model2.name = @"李四";
        model2.age = @"28";
        model2.icon = @"add_img";
        model2.title = @"好好好好计划尽快尽快尽快回家客户合计合计客户即可火狐接口货款合计货款好好计划尽快尽快尽快回家客户合计合计客户即可火狐接口货款合计货款好好计划尽快尽快尽快回家客户合计合计客户即可火狐接口货款合计货款计划尽快尽快尽快回家客户合计合计客户即可火狐接口货款合计货款";
        model2.des = @[@"标题",@"费用",@"收入",@"标题",@"费用",@"收入",@"标题",@"费用",@"收入"];
        
        _listArr = @[model,model2];
    }
    
    return _listArr;
}

- (NSMutableArray *)frameList{
    
    if (!_frameList) {
        
        _frameList = [NSMutableArray array];
        for (PersonModel *model in self.listArr) {
            
            PersonViewModel *perModel = [[PersonViewModel alloc] init];
            perModel.personModel = model;
            [_frameList addObject:perModel];
        }
    }
    return _frameList;
}


- (UITableView *)tableView{
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.listArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PersonViewModel *model = self.frameList[indexPath.row];
    
    return model.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    PersonCell *cell = [PersonCell tempWithTableView:tableView];
    cell.frameModel = self.frameList[indexPath.row];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
