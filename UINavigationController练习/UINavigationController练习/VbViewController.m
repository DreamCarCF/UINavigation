//
//  VbViewController.m
//  UINavigationController练习
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "VbViewController.h"
#import "VcViewController.h"
@interface VbViewController ()

@end

@implementation VbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor greenColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
     button.frame=CGRectMake(40, 40, 100, 100);
    button.backgroundColor=[UIColor whiteColor];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}
-(void)push
{
    
    VcViewController *fourth=[[VcViewController alloc]init
                              ];
    [self.navigationController pushViewController:fourth animated:YES];
    
    
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
