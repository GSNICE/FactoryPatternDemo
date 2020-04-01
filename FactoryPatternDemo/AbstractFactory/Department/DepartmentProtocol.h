//
//  DepartmentProtocol.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#ifndef DepartmentProtocol_h
#define DepartmentProtocol_h

@class Department;

@protocol DepartmentProtocol <NSObject>

- (void)insertDepartment:(Department *)department;

@end

#endif /* DepartmentProtocol_h */
