//
//  AppDelegate.m
//  网易新闻
//
//  Created by 张玺科 on 16/6/15.
//  Copyright © 2016年 张玺科. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setupAppearance];
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    _window.rootViewController = [[UIViewController alloc]init];
    [_window makeKeyAndVisible];
        
    return YES;
}

- (void)setupAppearance {
    
    // 设置 tabBar 的渲染颜色 - 会设置`后续[外观设置之后的]` UITabBar 的 tintColor 全部是指定的颜色
    [UITabBar appearance].tintColor = [UIColor cz_colorWithHex:0xDF0000];
}


@end
