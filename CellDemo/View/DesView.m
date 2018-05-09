//
//  DesView.m
//  CellDemo
//
//  Created by zhangming on 2018/5/9.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import "DesView.h"
#import "PersonViewModel.h"
#import "PersonModel.h"

@implementation DesView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        [self setUI];
    }
    
    return self;
}

- (void)setUI{
    
    
}

- (void)setFrameModel:(PersonViewModel *)frameModel{
    
    for (int i = 0; i < frameModel.personModel.des.count; i++) {
        
        UILabel *la = [[UILabel alloc] initWithFrame:CGRectMake(SPACING, SPACING*(i+1) + 21*i, 100, 21)];
        [self addSubview:la];
        la.text = frameModel.personModel.des[i];
    }
    
}

@end
