//
//  PersonViewModel.m
//  CellDemo
//
//  Created by zhangming on 2018/5/8.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import "PersonViewModel.h"
#import "PersonModel.h"

@implementation PersonViewModel

- (void)setPersonModel:(PersonModel *)personModel{
    
    _personModel = personModel;
    
    [self setModelFrame];
    
    [self setCellHeight];
}

- (void)setModelFrame{
    
    //姓名
    CGFloat nameX = SPACING;
    CGFloat nameY = SPACING;
    CGFloat nameW = 100;
    CGFloat nameH = 21;
    self.nameFrame = CGRectMake(nameX, nameY, nameW, nameH);
    
    //年龄
    CGFloat ageX = SPACING;
    CGFloat ageY = CGRectGetMaxY(self.nameFrame) + SPACING;
    CGFloat ageW = 100;
    CGFloat ageH = 21;
    self.ageFrame = CGRectMake(ageX, ageY, ageW, ageH);
    
    //图片
    CGFloat iconX = SPACING;
    CGFloat iconY = CGRectGetMaxY(self.ageFrame) + SPACING;
    CGFloat iconW = 45;
    CGFloat iconH = 45;
    self.iconFrame = CGRectMake(iconX, iconY, iconW, iconH);
    
    
    self.titleFrame = self.iconFrame;
    
    if (self.personModel.title) {
        
        CGFloat titleX = SPACING;
        CGFloat titleY = CGRectGetMaxY(self.iconFrame) + SPACING;
        CGFloat titleW = KScreenWidth - 2 * SPACING;
        CGSize textSize = [self.personModel.title boundingRectWithSize:CGSizeMake(titleW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:FONT context:nil].size;
        self.titleFrame = (CGRect){{titleX,titleY},textSize};
    
    }
    
    
}

- (void)setCellHeight{
    
    self.cellHeight = CGRectGetMaxY(self.titleFrame) + SPACING;
}
@end
