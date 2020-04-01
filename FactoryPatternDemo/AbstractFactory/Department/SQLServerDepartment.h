//
//  SQLServerDepartment.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DepartmentProtocol.h"
#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface SQLServerDepartment : NSObject <DepartmentProtocol>

@end

NS_ASSUME_NONNULL_END
