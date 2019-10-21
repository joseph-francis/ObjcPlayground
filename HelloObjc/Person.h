//
//  Person.h
//  HelloObjc
//
//  Created by Joseph Francis on 10/13/19.
//  Copyright © 2019 Joseph Francis. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    BOOL isInsecure;
}

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
- (void) speakName;
+ (void)stateSpecies;

@end

NS_ASSUME_NONNULL_END
