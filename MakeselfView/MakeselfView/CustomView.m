//
//  CustomView.m
//  MakeselfView
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
{
    
    
    UIImageView *_imgView;//选中的小图片；
    
}
//重写initWithFrame
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _imgView=[[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width-30, self.frame.size.height-28, 30, 28)];
        _imgView.image=[UIImage imageNamed:@"1"];
        
        _imgView.hidden =YES;
        [self addSubview:_imgView];
        
        
    }
    return self;
}

-(BOOL)isselected
{
    //如果图片被选中，hidden=NO；
    //选中状态刚好和小图片显示状态相反
    
    return !_imgView.hidden;
    
    
}
-(void)setIsSelected:(BOOL)isSelected
{
    
    _isSelected=isSelected;
    if (_isSelected) {
        _imgView.hidden =NO;
}else
{
    
    
    _imgView.hidden=YES;
}


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
