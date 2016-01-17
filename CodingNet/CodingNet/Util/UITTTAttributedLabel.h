//
//  UITTTAttributedLabel.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <TTTAttributedLabel/TTTAttributedLabel.h>

typedef void(^UITTTLabelTapBlock)(id aObj);

@interface UITTTAttributedLabel : TTTAttributedLabel

- (void)addLongPressForCopy;
- (void)addLongPressForCopyWithBGColor:(UIColor *)color;
- (void)addTapBlock:(UITTTLabelTapBlock)block;
- (void)addDeleteBlock:(UITTTLabelTapBlock)block;

@end
