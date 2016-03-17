//
//  CayanView.m
//  TouchPicturesSequence
//
//  Created by 曹丰 on 15/8/1.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "CayanView.h"

@implementation CayanView
{
    UIImageView *_imageView;//选中小的图片；
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(65, 72,30 , 28)];
        _imageView.image=[UIImage imageNamed:@"1"];
        _imageView.hidden=YES;//默认为不选中；
        [self addSubview:_imageView];
        
    }
    return self;
}
-(void)setWithSelected:(BOOL)withSelected
{
    _withSelected=withSelected;
    if (_withSelected) {
        _imageView.hidden=NO;
    }else
    {
        _imageView.hidden=YES;
    }
}
-(BOOL)isWithSelected
{
    if (_imageView.hidden==YES) {
        return NO;
        
    }else
    {
        return YES;
    }
    return NO;

}













/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
