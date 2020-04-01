//
//  SQLServerFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "SQLServerFactory.h"
#import "SQLServerStaff.h"
#import "SQLServerDepartment.h"

@implementation SQLServerFactory

- (id <StaffProtocol>)createStaffDB {
    return [[SQLServerStaff alloc] init];
}

- (id <DepartmentProtocol>)createDepartmentDB {
    return [[SQLServerDepartment alloc] init];
}

@end
