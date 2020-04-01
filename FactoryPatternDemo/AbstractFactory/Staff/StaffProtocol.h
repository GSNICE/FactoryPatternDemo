//
//  StaffProtocol.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#ifndef StaffProtocol_h
#define StaffProtocol_h

@class Staff;
@protocol StaffProtocol <NSObject>

- (void)insertStaff:(Staff *)staff;

@end

#endif /* StaffProtocol_h */
