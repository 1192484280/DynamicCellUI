//
//  PersonViewModel.h
//  CellDemo
//
//  Created by zhangming on 2018/5/8.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PersonModel;

@interface PersonViewModel : NSObject

@property (strong, nonatomic) PersonModel *personModel;

@property (assign, nonatomic) CGRect nameFrame;

@property (assign, nonatomic) CGRect ageFrame;

@property (assign, nonatomic) CGRect iconFrame;

@property (assign, nonatomic) CGRect titleFrame;

@property (assign, nonatomic) CGFloat cellHeight;

@property (assign, nonatomic) CGRect desFrame;


@end
