//
//  UILabel+Common.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Common)

- (void)setLongString:(NSString *)str withFitWidth:(CGFloat)width;
- (void)setLongString:(NSString *)str withFitWidth:(CGFloat)width maxHeight:(CGFloat)maxHeight;
- (void)setLongString:(NSString *)str withVariableWidth:(CGFloat)maxWidth;
+ (instancetype)labelWithFont:(UIFont *)font textColor:(UIColor *)textColor;

@end
