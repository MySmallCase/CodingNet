//
//  NSTimer+Common.m
//  CodingNet
//
//  Created by MyMac on 16/1/19.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "NSTimer+Common.h"

@implementation NSTimer (Common)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti block:(void(^)())block repeats:(BOOL)yesOrNo{
    return [self scheduledTimerWithTimeInterval:ti target:self selector:@selector(blockInvoke:) userInfo:[block copy] repeats:yesOrNo];
}

+ (void)blockInvoke:(NSTimer *)timer{
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

@end
