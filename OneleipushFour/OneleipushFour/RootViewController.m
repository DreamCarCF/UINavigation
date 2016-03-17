//
//  RootViewController.m
//  OneleipushFour
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/250.0 blue:%256/250.0 alpha:1.0];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(50, 100, 80, 30);
    button.backgroundColor=[UIColor grayColor];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
    
    
    
    
    
    
    
    
    
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
