//
//  LoginViewController.m
//  1.注册界面练习
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
@interface LoginViewController ()
{
    UITextField *_field1;
    UITextField *_field2;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 40, 80, 30)];
    lable1.text = @"用户名:";
    lable1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lable1];
    
    UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 80, 30)];
    lable2.text = @"密码:";
    lable2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lable2];
    
    _field1 = [[UITextField alloc]initWithFrame:CGRectMake(100, 40, 200, 30)];
    _field1.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_field1];
    
    _field2 = [[UITextField alloc]initWithFrame:CGRectMake(100, 80, 200, 30)];
    _field2.borderStyle = UITextBorderStyleRoundedRect;
    _field2.secureTextEntry = YES;
    [self.view addSubview:_field2];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(80, 120, 60, 30);
    [button1 setTitle:@"注册" forState:0];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(registe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(220, 120, 60, 30);
    [button2 setTitle:@"登录" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button2];
}

- (void)registe
{
    RegisterViewController *regVC = [[RegisterViewController alloc]init];
    [regVC setBlock:^(NSString *name, NSString *password) {
        
        //接收传递回来的name,和password
        _field1.text = name;
        _field2.text = password;
    }];
    
    regVC.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:regVC animated:YES completion:nil];
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
