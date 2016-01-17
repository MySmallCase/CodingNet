//
//  UIUnderlinedButton.h
//  CodingNet
//
//  Created by MyMac on 16/1/17.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIUnderlinedButton : UIButton

+ (UIUnderlinedButton *)underlinedButton;
+ (UIUnderlinedButton *)buttonWithTitle:(NSString *)title andFont:(UIFont *)font andColor:(UIColor *)color;

@end
