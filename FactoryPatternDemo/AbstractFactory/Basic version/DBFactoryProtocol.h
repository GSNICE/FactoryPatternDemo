//
//  DBFactoryProtocol.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#ifndef DBFactoryProtocol_h
#define DBFactoryProtocol_h

#import "StaffProtocol.h"
#import "DepartmentProtocol.h"

@protocol DBFactoryProtocol <NSObject>

- (id <StaffProtocol>)createStaffDB;

- (id <DepartmentProtocol>)createDepartmentDB;

@end

#endif /* DBFactoryProtocol_h */
