//
//  ViewController.m
//  8.自定义视图
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewController.h"
#import "CutomeView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CutomeView *view = [[CutomeView alloc]initWithFrame:CGRectMake(50, 50, 200, 300)];
    view.image = [UIImage imageNamed:@"psb0.jpg"];
    view.userInteractionEnabled = YES;
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [view addGestureRecognizer:tap];

}

- (void)tap:(UITapGestureRecognizer *)tap
{
    //不断让view的选择状态取反.来达到选中不选中的效果
    CutomeView *view = (CutomeView*)tap.view;
    view.myIsSelected = !view.myIsSelected;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
