//
//  AddFactory.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculateFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AddFactory : NSObject <CalculateFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
