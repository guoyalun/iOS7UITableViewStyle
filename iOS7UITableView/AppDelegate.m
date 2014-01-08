//
//  AppDelegate.m
//  iOS7UITableView
//
//  Created by zhoonchen on 14-1-6.
//  Copyright (c) 2014年 zhoon. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstTabViewController.h"
#import "SecondTabViewController.h"
#import "ThirdTabViewController.h"
#import "ForthTabViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.tabBarController = [[UITabBarController alloc] init];
    [self initTabBarController];
    
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)initTabBarController
{
    FirstTabViewController *firstController = [[FirstTabViewController alloc] init];
    SecondTabViewController *secondController = [[SecondTabViewController alloc] initWithStyle:UITableViewStyleGrouped];
    ThirdTabViewController *thirdController = [[ThirdTabViewController alloc] init];
    ForthTabViewController *forthController = [[ForthTabViewController alloc] initWithStyle:UITableViewStyleGrouped];
    
    UINavigationController *FirstNavController = [[UINavigationController alloc] initWithRootViewController:firstController];
    UINavigationController *SecondNavController = [[UINavigationController alloc] initWithRootViewController:secondController];
    UINavigationController *ThirdNavController = [[UINavigationController alloc] initWithRootViewController:thirdController];
    UINavigationController *ForthNavController = [[UINavigationController alloc] initWithRootViewController:forthController];
    
    UITabBarItem *FirstItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    UITabBarItem *SecondItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
    UITabBarItem *ThirdItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:3];
    UITabBarItem *ForthItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:4];
    
    // 设置了tabBarItem就不需要设置title了，会被覆盖
    firstController.tabBarItem = FirstItem;
    secondController.tabBarItem = SecondItem;
    thirdController.tabBarItem = ThirdItem;
    forthController.tabBarItem = ForthItem;
    
    self.tabBarController.viewControllers = @[FirstNavController, SecondNavController, ThirdNavController, ForthNavController];
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
