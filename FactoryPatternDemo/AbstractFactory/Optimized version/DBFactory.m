//
//  DBFactory.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "DBFactory.h"

#import "SQLServerStaff.h"
#import "SQLServerDepartment.h"

#import "AccessStaff.h"
#import "AccessDepartment.h"

@implementation DBFactory

+ (id <StaffProtocol>)createStaffDBWithDBType:(DBType)dbType {
    switch (dbType) {
        case DBTypeSQLServer:
            return [[SQLServerStaff alloc] init];
            break;
        case DBTypeAccess:
            return [[AccessStaff alloc] init];
            break;
        default:
            return nil;
            break;
    }
}

+ (id <DepartmentProtocol>)createDepartmentDBWithDBType:(DBType)dbType {
    switch (dbType) {
        case DBTypeSQLServer:
            return [[SQLServerDepartment alloc] init];
            break;
        case DBTypeAccess:
            return [[AccessDepartment alloc] init];
            break;
        default:
            return nil;
            break;
    }
}

@end
