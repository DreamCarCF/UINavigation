//
//  RegisterViewController.h
//  1.注册界面练习
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController
@property (nonatomic,copy)void (^block)(NSString *name,NSString *password);
@end
