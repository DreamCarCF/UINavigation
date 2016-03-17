//
//  CutomeView.m
//  8.自定义视图
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "CutomeView.h"

@implementation CutomeView
{
    UIImageView *_imgView;//选中的小图片
}

//重写initWithFrame方法
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //小图片放大右下角
        _imgView = [[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width-30, self.frame.size.height-28, 30, 28)];
        _imgView.image = [UIImage imageNamed:@"1"];
        
        //默认不选中(不显示这个小图片)
        _imgView.hidden = YES;
        [self addSubview:_imgView];
    }
    return self;
    
    //hidden属性和你得选择属性相反
}



- (void)setMyIsSelected:(BOOL)myIsSelected
{
    _myIsSelected = myIsSelected;
    if (_myIsSelected)
    {
        //如果你要选中这个cutomView,那么小视图应该显示
        _imgView.hidden = NO;
    }else
    {
        _imgView.hidden = YES;
    }
}

- (BOOL)isMyIsSelected
{
    if (_imgView.hidden == YES)
    {
        return NO;
    }else{
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
