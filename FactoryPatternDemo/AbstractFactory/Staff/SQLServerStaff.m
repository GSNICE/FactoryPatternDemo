//
//  SQLServerStaff.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "SQLServerStaff.h"

@implementation SQLServerStaff

- (void)insertStaff:(Staff *)staff {
    NSLog(@"%s 插入员工【%@】",__func__,staff.staffName);
}

@end
