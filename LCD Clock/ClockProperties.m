//
//  ClockProperties.m
//  LCD Clock
//
//  Created by Matthew Paravati on 12/3/15.
//  Copyright © 2015 TurnToTech. All rights reserved.
//

#import "ClockProperties.h"

@implementation ClockProperties

- (void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode properties, other class variables, etc
    NSLog(@"Encoder Called");
    [encoder encodeObject:self.backgroundColor forKey:@"backgroundColor"];
    [encoder encodeObject:self.digitColor forKey:@"digitColor"];
    [encoder encodeObject:self.isTwentyFourHourFormat forKey:@"clockFormat"];
    [encoder encodeObject:self.timeZone forKey:@"timeZone"];
}

- (id)initWithCoder:(NSCoder *)decoder
{
    NSLog(@"Decoder Called");
    self = [super init];
    if(self)
    {
        //decode properties, other class vars
        [self setBackgroundColor:[decoder decodeObjectForKey:@"backgroundColor"]];
        [self setDigitColor:[decoder decodeObjectForKey:@"digitColor"]];
        [self setIsTwentyFourHourFormat:[decoder decodeObjectForKey:@"clockFormat"]];
        [self setTimeZone:[decoder decodeObjectForKey:@"timeZone"]];
    }
    return self;
}


@end
