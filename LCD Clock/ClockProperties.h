//
//  ClockProperties.h
//  LCD Clock
//
//  Created by Matthew Paravati on 12/3/15.
//  Copyright © 2015 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClockProperties : NSObject<NSCoding>

@property(strong,nonatomic) NSString *backgroundColor;
@property(strong,nonatomic) NSString *digitColor;
@property(strong, nonatomic) NSString *isTwentyFourHourFormat;
@property(strong, nonatomic) NSString *timeZone;

@end
