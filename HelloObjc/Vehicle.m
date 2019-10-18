//
//  Vehicle.m
//  HelloObjc
//
//  Created by Joseph Francis on 10/13/19.
//  Copyright © 2019 Joseph Francis. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(void) setOdometer:(long *)odometer {
    if (odometer > _odometer) {
        _odometer = odometer;
    }
}

-(NSString *) model {
    if ([_model isEqualToString:@"Honda Civic"]) {
        return @"POS";
    } else {
        return _model;
    }
}

@end
