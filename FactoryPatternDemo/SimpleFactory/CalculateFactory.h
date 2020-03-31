//
//  CalculateFactory.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Calculate;

@interface CalculateFactory : NSObject

+ (Calculate *)createOperateWithStr:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
