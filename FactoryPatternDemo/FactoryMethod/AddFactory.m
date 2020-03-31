//
//  AddFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "AddFactory.h"
#import "Calculate_Add.h"

@implementation AddFactory

+ (Calculate *)createCalculate {
    return [[Calculate_Add alloc] init];
}

@end
