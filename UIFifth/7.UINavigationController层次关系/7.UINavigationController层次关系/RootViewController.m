//
//  RootViewController.m
//  7.UINavigationController层次关系
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1.0];
    
    NSArray *array = @[@"进入下一层",@"返回第三层",@"返回第一层",@"进入第五层"];
    
    for (int i=0; i<array.count; i++)
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(80, 70+i*40, 200, 35);
        button.backgroundColor = [UIColor grayColor];
        [button setTitle:array[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        //tag从100开始,避免未知错误
        button.tag = 100+i;
        [self.view addSubview:button];
    }
    
    //标题显示当前层数
    self.title = [NSString stringWithFormat:@"第%ld层",self.navigationController.viewControllers.count];
}
- (void)buttonClick:(UIButton *)button
{
    //BackBarbuttonItem的文字,会和上一个页面的title相同
    switch (button.tag) {
        case 100:
        {
            //进入下一层
            //实例化属于本类的对象,进行推出
            RootViewController *root = [[RootViewController alloc]init];

            [self.navigationController pushViewController:root animated:YES];
        }
            break;
        case 101:
        {
            //返回第三层
            if (self.navigationController.viewControllers.count>=3)
            {
                //有三个以上
                //popToViewController  返回到指定控制器
                [self.navigationController popToViewController:self.navigationController.viewControllers[2] animated:YES];
            }else
            {
                //没有那么多
                //直接返回第一个视图控制器
                //回到基栈
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }
            break;
        case 102:
        {
            //返回第一层
            [self.navigationController popToRootViewControllerAnimated:YES];
        }
            break;
        case 103:
        {
            //进入第五层
            //替换导航控制器的数组来达到目的
            if (self.navigationController.viewControllers.count >=5)
            {
                //如果数组元素多余5个,则直接返回
                [self.navigationController popToViewController:self.navigationController.viewControllers[4] animated:YES];
            }else
            {
                //如果不够5个,则往数组中添加,再替换
                
                //取到导航控制器的数组,放到可变数组中
                NSMutableArray *tempArray = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
                
                //如果数组中已经有2个,那么我们只要加3个
                for(int i = 0;i<5-self.navigationController.viewControllers.count;i++)
                {
                    RootViewController *root = [[RootViewController alloc]init];
                    [tempArray addObject:root];
                }
                
                //再替换
                [self.navigationController setViewControllers:tempArray animated:YES];
            }
        }
            break;
            
        default:
            break;
    }
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
