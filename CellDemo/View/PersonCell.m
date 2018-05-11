//
//  PersonCell.m
//  CellDemo
//
//  Created by zhangming on 2018/5/8.
//  Copyright © 2018年 zhangming. All rights reserved.
//

#import "PersonCell.h"
#import "PersonViewModel.h"
#import "PersonModel.h"

@interface PersonCell()

@property (weak, nonatomic) UIImageView *im;

@property (weak, nonatomic) UILabel *nameLa;

@property (weak, nonatomic) UILabel *ageLa;

@property (weak, nonatomic) UILabel *titleLa;


@end

@implementation PersonCell


+ (instancetype)tempWithTableView:(UITableView *)tableView{
    
    static NSString *cellId = @"CELL";
    
    PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    
    if(!cell){
        
        cell = [[PersonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    return cell;
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        
        [self setUI];
    }
    
    return self;
    
}

- (void)setUI{
    
    UIImageView *im = [[UIImageView alloc] init];
    
    [self addSubview:im];
    self.im = im;
    
    UILabel *nameLa = [[UILabel alloc] init];
    
    [self addSubview:nameLa];
    self.nameLa = nameLa;
    
    UILabel *ageLa = [[UILabel alloc] init];
    
    [self addSubview:ageLa];
    self.ageLa = ageLa;
    
    UILabel *titleLa = [[UILabel alloc] init];
    titleLa.numberOfLines = 0;
    [self addSubview:titleLa];
    self.titleLa = titleLa;
    
}


- (void)setFrameModel:(PersonViewModel *)frameModel{
    
    self.im.image = [UIImage imageNamed:frameModel.personModel.icon];
    self.nameLa.text = frameModel.personModel.name;
    self.ageLa.text = frameModel.personModel.age;
    self.titleLa.text = frameModel.personModel.title;
    
    self.im.frame = frameModel.iconFrame;
    self.nameLa.frame = frameModel.nameFrame;
    self.ageLa.frame = frameModel.ageFrame;
    self.titleLa.frame = frameModel.titleFrame;

}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
