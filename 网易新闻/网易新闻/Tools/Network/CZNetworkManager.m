//
//  CZNetworkManager.m
//  网易新闻
//
//  Created by 张玺科 on 16/6/17.
//  Copyright © 2016年 张玺科. All rights reserved.
//

#import "CZNetworkManager.h"

@implementation CZNetworkManager

+ (instancetype)sharedManager {
    static CZNetworkManager *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        // 末尾要有反斜线
        NSURL *baseURL = [NSURL URLWithString:@"http://c.m.163.com/nc/article/"];
        
        instance = [[self alloc] initWithBaseURL:baseURL];
    });
    
    return instance;
}

@end
