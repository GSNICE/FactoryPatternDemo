//
//  CalculateFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "CalculateFactory.h"
#import "Calculate_Add.h"
#import "Calculate_Sub.h"

@implementation CalculateFactory

+ (Calculate *)createOperateWithStr:(NSString *)str {
    if ([str isEqualToString:@"+"]) {
        Calculate_Add *calculate_Add = [[Calculate_Add alloc] init];
        return calculate_Add;
    }else if ([str isEqualToString:@"-"]){
        Calculate_Sub *calculate_Sub = [[Calculate_Sub alloc] init];
        return calculate_Sub;
    }else{
        return [[Calculate alloc] init];
    }
}

@end
