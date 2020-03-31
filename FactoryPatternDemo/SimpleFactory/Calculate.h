//
//  Calculate.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculate : NSObject

/// 第一个数字
@property(nonatomic,assign) CGFloat firstNum;
/// 第二个数字
@property(nonatomic,assign) CGFloat secondNum;

/// 获得结果
- (CGFloat)getResult;

@end

NS_ASSUME_NONNULL_END
