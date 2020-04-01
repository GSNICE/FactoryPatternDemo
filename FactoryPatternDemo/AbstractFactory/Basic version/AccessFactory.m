//
//  AccessFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessStaff.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (id <StaffProtocol>)createStaffDB {
    return [[AccessStaff alloc] init];
}

- (id <DepartmentProtocol>)createDepartmentDB {
    return [[AccessDepartment alloc] init];
}

@end
