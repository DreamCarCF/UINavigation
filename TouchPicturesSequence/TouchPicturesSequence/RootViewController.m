//
//  RootViewController.m
//  TouchPicturesSequence
//
//  Created by 曹丰 on 15/7/31.
//  Copyright (c) 2015年 CaoFeng. All rights reserved.
//

#import "RootViewController.h"
#import "CayanView.h"
@interface RootViewController ()
{
    int _a;
    int _b;
    CGRect _dele;
    UIImageView *_imageView;
    int _number2;
    int _number3;
    CGRect _oldFrame;
    BOOL _isLarge;
    BOOL a;
    BOOL c;
}
@end

@implementation RootViewController

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _number2=arc4random()%7;
//        _number3=arc4random()%4;
//    }
//    return self;
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor grayColor];
    a=YES;
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(self.view.frame.size.width-50, 10, 50, 34);
    button.backgroundColor=[UIColor whiteColor];
    [button setTitle:@"Edit" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    button.layer.borderWidth=1;
    button.layer.cornerRadius=10;
    [button addTarget:self action:@selector(edit:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.navigationController.navigationBar addSubview:button];
    self.navigationController.toolbarHidden=NO;
    
    
    UIButton*button2=[UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame=CGRectMake(self.view.frame.size.width/2-47, 5, 100, 40);
    button2.backgroundColor=[UIColor whiteColor];
    [button2 setTitle:@"点击排序" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    button2.layer.borderWidth=1;
    button2.layer.cornerRadius=10;
    [button2 addTarget:self action:@selector(addPhoto:) forControlEvents:UIControlEventTouchUpInside];
    [self.navigationController.navigationBar addSubview:button2];
    
    
    
    
    
    
    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithTitle:@"点击删除" style:UIBarButtonItemStylePlain target:self  action:@selector(delete:)];
    
    item1.tintColor=[UIColor blackColor];
    
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    space.width=130;
    NSArray *arr=@[space,item1];
    
    self.toolbarItems=arr;
    
}
-(void)addPhoto:(UIButton*)button
{
    NSLog(@"4444444");
    
    if ([button.currentTitle isEqualToString:@"点击排序"]) {
        
        
        for ( UIImageView *view in self.view.subviews)
        {
            //因为label和button都是继承制UIView,所以可以这样枚举
            //如果是label则删除
            if ([view isKindOfClass:[UIImageView class]])
            {
                [view removeFromSuperview];
            }
        }
        
        
        
        _number2=arc4random()%4;
        _number3=arc4random()%4;
        
        if (_number2==0||_number3==0) {
            _number2=4;
            _number3=4;
        }
        //           NSArray *narry=self.view.subviews;
        
        
        [UIView animateWithDuration:0.5 animations:^{
            for (int i=0;  i <_number3; i++) {
                //
                for (int j=0; j<_number2; j++) {
                    
                    int number=arc4random()%16;
                    
                    _imageView =[[CayanView alloc]init];
                    
                    _imageView.frame=CGRectMake(5+90*j,65+100*i, 90, 100);
                    
                    UIImage*image=[UIImage imageNamed:[NSString stringWithFormat:@"psb%d.jpg",number]];
                    _imageView.image=image;
                    //                    _imageView.contentMode = UIViewContentModeScaleAspectFill;
                    _imageView.userInteractionEnabled=YES;
                    [self.view addSubview:_imageView];
                    
                    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
                    [_imageView addGestureRecognizer:tap];
                    
                    
                }
                
                
            }
            
            
        }
         
                         completion:^(BOOL finished) {
                             
                         }];
        
    }
    
}
-(void)tap:(UITapGestureRecognizer *)tap
{if(a==YES){
    if (_isLarge == NO)
    {
        //放大
        _oldFrame = tap.view.frame;
        
        [UIView animateWithDuration:0.5 animations:^{
            tap.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
            [tap.view bringSubviewToFront:self.navigationController.navigationBar];
            
            //            [self.view bringSubviewToFront:tap.view];
            for (UIImageView *view in self.view.subviews)
            {
                if (view != tap.view)
                {
                    view.alpha = 0;
                }
            }
            
        } completion:^(BOOL finished) {
            
        }];
    }else
    {
        //缩小
        [UIView animateWithDuration:0.5 animations:^{
            tap.view.frame = _oldFrame;
            
            //            [self.view sendSubviewToBack:tap.view];
            for (UIImageView *view in self.view.subviews)
            {
                if (view != tap.view)
                {
                    view.alpha = 1.0;
                }
            }
            
        } completion:^(BOOL finished) {
            
        }];
    }
    _isLarge = !_isLarge;}
    
    if (a==NO) {
        CayanView*view = (CayanView*)tap.view;
        view.withSelected= !view.withSelected;
        
    }
    
    
    
}
-(void)edit:(UIButton *)button
{
    
    
    
    if ([button.currentTitle isEqualToString:@"Edit"]) {
        
        a=!a;
        UIButton *button1=[UIButton buttonWithType:UIButtonTypeSystem];
        button1.frame=CGRectMake(self.view.frame.size.width-50, 10, 50, 34);
        button1.backgroundColor=[UIColor whiteColor];
        [button1 setTitle:@"Cancel" forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button1.layer.borderWidth=1;
        button1.layer.cornerRadius=10;
        
        [button1 addTarget:self action:@selector(cancel:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.navigationController.navigationBar addSubview:button1];
    }
    
}






-(void)cancel:(UIButton *)button
{
    a=!a;
    if ([button.currentTitle isEqualToString:@"Cancel"]) {
        for (CayanView *view in self.view.subviews) {
            view.withSelected=NO;
        }
        
        button.hidden=YES;
        
        
    }
    
    
    
    
    
}

-(void)delete:(UIButton *)button
{
    _a=0;
    _b=0;
    
    
    
    
    
    
    for (CayanView *view in self.view.subviews) {
        
        if (view.withSelected==YES) {
            [view removeFromSuperview];
            
        }
        
        if (view.withSelected==NO) {
            
            
            if (_a<4) {
                
                
                view.frame=CGRectMake(5+90*_a,65+100*_b, 90, 100);
                _a++;
            }else
            {
                _a=0;
                _b++;
                view.frame=CGRectMake(5+90*_a,65+100*_b, 90, 100);
                
            }
            
            
            
            
        }
        
    }
    
}









//        CayanView *view=(CayanView*)self.view.subviews;
//        view.withSelected=!view.withSelected;
//













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
