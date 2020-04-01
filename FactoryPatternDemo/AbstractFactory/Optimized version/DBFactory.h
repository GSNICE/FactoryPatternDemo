//
//  DBFactory.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StaffProtocol.h"
#import "DepartmentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, DBType) {
    DBTypeSQLServer,
    DBTypeAccess
};

@interface DBFactory : NSObject

+ (id <StaffProtocol>)createStaffDBWithDBType:(DBType)dbType;

+ (id <DepartmentProtocol>)createDepartmentDBWithDBType:(DBType)dbType;

@end

NS_ASSUME_NONNULL_END
