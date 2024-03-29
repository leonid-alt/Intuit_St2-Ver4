//
//  User.h
//  Intuit_St2
//
//  Created by Leonid Stepanov on 12/12/2019.
//  Copyright © 2019 Leonid Stepanov. All rights reserved.
//

#import <Foundation/Foundation.h> //Здесь подключаются NSObject,NSArray,NSString,NSLog,NSDictionary.

@interface User : NSObject

@property NSString *name;
@property NSInteger age;

- (void)printName;
- (BOOL)canBuyDrinks;

- (void)updateWithName: (NSString *)name
                andAge: (NSInteger)age;

@end

