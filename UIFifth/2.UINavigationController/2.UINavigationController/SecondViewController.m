//
//  SecondViewController.m
//  2.UINavigationController
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //如果推出的视图控制器的view的背景颜色为透明(clearColor),那么会卡顿
    self.view.backgroundColor = [UIColor cyanColor];
    
    //视图控制器入栈(被推出).在左上角ios会自动生成 "<back"
    //点击这个back,即可完成出栈(退回)操作.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 150, 80, 30);
    [button setTitle:@"pop" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //取到当前导航控制器栈中视图个数
    NSLog(@"count==%ld",self.navigationController.viewControllers.count);
}

- (void)pop
{
    //出栈
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
