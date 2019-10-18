//
//  Vehicle.h
//  HelloObjc
//
//  Created by Joseph Francis on 10/13/19.
//  Copyright © 2019 Joseph Francis. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject

@property (nonatomic) long *odometer;
@property (nonatomic, strong) NSString *model;

@end

NS_ASSUME_NONNULL_END
