//
//  ViewControllerC.m
//  3.推出四个控制器练习
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "ViewControllerC.h"
#import "ViewControllerD.h"
@interface ViewControllerC ()

@end

@implementation ViewControllerC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    button.frame = CGRectMake(50, 100, 80, 30);
    [button addTarget: self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)push
{
    ViewControllerD *VCd = [[ViewControllerD alloc]init];
    [self.navigationController pushViewController:VCd animated:YES];
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
