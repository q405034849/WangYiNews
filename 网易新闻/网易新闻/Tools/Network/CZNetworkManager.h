//
//  CZNetworkManager.h
//  网易新闻
//
//  Created by 张玺科 on 16/6/17.
//  Copyright © 2016年 张玺科. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface CZNetworkManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

- (void)newsListWithChannel:(NSString *)channel start:(NSInteger)start completion:(void (^)(NSArray *array, NSError *error))completion;

@end
