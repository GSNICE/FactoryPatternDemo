//
//  SubFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "SubFactory.h"
#import "Calculate_Sub.h"

@implementation SubFactory

+ (Calculate *)createCalculate {
    return [[Calculate_Sub alloc] init];
}

@end
