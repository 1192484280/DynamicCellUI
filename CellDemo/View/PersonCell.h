//
//  PersonCell.h
//  CellDemo
//
//  Created by zhangming on 2018/5/8.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PersonViewModel;

@interface PersonCell : UITableViewCell

@property (strong, nonatomic) NSArray *listArr;

@property (strong, nonatomic) PersonViewModel *frameModel;

+ (instancetype)tempWithTableView:(UITableView *)tableView;

@end
