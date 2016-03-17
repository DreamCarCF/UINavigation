//
//  RootViewController.m
//  6.NavigationBar
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"
#import "NextViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController
- (void)viewWillAppear:(BOOL)animated
{
    //如果继承制一个自定义的视图控制器
    //让父视图控制器的视图即将出现
    //super 调用父类方法的关键字
    [super viewWillAppear:animated];
    
    //每次视图即将出现,将导航条显示
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.title = @"hello";
    //设置导航栏图片
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"导航栏的图片.png"] forBarMetrics:UIBarMetricsDefault];
    
    //在IOS7以后,状态栏成了导航栏的一部分
    
    //设置导航条背景颜色
    //iOS7以前使用的方法
    self.navigationController.navigationBar.tintColor = [UIColor purpleColor];
    
    //iOS7以后使用的方法
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    
    //查看iOS系统份额
    //https://developer.apple.com/  -->Suppor-->Distribution-->App Store
    
    //设置导航条样式
    /*
    UIBarStyleDefault          = 0,   //白底,字体黑色
    UIBarStyleBlack            = 1,   //黑底,字体白色
    
    UIBarStyleBlackOpaque      = 1, // Deprecated. Use UIBarStyleBlack
    UIBarStyleBlackTranslucent = 2, // Deprecated. Use UIBarStyleBlack and set the translucent property to YES
     */
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //设置导航条是否透明
    //默认是YES  透明
    //NO       不透明
    self.navigationController.navigationBar.translucent = NO;
    
    //如果设置导航条不透明,那么坐标会往下移动64个像素
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 64, 100, 30)];
    label.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:label];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"推出视图" style:UIBarButtonItemStylePlain target:self action:@selector(push)];
    
    //自定义导航条
    UIView *cutomNavBar = [[UIView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 44)];
    cutomNavBar.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:cutomNavBar];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(300, 10, 80, 24);
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    [cutomNavBar addSubview:button];
    
    //定制状态栏
    UIView *statusBar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    statusBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:statusBar];
    
    
    //显示toolbar
    //高度是44
    self.navigationController.toolbarHidden = NO;
    
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(photo)];
    
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithTitle:@"按钮2" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithTitle:@"按钮3" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //创建一个间隔按钮
    //UIBarButtonSystemItemFlexibleSpace //自动给你算分隔距离,来达到布满屏幕的效果
    //UIBarButtonSystemItemFixedSpace    //固定间距.需要设置with
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    space.width = 50;
    
    //用sapce来进行分隔
    NSArray *itemArray =@[item1,space,item2,space,item3];
    //将所有按钮一次性设置给toolbar
    self.toolbarItems = itemArray;
}
- (void)photo
{
    NSLog(@"take photo!");
}
- (void)push
{
    NextViewController *nextVC = [[NextViewController alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
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
