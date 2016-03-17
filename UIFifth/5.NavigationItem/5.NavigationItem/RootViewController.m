//
//  RootViewController.m
//  5.NavigationItem
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    //导航控制器的toolBar默认隐藏
    //让toolBar显示
    self.navigationController.toolbarHidden = NO;
    
    //navigationBar 和 toolbar 的高度都是44像素
    //状态栏高度是20像素
    
    /*
     导航控制器结构
     navigationBar
     custom content(controller.view)
     toolbar
     */
    
    //UIBarButtonItem 这个按钮类,在navigationBar和toolbar上使用
    
    //1.通过文字方式来初始化UIBarButtonItem
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithTitle:@"点击打印" style:UIBarButtonItemStylePlain target:self action:@selector(print)];
    
    //navigationItem是UIViewController的一个属性
    //她是为导航控制器服务的
    //如果没有导航控制器,使用self.navigationItem.leftBarButtonItem = item1 是无效的
    self.navigationItem.leftBarButtonItem = item1;
    
    //2.通过系统自带风格来创建按钮
    //UIBarButtonSystemItemBookmarks  系统提供的书签按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(changeColor)];
    
    //3.使用图片方式来创建按钮
    //backBarButtonItem  为下一个页面的返回按钮设置的
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"refresh_30"] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //4.通过自定义视图来创建按钮
    UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
    field.borderStyle = UITextBorderStyleRoundedRect;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:field];
    
    //设置控制器的title
    //两种效果是一样的,没有区别
//    self.title = @"RootVC";
    self.navigationItem.title = @"RootViewController";
    
    //定制titleView
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"label";
    
    self.navigationItem.titleView = label;
    
}
- (void)print
{
    NSLog(@"我是一个文字按钮");
    NextViewController *nextVc = [[NextViewController alloc]init];
    [self.navigationController pushViewController:nextVc animated:YES];
}
- (void)changeColor
{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
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
