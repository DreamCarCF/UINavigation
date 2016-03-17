//
//  ViewController.m
//  MakeselfView
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CustomView *view=[[CustomView alloc]initWithFrame:CGRectMake(50, 50, 200, 300)];
    view.image=[UIImage imageNamed:@"psb0.jpg"];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [view addGestureRecognizer:tap];
    
    
}
-(void)tap:(UITapGestureRecognizer*)tap
{
    CustomView *view=(CustomView*)tap.view;
    view.isSelected = !view.isSelected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
