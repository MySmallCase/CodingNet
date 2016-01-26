//
//  NSTimer+Common.h
//  CodingNet
//
//  Created by MyMac on 16/1/19.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Common)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti block:(void(^)())block repeats:(BOOL)yesOrNo;

@end
