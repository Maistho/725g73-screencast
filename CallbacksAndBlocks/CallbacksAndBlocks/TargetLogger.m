//
//  BNRLogger.m
//  CallbacksAndBlocks
//
//  Created by Gustav Bylund on 02/11/14.
//  Copyright (c) 2014 Instutitionen för datavetenskap, Linköpings Universitet. All rights reserved.
//

#import "TargetLogger.h"

@implementation TargetLogger

- (NSString *) lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    
    //Initialize the date formatter if it isn't already initialized
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"Created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:_lastTime];
}

- (void) updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

@end
