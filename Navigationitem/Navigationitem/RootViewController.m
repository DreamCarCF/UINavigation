//
//  RootViewController.m
//  Navigationitem
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "NestViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor redColor];
    //导航控制器的toolBar默认隐藏
    //让toolBar显示
    
    self.navigationController.toolbarHidden=NO;
    //navigationBar 和 toolBar 的高度是44像素
    //状态栏高度是20像素
    
    
    /*
     
     导航控制器的结构
     
     navigationBar   高度44
     
     custom content(controller.view)
     
     toolBar         高度44
     
     
     */
    
    
    // UIBarButtonItem 这个按钮类，在navigationBar和toolBar上使用
    
    //  1.通过文字方式来初始化UIBarBUttonItem
    UIBarButtonItem *item1 =[[UIBarButtonItem alloc]initWithTitle:@"点击打印" style:UIBarButtonItemStylePlain target:self action:@selector(print)];
    
    //navigationItem是UIViewController得一个属性
    //他是为导航控制器服务的
    //如果没有导航控制器，使用self.navigatonItem.leftBatButtonItem=item1 是无效的；
    self.navigationItem.leftBarButtonItem=item1;
    // 2.通过系统自带风格来创建按钮
    //UIBarButtonSystemItemBookmarks   系统提供的书签按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(changeColor)];
    // 3.使用图片方式来创建按钮
    self.navigationItem.backBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"refresh_30.png"] style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //4.通过自定义视图来创建按钮
    UITextField *field=[[UITextField alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
    field.borderStyle=UITextBorderStyleRoundedRect;
    //设置控制器的title
//    self.title=@"RootVC";
    self.navigationItem.title=@"RootCiewController";
    //两种效果是一样的，没有区别；
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:field];
    //定制titleView
    UILabel*label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    label.backgroundColor=[UIColor yellowColor];
    label.text=@"label";
    label.textAlignment=NSTextAlignmentCenter;
    self.navigationItem.titleView=label;
    
    
    
}
-(void)print
{
    NestViewController *nestVC=[[NestViewController alloc]init];
    [self.navigationController pushViewController:nestVC animated:YES];
    
    
    NSLog(@"我是一个文字按钮");
    
}

-(void)changeColor
{
    self.view.backgroundColor=[UIColor  colorWithRed:arc4random()%256/255.0 green:arc4random()%256/250.0 blue:arc4random()%256/250.0 alpha:1.0];
    
    
    
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
