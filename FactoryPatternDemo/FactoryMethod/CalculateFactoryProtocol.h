//
//  CalculateFactoryProtocol.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#ifndef CalculateFactoryProtocol_h
#define CalculateFactoryProtocol_h

@class Calculate;
@protocol CalculateFactoryProtocol <NSObject>

+ (Calculate *)createCalculate;

@end

#endif /* CalculateFactoryProtocol_h */
