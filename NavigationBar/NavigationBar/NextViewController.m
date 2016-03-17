//
//  NextViewController.m
//  NavigationBar
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor blueColor];
    //隐藏导航栏，，不带动画
//    [self.navigationController  setNavigationBarHidden:YES];
    //隐藏导航栏带动画
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    
    //导航栏一旦隐藏，，所有视图控制器的导航栏都隐藏
    //所有视图控制器（在导航栏中），共享一个导航栏。
    
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(50, 64, 80, 30);
    [button setTitle:@"POP" forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //导航控制器自带一个边缘手势
    //按住边缘，往右滑动，可以返回上一级
    //但是如果导航栏隐藏，该手势就不生效了
    //interactivePopGestureRecongnizer
    
    //视图控制器共享导航条，但是导航条上的按钮不会共享；
    
    
    
    
}

-(void)pop
{
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
