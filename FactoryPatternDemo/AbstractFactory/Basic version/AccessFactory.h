//
//  AccessFactory.h
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/4/1.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccessFactory : NSObject <DBFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
