//
//  clockPreferences.h
//  LCD Clock
//
//  Created by Matthew Paravati on 12/3/15.
//  Copyright © 2015 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClockPreferences : NSObject

@property NSString *backgroundColor;
@property NSString *digitColor;
@property NSString *clockHourFormat;

-(void) initWithBackgroundColor:(NSString *) backgroundColor;

@end
