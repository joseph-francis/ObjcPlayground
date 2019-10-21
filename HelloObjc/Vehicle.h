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

// We use strong keyword on anything that IS an object. So, anything that's not an object cannot be retained. Therefore, things like doubles, ints -> don't include strong.
@property (nonatomic) long *odometer;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, assign) BOOL *theBool;

@end

NS_ASSUME_NONNULL_END
