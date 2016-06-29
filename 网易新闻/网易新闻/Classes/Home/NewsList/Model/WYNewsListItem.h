//
//  WYNewsListItem.h
//  网易新闻
//
//  Created by 张玺科 on 16/6/29.
//  Copyright © 2016年 张玺科. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WYNewsListItem : NSObject
/**
 * 标题
 */
@property (nonatomic, copy) NSString *title;
/**
 * 新闻摘要
 */
@property (nonatomic, copy) NSString *digest;
/**
 * 图像 URL 地址
 */
@property (nonatomic, copy) NSString *imgsrc;
/**
 * 跟帖数量
 */
@property (nonatomic, assign) NSInteger replyCount;
/**
 * 来源
 */
@property (nonatomic, copy) NSString *source;

/**
 * 多图新闻的其余图片
 */
@property (nonatomic, strong) NSArray *imgextra;

@end
