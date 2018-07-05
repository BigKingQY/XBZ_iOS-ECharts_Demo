//
//  BCPYOptionManager.h
//  BuildCloud
//
//  Created by BigKing on 2018/7/2.
//  Copyright © 2018年 bottle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iOS-Echarts.h"

@interface XBZPYOptionManager : NSObject


/**
 返回一个基本配置的option

 @param stacks 传入一个stack数组，用于创建类别的个数，
 @return PYOption
 */
+ (PYOption *)configOptionWithStack:(nonnull NSArray *)stacks;

@end
