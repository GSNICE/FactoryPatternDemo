//
//  AccessDepartment.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "AccessDepartment.h"

@implementation AccessDepartment

- (void)insertDepartment:(Department *)department {
    NSLog(@"%s 插入【%@】部门",__func__,department.departmentName);
}

@end
