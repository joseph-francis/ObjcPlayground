//
//  Person.m
//  HelloObjc
//
//  Created by Joseph Francis on 10/13/19.
//  Copyright © 2019 Joseph Francis. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void) test {
    
    isInsecure = YES;
    _firstName = @"JJ";
    _lastName = @"Ola";
}

- (void) speakName {
    NSLog(@"My name is %@ %@", _firstName, _lastName);
}

+ (void)stateSpecies {
    NSLog(@"I'm a human");
}

@end
