//
//  AppDelegate.m
//  2.UINavigationController
//
//  Created by liuyuecheng on 15/7/31.
//  Copyright (c) 2015年 liuyuecheng. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //UIViewController        ->UIView   //视图控制器管理视图
    //UINavigationController  ->UIViewController //导航控制器管理视图控制器
    
    RootViewController *rootVC = [[RootViewController alloc]init];
    
    //实例化导航控制器
    
    //导航控制器通过栈式结构来管理视图控制器
    
    /*
     栈是一种先进后出,后进先出的数据结构
     
     基栈(栈底):栈最下面的成员
     栈顶:最上面的成员
     
     入栈:将成员放入栈中  PUSH
     出栈:将成员拿出      POP  (永远拿得是最上面的元素)
     
     */
    
    //实例化一个导航控制器,并将rootVC作为基栈.
    //基栈不能没有视图控制器
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:rootVC];
    
    //设置导航控制器为根视图
    self.window.rootViewController = nav;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
